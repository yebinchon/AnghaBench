
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * advertising; int * supported; } ;
struct ethtool_link_ksettings {TYPE_1__ link_modes; } ;


 unsigned int BITS_TO_LONGS (int ) ;
 int __ETHTOOL_LINK_MODE_MASK_NBITS ;

void ethtool_intersect_link_masks(struct ethtool_link_ksettings *dst,
      struct ethtool_link_ksettings *src)
{
 unsigned int size = BITS_TO_LONGS(__ETHTOOL_LINK_MODE_MASK_NBITS);
 unsigned int idx = 0;

 for (; idx < size; idx++) {
  dst->link_modes.supported[idx] &=
   src->link_modes.supported[idx];
  dst->link_modes.advertising[idx] &=
   src->link_modes.advertising[idx];
 }
}
