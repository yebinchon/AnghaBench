
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ auth_max_cred_cachesize ;
 scalar_t__ number_cred_unused ;
 int rpcauth_cache_do_shrink (unsigned int) ;

__attribute__((used)) static void
rpcauth_cache_enforce_limit(void)
{
 unsigned long diff;
 unsigned int nr_to_scan;

 if (number_cred_unused <= auth_max_cred_cachesize)
  return;
 diff = number_cred_unused - auth_max_cred_cachesize;
 nr_to_scan = 100;
 if (diff < nr_to_scan)
  nr_to_scan = diff;
 rpcauth_cache_do_shrink(nr_to_scan);
}
