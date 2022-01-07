
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 unsigned short BATADV_VLAN_HAS_TAG ;
 scalar_t__ VLAN_HLEN ;
 unsigned short batadv_get_vid (struct sk_buff*,int) ;

__attribute__((used)) static unsigned short batadv_dat_get_vid(struct sk_buff *skb, int *hdr_size)
{
 unsigned short vid;

 vid = batadv_get_vid(skb, *hdr_size);






 if (vid & BATADV_VLAN_HAS_TAG)
  *hdr_size += VLAN_HLEN;

 return vid;
}
