
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int ioctx_lock; int ioctx_table; } ;
struct kioctx_table {int * table; } ;
struct kioctx {size_t id; int users; struct ctx_rq_wait* rq_wait; scalar_t__ mmap_size; int mmap_base; int max_reqs; int wait; int dead; } ;
struct ctx_rq_wait {int dummy; } ;


 int EINVAL ;
 int RCU_INIT_POINTER (int ,int *) ;
 int WARN_ON (int) ;
 int aio_nr_sub (int ) ;
 scalar_t__ atomic_xchg (int *,int) ;
 int percpu_ref_kill (int *) ;
 struct kioctx* rcu_access_pointer (int ) ;
 struct kioctx_table* rcu_dereference_raw (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vm_munmap (int ,scalar_t__) ;
 int wake_up_all (int *) ;

__attribute__((used)) static int kill_ioctx(struct mm_struct *mm, struct kioctx *ctx,
        struct ctx_rq_wait *wait)
{
 struct kioctx_table *table;

 spin_lock(&mm->ioctx_lock);
 if (atomic_xchg(&ctx->dead, 1)) {
  spin_unlock(&mm->ioctx_lock);
  return -EINVAL;
 }

 table = rcu_dereference_raw(mm->ioctx_table);
 WARN_ON(ctx != rcu_access_pointer(table->table[ctx->id]));
 RCU_INIT_POINTER(table->table[ctx->id], ((void*)0));
 spin_unlock(&mm->ioctx_lock);


 wake_up_all(&ctx->wait);
 aio_nr_sub(ctx->max_reqs);

 if (ctx->mmap_size)
  vm_munmap(ctx->mmap_base, ctx->mmap_size);

 ctx->rq_wait = wait;
 percpu_ref_kill(&ctx->users);
 return 0;
}
