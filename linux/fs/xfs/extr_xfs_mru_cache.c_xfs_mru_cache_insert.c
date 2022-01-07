
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mru_cache_elem {unsigned long key; int list_node; } ;
struct xfs_mru_cache {int lock; int store; scalar_t__ lists; } ;


 int ASSERT (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int _xfs_mru_cache_list_insert (struct xfs_mru_cache*,struct xfs_mru_cache_elem*) ;
 int radix_tree_insert (int *,unsigned long,struct xfs_mru_cache_elem*) ;
 scalar_t__ radix_tree_preload (int ) ;
 int radix_tree_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int
xfs_mru_cache_insert(
 struct xfs_mru_cache *mru,
 unsigned long key,
 struct xfs_mru_cache_elem *elem)
{
 int error;

 ASSERT(mru && mru->lists);
 if (!mru || !mru->lists)
  return -EINVAL;

 if (radix_tree_preload(GFP_NOFS))
  return -ENOMEM;

 INIT_LIST_HEAD(&elem->list_node);
 elem->key = key;

 spin_lock(&mru->lock);
 error = radix_tree_insert(&mru->store, key, elem);
 radix_tree_preload_end();
 if (!error)
  _xfs_mru_cache_list_insert(mru, elem);
 spin_unlock(&mru->lock);

 return error;
}
