
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mr_table {int dummy; } ;
struct in6_addr {int dummy; } ;
struct mfc6_cache_cmp_arg {struct in6_addr const mf6c_mcastgrp; struct in6_addr const mf6c_origin; } ;
struct mfc6_cache {int dummy; } ;


 struct mfc6_cache* mr_mfc_find_parent (struct mr_table*,struct mfc6_cache_cmp_arg*,int) ;

__attribute__((used)) static struct mfc6_cache *
ip6mr_cache_find_parent(struct mr_table *mrt,
   const struct in6_addr *origin,
   const struct in6_addr *mcastgrp,
   int parent)
{
 struct mfc6_cache_cmp_arg arg = {
  .mf6c_origin = *origin,
  .mf6c_mcastgrp = *mcastgrp,
 };

 return mr_mfc_find_parent(mrt, &arg, parent);
}
