
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int ipvs_property; } ;
struct ip_vs_protocol {scalar_t__ snat_handler; } ;
struct ip_vs_proto_data {struct ip_vs_protocol* pp; } ;
struct ip_vs_iphdr {int off; int len; } ;
struct TYPE_5__ {int ip; int in6; } ;
struct ip_vs_conn {int flags; int ipvs; TYPE_1__ vaddr; } ;
struct TYPE_7__ {int saddr; } ;
struct TYPE_6__ {int saddr; } ;


 int AF_INET6 ;
 int IP_VS_CONN_F_NFCT ;
 int IP_VS_DBG_PKT (int,int,struct ip_vs_protocol*,struct sk_buff*,int ,char*) ;
 int IP_VS_DIR_OUTPUT ;
 int LeaveFunction (int) ;
 unsigned int NF_ACCEPT ;
 unsigned int NF_STOLEN ;
 int SNAT_CALL (scalar_t__,struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_conn*,struct ip_vs_iphdr*) ;
 TYPE_3__* ip_hdr (struct sk_buff*) ;
 int ip_send_check (TYPE_3__*) ;
 int ip_vs_conn_put (struct ip_vs_conn*) ;
 int ip_vs_notrack (struct sk_buff*) ;
 int ip_vs_out_stats (struct ip_vs_conn*,struct sk_buff*) ;
 scalar_t__ ip_vs_route_me_harder (int ,int,struct sk_buff*,unsigned int) ;
 int ip_vs_set_state (struct ip_vs_conn*,int ,struct sk_buff*,struct ip_vs_proto_data*) ;
 int ip_vs_update_conntrack (struct sk_buff*,struct ip_vs_conn*,int ) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,int ) ;

__attribute__((used)) static unsigned int
handle_response(int af, struct sk_buff *skb, struct ip_vs_proto_data *pd,
  struct ip_vs_conn *cp, struct ip_vs_iphdr *iph,
  unsigned int hooknum)
{
 struct ip_vs_protocol *pp = pd->pp;

 IP_VS_DBG_PKT(11, af, pp, skb, iph->off, "Outgoing packet");

 if (skb_ensure_writable(skb, iph->len))
  goto drop;


 if (pp->snat_handler &&
     !SNAT_CALL(pp->snat_handler, skb, pp, cp, iph))
  goto drop;






 {
  ip_hdr(skb)->saddr = cp->vaddr.ip;
  ip_send_check(ip_hdr(skb));
 }
 if (ip_vs_route_me_harder(cp->ipvs, af, skb, hooknum))
  goto drop;

 IP_VS_DBG_PKT(10, af, pp, skb, iph->off, "After SNAT");

 ip_vs_out_stats(cp, skb);
 ip_vs_set_state(cp, IP_VS_DIR_OUTPUT, skb, pd);
 skb->ipvs_property = 1;
 if (!(cp->flags & IP_VS_CONN_F_NFCT))
  ip_vs_notrack(skb);
 else
  ip_vs_update_conntrack(skb, cp, 0);
 ip_vs_conn_put(cp);

 LeaveFunction(11);
 return NF_ACCEPT;

drop:
 ip_vs_conn_put(cp);
 kfree_skb(skb);
 LeaveFunction(11);
 return NF_STOLEN;
}
