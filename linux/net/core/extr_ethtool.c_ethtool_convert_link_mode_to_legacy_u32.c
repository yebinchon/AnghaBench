
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 int __ETHTOOL_DECLARE_LINK_MODE_MASK (int ) ;
 int __ETHTOOL_LINK_MODE_MASK_NBITS ;
 int bitmap_complement (int ,int ,int) ;
 int bitmap_fill (int ,int) ;
 scalar_t__ bitmap_intersects (int ,unsigned long const*,int) ;
 int bitmap_zero (int ,int) ;
 int ext ;

bool ethtool_convert_link_mode_to_legacy_u32(u32 *legacy_u32,
          const unsigned long *src)
{
 bool retval = 1;


 if (__ETHTOOL_LINK_MODE_MASK_NBITS > 32) {
  __ETHTOOL_DECLARE_LINK_MODE_MASK(ext);

  bitmap_zero(ext, __ETHTOOL_LINK_MODE_MASK_NBITS);
  bitmap_fill(ext, 32);
  bitmap_complement(ext, ext, __ETHTOOL_LINK_MODE_MASK_NBITS);
  if (bitmap_intersects(ext, src,
          __ETHTOOL_LINK_MODE_MASK_NBITS)) {

   retval = 0;
  }
 }
 *legacy_u32 = src[0];
 return retval;
}
