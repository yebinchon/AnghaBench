
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ignore_df; } ;
struct iphdr {int daddr; } ;
struct ip_vs_protocol {int dummy; } ;
struct ip_vs_iphdr {int dummy; } ;
struct ip_vs_conn {int af; int ipvs; } ;


 int EnterFunction (int) ;
 int IP_VS_RT_MODE_NON_LOCAL ;
 int LeaveFunction (int) ;
 int NFPROTO_IPV4 ;
 int NF_STOLEN ;
 scalar_t__ __ip_vs_get_out_rt (int ,int ,struct sk_buff*,int *,int ,int ,int *,struct ip_vs_iphdr*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_send_check (struct iphdr*) ;
 int ip_vs_send_or_cont (int ,struct sk_buff*,struct ip_vs_conn*,int ) ;
 int kfree_skb (struct sk_buff*) ;

int
ip_vs_bypass_xmit(struct sk_buff *skb, struct ip_vs_conn *cp,
    struct ip_vs_protocol *pp, struct ip_vs_iphdr *ipvsh)
{
 struct iphdr *iph = ip_hdr(skb);

 EnterFunction(10);

 if (__ip_vs_get_out_rt(cp->ipvs, cp->af, skb, ((void*)0), iph->daddr,
          IP_VS_RT_MODE_NON_LOCAL, ((void*)0), ipvsh) < 0)
  goto tx_error;

 ip_send_check(iph);


 skb->ignore_df = 1;

 ip_vs_send_or_cont(NFPROTO_IPV4, skb, cp, 0);

 LeaveFunction(10);
 return NF_STOLEN;

 tx_error:
 kfree_skb(skb);
 LeaveFunction(10);
 return NF_STOLEN;
}
