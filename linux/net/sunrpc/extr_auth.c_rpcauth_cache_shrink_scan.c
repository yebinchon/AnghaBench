
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int dummy; } ;
struct shrink_control {int gfp_mask; int nr_to_scan; } ;


 int GFP_KERNEL ;
 unsigned long SHRINK_STOP ;
 int cred_unused ;
 scalar_t__ list_empty (int *) ;
 unsigned long rpcauth_cache_do_shrink (int ) ;

__attribute__((used)) static unsigned long
rpcauth_cache_shrink_scan(struct shrinker *shrink, struct shrink_control *sc)

{
 if ((sc->gfp_mask & GFP_KERNEL) != GFP_KERNEL)
  return SHRINK_STOP;


 if (list_empty(&cred_unused))
  return SHRINK_STOP;

 return rpcauth_cache_do_shrink(sc->nr_to_scan);
}
