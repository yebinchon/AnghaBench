
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int ioctx_table; int ioctx_lock; } ;
struct kioctx_table {unsigned int nr; unsigned int id; int * table; int * ring_pages; } ;
struct kioctx {unsigned int nr; unsigned int id; int * table; int * ring_pages; } ;
struct aio_ring {unsigned int id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct kioctx_table*) ;
 int kfree_rcu (struct kioctx_table*,int ) ;
 struct aio_ring* kmap_atomic (int ) ;
 int kunmap_atomic (struct aio_ring*) ;
 struct kioctx_table* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int rcu ;
 int rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,struct kioctx_table*) ;
 struct kioctx_table* rcu_dereference_raw (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ioctx_add_table(struct kioctx *ctx, struct mm_struct *mm)
{
 unsigned i, new_nr;
 struct kioctx_table *table, *old;
 struct aio_ring *ring;

 spin_lock(&mm->ioctx_lock);
 table = rcu_dereference_raw(mm->ioctx_table);

 while (1) {
  if (table)
   for (i = 0; i < table->nr; i++)
    if (!rcu_access_pointer(table->table[i])) {
     ctx->id = i;
     rcu_assign_pointer(table->table[i], ctx);
     spin_unlock(&mm->ioctx_lock);





     ring = kmap_atomic(ctx->ring_pages[0]);
     ring->id = ctx->id;
     kunmap_atomic(ring);
     return 0;
    }

  new_nr = (table ? table->nr : 1) * 4;
  spin_unlock(&mm->ioctx_lock);

  table = kzalloc(sizeof(*table) + sizeof(struct kioctx *) *
    new_nr, GFP_KERNEL);
  if (!table)
   return -ENOMEM;

  table->nr = new_nr;

  spin_lock(&mm->ioctx_lock);
  old = rcu_dereference_raw(mm->ioctx_table);

  if (!old) {
   rcu_assign_pointer(mm->ioctx_table, table);
  } else if (table->nr > old->nr) {
   memcpy(table->table, old->table,
          old->nr * sizeof(struct kioctx *));

   rcu_assign_pointer(mm->ioctx_table, table);
   kfree_rcu(old, rcu);
  } else {
   kfree(table);
   table = old;
  }
 }
}
