
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_tnl {int dummy; } ;


 int ip6erspan_calc_hlen (struct ip6_tnl*) ;
 int ip6gre_tnl_link_config_common (struct ip6_tnl*) ;
 int ip6gre_tnl_link_config_route (struct ip6_tnl*,int,int ) ;

__attribute__((used)) static void ip6erspan_tnl_link_config(struct ip6_tnl *t, int set_mtu)
{
 ip6gre_tnl_link_config_common(t);
 ip6gre_tnl_link_config_route(t, set_mtu, ip6erspan_calc_hlen(t));
}
