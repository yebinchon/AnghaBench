
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_node {struct radix_tree_node* parent; } ;
struct kmem_cache {int nr_objs; int lock; struct radix_tree_node* objs; int size; } ;


 int POISON_FREE ;
 int assert (void*) ;
 int free (void*) ;
 scalar_t__ kmalloc_verbose ;
 int memset (void*,int ,int ) ;
 int nr_allocated ;
 int printf (char*,void*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int uatomic_dec (int *) ;

void kmem_cache_free(struct kmem_cache *cachep, void *objp)
{
 assert(objp);
 uatomic_dec(&nr_allocated);
 if (kmalloc_verbose)
  printf("Freeing %p to slab\n", objp);
 pthread_mutex_lock(&cachep->lock);
 if (cachep->nr_objs > 10) {
  memset(objp, POISON_FREE, cachep->size);
  free(objp);
 } else {
  struct radix_tree_node *node = objp;
  cachep->nr_objs++;
  node->parent = cachep->objs;
  cachep->objs = node;
 }
 pthread_mutex_unlock(&cachep->lock);
}
