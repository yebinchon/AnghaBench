
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xfrm_pol_inexact_bin {int k; } ;


 int xfrm_pol_bin_key (int *,int ,int ) ;

__attribute__((used)) static u32 xfrm_pol_bin_obj(const void *data, u32 len, u32 seed)
{
 const struct xfrm_pol_inexact_bin *b = data;

 return xfrm_pol_bin_key(&b->k, 0, seed);
}
