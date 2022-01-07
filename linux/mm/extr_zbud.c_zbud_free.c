
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zbud_pool {int lock; int * unbuddied; int pages_nr; } ;
struct zbud_header {scalar_t__ last_chunks; scalar_t__ first_chunks; int buddy; int lru; scalar_t__ under_reclaim; } ;


 unsigned long PAGE_MASK ;
 unsigned long ZHDR_SIZE_ALIGNED ;
 int free_zbud_page (struct zbud_header*) ;
 struct zbud_header* handle_to_zbud_header (unsigned long) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int num_free_chunks (struct zbud_header*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void zbud_free(struct zbud_pool *pool, unsigned long handle)
{
 struct zbud_header *zhdr;
 int freechunks;

 spin_lock(&pool->lock);
 zhdr = handle_to_zbud_header(handle);


 if ((handle - ZHDR_SIZE_ALIGNED) & ~PAGE_MASK)
  zhdr->last_chunks = 0;
 else
  zhdr->first_chunks = 0;

 if (zhdr->under_reclaim) {

  spin_unlock(&pool->lock);
  return;
 }


 list_del(&zhdr->buddy);

 if (zhdr->first_chunks == 0 && zhdr->last_chunks == 0) {

  list_del(&zhdr->lru);
  free_zbud_page(zhdr);
  pool->pages_nr--;
 } else {

  freechunks = num_free_chunks(zhdr);
  list_add(&zhdr->buddy, &pool->unbuddied[freechunks]);
 }

 spin_unlock(&pool->lock);
}
