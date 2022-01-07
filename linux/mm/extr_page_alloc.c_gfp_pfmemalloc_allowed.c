
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int __gfp_pfmemalloc_flags (int ) ;

bool gfp_pfmemalloc_allowed(gfp_t gfp_mask)
{
 return !!__gfp_pfmemalloc_flags(gfp_mask);
}
