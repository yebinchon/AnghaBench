
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpls_iptunnel_encap {int labels; scalar_t__ ttl_propagate; } ;
struct lwtunnel_state {int dummy; } ;


 scalar_t__ MPLS_TTL_PROP_DEFAULT ;
 struct mpls_iptunnel_encap* mpls_lwtunnel_encap (struct lwtunnel_state*) ;
 int nla_total_size (int) ;

__attribute__((used)) static int mpls_encap_nlsize(struct lwtunnel_state *lwtstate)
{
 struct mpls_iptunnel_encap *tun_encap_info;
 int nlsize;

 tun_encap_info = mpls_lwtunnel_encap(lwtstate);

 nlsize = nla_total_size(tun_encap_info->labels * 4);

 if (tun_encap_info->ttl_propagate != MPLS_TTL_PROP_DEFAULT)
  nlsize += nla_total_size(1);

 return nlsize;
}
