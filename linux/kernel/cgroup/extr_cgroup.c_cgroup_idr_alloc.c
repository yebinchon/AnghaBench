
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;
typedef int gfp_t ;


 int __GFP_DIRECT_RECLAIM ;
 int cgroup_idr_lock ;
 int idr_alloc (struct idr*,void*,int,int,int) ;
 int idr_preload (int) ;
 int idr_preload_end () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int cgroup_idr_alloc(struct idr *idr, void *ptr, int start, int end,
       gfp_t gfp_mask)
{
 int ret;

 idr_preload(gfp_mask);
 spin_lock_bh(&cgroup_idr_lock);
 ret = idr_alloc(idr, ptr, start, end, gfp_mask & ~__GFP_DIRECT_RECLAIM);
 spin_unlock_bh(&cgroup_idr_lock);
 idr_preload_end();
 return ret;
}
