
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int ioctx_table; } ;
struct kioctx_table {int nr; int * table; } ;
struct kioctx {scalar_t__ mmap_size; } ;
struct ctx_rq_wait {int comp; int count; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int atomic_set (int *,int) ;
 int atomic_sub_and_test (int,int *) ;
 int init_completion (int *) ;
 int kfree (struct kioctx_table*) ;
 int kill_ioctx (struct mm_struct*,struct kioctx*,struct ctx_rq_wait*) ;
 struct kioctx* rcu_dereference_protected (int ,int) ;
 struct kioctx_table* rcu_dereference_raw (int ) ;
 int wait_for_completion (int *) ;

void exit_aio(struct mm_struct *mm)
{
 struct kioctx_table *table = rcu_dereference_raw(mm->ioctx_table);
 struct ctx_rq_wait wait;
 int i, skipped;

 if (!table)
  return;

 atomic_set(&wait.count, table->nr);
 init_completion(&wait.comp);

 skipped = 0;
 for (i = 0; i < table->nr; ++i) {
  struct kioctx *ctx =
   rcu_dereference_protected(table->table[i], 1);

  if (!ctx) {
   skipped++;
   continue;
  }
  ctx->mmap_size = 0;
  kill_ioctx(mm, ctx, &wait);
 }

 if (!atomic_sub_and_test(skipped, &wait.count)) {

  wait_for_completion(&wait.comp);
 }

 RCU_INIT_POINTER(mm->ioctx_table, ((void*)0));
 kfree(table);
}
