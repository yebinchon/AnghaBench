
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mr_table {int dummy; } ;
struct in6_addr {int dummy; } ;
struct mfc6_cache_cmp_arg {struct in6_addr mf6c_mcastgrp; int mf6c_origin; } ;
struct mfc6_cache {int dummy; } ;
typedef int mifi_t ;


 int in6addr_any ;
 scalar_t__ ipv6_addr_any (struct in6_addr*) ;
 struct mfc6_cache* mr_mfc_find_any (struct mr_table*,int ,struct mfc6_cache_cmp_arg*) ;
 struct mfc6_cache* mr_mfc_find_any_parent (struct mr_table*,int ) ;

__attribute__((used)) static struct mfc6_cache *ip6mr_cache_find_any(struct mr_table *mrt,
            struct in6_addr *mcastgrp,
            mifi_t mifi)
{
 struct mfc6_cache_cmp_arg arg = {
  .mf6c_origin = in6addr_any,
  .mf6c_mcastgrp = *mcastgrp,
 };

 if (ipv6_addr_any(mcastgrp))
  return mr_mfc_find_any_parent(mrt, mifi);
 return mr_mfc_find_any(mrt, mifi, &arg);
}
