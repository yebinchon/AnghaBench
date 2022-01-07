
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mru_cache_elem {int list_node; } ;
struct xfs_mru_cache {int lock; int store; scalar_t__ lists; } ;


 int ASSERT (int) ;
 int __release (int ) ;
 int _xfs_mru_cache_list_insert (struct xfs_mru_cache*,struct xfs_mru_cache_elem*) ;
 int list_del (int *) ;
 int mru_lock ;
 struct xfs_mru_cache_elem* radix_tree_lookup (int *,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct xfs_mru_cache_elem *
xfs_mru_cache_lookup(
 struct xfs_mru_cache *mru,
 unsigned long key)
{
 struct xfs_mru_cache_elem *elem;

 ASSERT(mru && mru->lists);
 if (!mru || !mru->lists)
  return ((void*)0);

 spin_lock(&mru->lock);
 elem = radix_tree_lookup(&mru->store, key);
 if (elem) {
  list_del(&elem->list_node);
  _xfs_mru_cache_list_insert(mru, elem);
  __release(mru_lock);
 } else
  spin_unlock(&mru->lock);

 return elem;
}
