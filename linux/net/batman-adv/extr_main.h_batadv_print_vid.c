
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short BATADV_VLAN_HAS_TAG ;
 unsigned short VLAN_VID_MASK ;

__attribute__((used)) static inline int batadv_print_vid(unsigned short vid)
{
 if (vid & BATADV_VLAN_HAS_TAG)
  return (int)(vid & VLAN_VID_MASK);
 else
  return -1;
}
