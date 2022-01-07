
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mru_cache_elem {int list_node; } ;
struct xfs_mru_cache {int lock; int store; scalar_t__ lists; } ;


 int ASSERT (int) ;
 int list_del (int *) ;
 struct xfs_mru_cache_elem* radix_tree_delete (int *,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct xfs_mru_cache_elem *
xfs_mru_cache_remove(
 struct xfs_mru_cache *mru,
 unsigned long key)
{
 struct xfs_mru_cache_elem *elem;

 ASSERT(mru && mru->lists);
 if (!mru || !mru->lists)
  return ((void*)0);

 spin_lock(&mru->lock);
 elem = radix_tree_delete(&mru->store, key);
 if (elem)
  list_del(&elem->list_node);
 spin_unlock(&mru->lock);

 return elem;
}
