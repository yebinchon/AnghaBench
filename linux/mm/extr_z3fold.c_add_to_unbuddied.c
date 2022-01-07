
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_pool {int unbuddied; int lock; } ;
struct z3fold_header {scalar_t__ first_chunks; scalar_t__ last_chunks; scalar_t__ middle_chunks; int cpu; int buddy; } ;
struct list_head {int dummy; } ;


 struct list_head* get_cpu_ptr (int ) ;
 int list_add (int *,struct list_head*) ;
 int num_free_chunks (struct z3fold_header*) ;
 int put_cpu_ptr (int ) ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void add_to_unbuddied(struct z3fold_pool *pool,
    struct z3fold_header *zhdr)
{
 if (zhdr->first_chunks == 0 || zhdr->last_chunks == 0 ||
   zhdr->middle_chunks == 0) {
  struct list_head *unbuddied = get_cpu_ptr(pool->unbuddied);

  int freechunks = num_free_chunks(zhdr);
  spin_lock(&pool->lock);
  list_add(&zhdr->buddy, &unbuddied[freechunks]);
  spin_unlock(&pool->lock);
  zhdr->cpu = smp_processor_id();
  put_cpu_ptr(pool->unbuddied);
 }
}
