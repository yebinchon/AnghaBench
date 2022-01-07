
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mr_table {int dummy; } ;
struct mfc_cache_cmp_arg {int mfc_origin; int mfc_mcastgrp; } ;
struct mfc_cache {int dummy; } ;
typedef int __be32 ;


 struct mfc_cache* mr_mfc_find (struct mr_table*,struct mfc_cache_cmp_arg*) ;

__attribute__((used)) static struct mfc_cache *ipmr_cache_find(struct mr_table *mrt,
      __be32 origin,
      __be32 mcastgrp)
{
 struct mfc_cache_cmp_arg arg = {
   .mfc_mcastgrp = mcastgrp,
   .mfc_origin = origin
 };

 return mr_mfc_find(mrt, &arg);
}
