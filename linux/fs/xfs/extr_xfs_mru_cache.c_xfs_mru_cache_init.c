
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int WQ_FREEZABLE ;
 int WQ_MEM_RECLAIM ;
 int alloc_workqueue (char*,int,int) ;
 int xfs_mru_reap_wq ;

int
xfs_mru_cache_init(void)
{
 xfs_mru_reap_wq = alloc_workqueue("xfs_mru_cache",
    WQ_MEM_RECLAIM|WQ_FREEZABLE, 1);
 if (!xfs_mru_reap_wq)
  return -ENOMEM;
 return 0;
}
