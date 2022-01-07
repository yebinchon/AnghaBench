
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mpls_iptunnel_encap {scalar_t__ ttl_propagate; int default_ttl; int label; int labels; } ;
struct lwtunnel_state {int dummy; } ;


 int EMSGSIZE ;
 int MPLS_IPTUNNEL_DST ;
 int MPLS_IPTUNNEL_TTL ;
 scalar_t__ MPLS_TTL_PROP_DEFAULT ;
 struct mpls_iptunnel_encap* mpls_lwtunnel_encap (struct lwtunnel_state*) ;
 scalar_t__ nla_put_labels (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int mpls_fill_encap_info(struct sk_buff *skb,
    struct lwtunnel_state *lwtstate)
{
 struct mpls_iptunnel_encap *tun_encap_info;

 tun_encap_info = mpls_lwtunnel_encap(lwtstate);

 if (nla_put_labels(skb, MPLS_IPTUNNEL_DST, tun_encap_info->labels,
      tun_encap_info->label))
  goto nla_put_failure;

 if (tun_encap_info->ttl_propagate != MPLS_TTL_PROP_DEFAULT &&
     nla_put_u8(skb, MPLS_IPTUNNEL_TTL, tun_encap_info->default_ttl))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
