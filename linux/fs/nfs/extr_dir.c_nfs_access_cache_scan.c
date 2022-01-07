
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int dummy; } ;
struct shrink_control {int nr_to_scan; int gfp_mask; } ;
typedef int gfp_t ;


 int GFP_KERNEL ;
 unsigned long SHRINK_STOP ;
 unsigned long nfs_do_access_cache_scan (int) ;

unsigned long
nfs_access_cache_scan(struct shrinker *shrink, struct shrink_control *sc)
{
 int nr_to_scan = sc->nr_to_scan;
 gfp_t gfp_mask = sc->gfp_mask;

 if ((gfp_mask & GFP_KERNEL) != GFP_KERNEL)
  return SHRINK_STOP;
 return nfs_do_access_cache_scan(nr_to_scan);
}
