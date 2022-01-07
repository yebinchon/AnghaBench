
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {TYPE_6__* dev; scalar_t__ data; } ;
struct TYPE_9__ {int sysctl_icmp_ignore_bogus_error_responses; int sysctl_ip_no_pmtu_disc; } ;
struct net {TYPE_3__ ipv4; } ;
struct iphdr {int ihl; int daddr; int protocol; } ;
struct TYPE_7__ {int mtu; } ;
struct TYPE_8__ {int gateway; TYPE_1__ frag; } ;
struct icmphdr {int type; int code; TYPE_2__ un; } ;
struct TYPE_12__ {int name; } ;
struct TYPE_11__ {int saddr; } ;
struct TYPE_10__ {int dev; } ;



 int ICMP_EXC_FRAGTIME ;


 int ICMP_MIB_INERRORS ;
 int ICMP_MIB_INTIMEEXCDS ;






 int NR_ICMP_UNREACH ;
 scalar_t__ RTN_BROADCAST ;
 int __ICMP_INC_STATS (struct net*,int ) ;
 struct net* dev_net (int ) ;
 struct icmphdr* icmp_hdr (struct sk_buff*) ;
 int icmp_socket_deliver (struct sk_buff*,int) ;
 int icmp_tag_validation (int ) ;
 scalar_t__ inet_addr_type_dev_table (struct net*,TYPE_6__*,int ) ;
 TYPE_5__* ip_hdr (struct sk_buff*) ;
 int net_dbg_ratelimited (char*,int *) ;
 int net_warn_ratelimited (char*,int *,int,int,int *,int ) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 TYPE_4__* skb_dst (struct sk_buff*) ;

__attribute__((used)) static bool icmp_unreach(struct sk_buff *skb)
{
 const struct iphdr *iph;
 struct icmphdr *icmph;
 struct net *net;
 u32 info = 0;

 net = dev_net(skb_dst(skb)->dev);







 if (!pskb_may_pull(skb, sizeof(struct iphdr)))
  goto out_err;

 icmph = icmp_hdr(skb);
 iph = (const struct iphdr *)skb->data;

 if (iph->ihl < 5)
  goto out_err;

 switch (icmph->type) {
 case 136:
  switch (icmph->code & 15) {
  case 133:
  case 134:
  case 130:
  case 131:
   break;
  case 135:




   switch (net->ipv4.sysctl_ip_no_pmtu_disc) {
   default:
    net_dbg_ratelimited("%pI4: fragmentation needed and DF set\n",
          &iph->daddr);
    break;
   case 2:
    goto out;
   case 3:
    if (!icmp_tag_validation(iph->protocol))
     goto out;

   case 0:
    info = ntohs(icmph->un.frag.mtu);
   }
   break;
  case 129:
   net_dbg_ratelimited("%pI4: Source Route Failed\n",
         &iph->daddr);
   break;
  default:
   break;
  }
  if (icmph->code > NR_ICMP_UNREACH)
   goto out;
  break;
 case 132:
  info = ntohl(icmph->un.gateway) >> 24;
  break;
 case 128:
  __ICMP_INC_STATS(net, ICMP_MIB_INTIMEEXCDS);
  if (icmph->code == ICMP_EXC_FRAGTIME)
   goto out;
  break;
 }
 if (!net->ipv4.sysctl_icmp_ignore_bogus_error_responses &&
     inet_addr_type_dev_table(net, skb->dev, iph->daddr) == RTN_BROADCAST) {
  net_warn_ratelimited("%pI4 sent an invalid ICMP type %u, code %u error to a broadcast: %pI4 on %s\n",
         &ip_hdr(skb)->saddr,
         icmph->type, icmph->code,
         &iph->daddr, skb->dev->name);
  goto out;
 }

 icmp_socket_deliver(skb, info);

out:
 return 1;
out_err:
 __ICMP_INC_STATS(net, ICMP_MIB_INERRORS);
 return 0;
}
