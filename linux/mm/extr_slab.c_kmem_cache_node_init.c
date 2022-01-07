
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_node {scalar_t__ free_touched; scalar_t__ free_objects; int list_lock; scalar_t__ colour_next; int * alien; int * shared; scalar_t__ free_slabs; scalar_t__ total_slabs; int slabs_free; int slabs_partial; int slabs_full; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void kmem_cache_node_init(struct kmem_cache_node *parent)
{
 INIT_LIST_HEAD(&parent->slabs_full);
 INIT_LIST_HEAD(&parent->slabs_partial);
 INIT_LIST_HEAD(&parent->slabs_free);
 parent->total_slabs = 0;
 parent->free_slabs = 0;
 parent->shared = ((void*)0);
 parent->alien = ((void*)0);
 parent->colour_next = 0;
 spin_lock_init(&parent->list_lock);
 parent->free_objects = 0;
 parent->free_touched = 0;
}
