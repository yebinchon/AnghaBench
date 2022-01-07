
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 int __ETHTOOL_LINK_MODE_MASK_NBITS ;
 int bitmap_zero (unsigned long*,int ) ;

void ethtool_convert_legacy_u32_to_link_mode(unsigned long *dst,
          u32 legacy_u32)
{
 bitmap_zero(dst, __ETHTOOL_LINK_MODE_MASK_NBITS);
 dst[0] = legacy_u32;
}
