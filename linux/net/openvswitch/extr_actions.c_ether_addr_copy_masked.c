
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int OVS_SET_MASKED (int ,int const,int const) ;

__attribute__((used)) static void ether_addr_copy_masked(u8 *dst_, const u8 *src_, const u8 *mask_)
{
 u16 *dst = (u16 *)dst_;
 const u16 *src = (const u16 *)src_;
 const u16 *mask = (const u16 *)mask_;

 OVS_SET_MASKED(dst[0], src[0], mask[0]);
 OVS_SET_MASKED(dst[1], src[1], mask[1]);
 OVS_SET_MASKED(dst[2], src[2], mask[2]);
}
