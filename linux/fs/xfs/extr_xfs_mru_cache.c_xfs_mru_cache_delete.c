
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mru_cache_elem {int dummy; } ;
struct xfs_mru_cache {int data; int (* free_func ) (int ,struct xfs_mru_cache_elem*) ;} ;


 int stub1 (int ,struct xfs_mru_cache_elem*) ;
 struct xfs_mru_cache_elem* xfs_mru_cache_remove (struct xfs_mru_cache*,unsigned long) ;

void
xfs_mru_cache_delete(
 struct xfs_mru_cache *mru,
 unsigned long key)
{
 struct xfs_mru_cache_elem *elem;

 elem = xfs_mru_cache_remove(mru, key);
 if (elem)
  mru->free_func(mru->data, elem);
}
