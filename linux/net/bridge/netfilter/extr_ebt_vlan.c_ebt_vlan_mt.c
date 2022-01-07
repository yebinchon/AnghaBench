
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_action_param {struct ebt_vlan_info* matchinfo; } ;
struct vlan_hdr {unsigned char h_vlan_encapsulated_proto; int h_vlan_TCI; } ;
struct sk_buff {unsigned char protocol; } ;
struct ebt_vlan_info {int dummy; } ;
typedef int _frame ;
typedef unsigned char __be16 ;


 int EBT_VLAN_ENCAP ;
 int EBT_VLAN_ID ;
 int EBT_VLAN_PRIO ;
 int EXIT_ON_MISMATCH (unsigned char,int ) ;
 scalar_t__ GET_BITMASK (int ) ;
 unsigned short VLAN_VID_MASK ;
 unsigned short ntohs (int ) ;
 struct vlan_hdr* skb_header_pointer (struct sk_buff const*,int ,int,struct vlan_hdr*) ;
 unsigned short skb_vlan_tag_get (struct sk_buff const*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff const*) ;

__attribute__((used)) static bool
ebt_vlan_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct ebt_vlan_info *info = par->matchinfo;

 unsigned short TCI;
 unsigned short id;
 unsigned char prio;

 __be16 encap;

 if (skb_vlan_tag_present(skb)) {
  TCI = skb_vlan_tag_get(skb);
  encap = skb->protocol;
 } else {
  const struct vlan_hdr *fp;
  struct vlan_hdr _frame;

  fp = skb_header_pointer(skb, 0, sizeof(_frame), &_frame);
  if (fp == ((void*)0))
   return 0;

  TCI = ntohs(fp->h_vlan_TCI);
  encap = fp->h_vlan_encapsulated_proto;
 }
 id = TCI & VLAN_VID_MASK;
 prio = (TCI >> 13) & 0x7;


 if (GET_BITMASK(EBT_VLAN_ID))
  EXIT_ON_MISMATCH(id, EBT_VLAN_ID);


 if (GET_BITMASK(EBT_VLAN_PRIO))
  EXIT_ON_MISMATCH(prio, EBT_VLAN_PRIO);


 if (GET_BITMASK(EBT_VLAN_ENCAP))
  EXIT_ON_MISMATCH(encap, EBT_VLAN_ENCAP);

 return 1;
}
