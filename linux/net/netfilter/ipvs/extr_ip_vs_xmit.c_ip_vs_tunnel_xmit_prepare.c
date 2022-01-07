
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ipvs_property; } ;
struct ip_vs_conn {int flags; } ;


 int IP_VS_CONN_F_NFCT ;
 int NF_ACCEPT ;
 int ip_vs_confirm_conntrack (struct sk_buff*) ;
 int nf_reset_ct (struct sk_buff*) ;
 int skb_forward_csum (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int ip_vs_tunnel_xmit_prepare(struct sk_buff *skb,
         struct ip_vs_conn *cp)
{
 int ret = NF_ACCEPT;

 skb->ipvs_property = 1;
 if (unlikely(cp->flags & IP_VS_CONN_F_NFCT))
  ret = ip_vs_confirm_conntrack(skb);
 if (ret == NF_ACCEPT) {
  nf_reset_ct(skb);
  skb_forward_csum(skb);
 }
 return ret;
}
