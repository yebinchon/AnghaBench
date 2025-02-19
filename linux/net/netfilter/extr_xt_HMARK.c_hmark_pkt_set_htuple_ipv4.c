
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ip; } ;
struct TYPE_3__ {int ip; } ;
struct xt_hmark_info {int flags; TYPE_2__ dst_mask; TYPE_1__ src_mask; } ;
struct sk_buff {scalar_t__ data; } ;
struct iphdr {scalar_t__ protocol; int ihl; int saddr; int daddr; int frag_off; } ;
struct hmark_tuple {int src; int dst; scalar_t__ proto; } ;
typedef int _ip ;


 scalar_t__ IPPROTO_ICMP ;
 int IP_MF ;
 int IP_OFFSET ;
 int XT_HMARK_FLAG (int ) ;
 int XT_HMARK_METHOD_L3 ;
 scalar_t__ get_inner_hdr (struct sk_buff const*,int,int*) ;
 int hmark_set_tuple_ports (struct sk_buff const*,int,struct hmark_tuple*,struct xt_hmark_info const*) ;
 int htons (int) ;
 struct iphdr* skb_header_pointer (struct sk_buff const*,int,int,struct iphdr*) ;
 int skb_network_offset (struct sk_buff const*) ;

__attribute__((used)) static int
hmark_pkt_set_htuple_ipv4(const struct sk_buff *skb, struct hmark_tuple *t,
     const struct xt_hmark_info *info)
{
 struct iphdr *ip, _ip;
 int nhoff = skb_network_offset(skb);

 ip = (struct iphdr *) (skb->data + nhoff);
 if (ip->protocol == IPPROTO_ICMP) {

  if (get_inner_hdr(skb, ip->ihl * 4, &nhoff)) {
   ip = skb_header_pointer(skb, nhoff, sizeof(_ip), &_ip);
   if (ip == ((void*)0))
    return -1;
  }
 }

 t->src = ip->saddr & info->src_mask.ip;
 t->dst = ip->daddr & info->dst_mask.ip;

 if (info->flags & XT_HMARK_FLAG(XT_HMARK_METHOD_L3))
  return 0;

 t->proto = ip->protocol;


 if (t->proto == IPPROTO_ICMP)
  return 0;


 if (ip->frag_off & htons(IP_MF | IP_OFFSET))
  return 0;

 hmark_set_tuple_ports(skb, (ip->ihl * 4) + nhoff, t, info);

 return 0;
}
