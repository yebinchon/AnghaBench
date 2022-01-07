
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_tnl {int dummy; } ;
struct __ip6_tnl_parm {int dummy; } ;


 int ip6erspan_tnl_link_config (struct ip6_tnl*,int) ;
 int ip6gre_tnl_copy_tnl_parm (struct ip6_tnl*,struct __ip6_tnl_parm const*) ;

__attribute__((used)) static int ip6erspan_tnl_change(struct ip6_tnl *t,
    const struct __ip6_tnl_parm *p, int set_mtu)
{
 ip6gre_tnl_copy_tnl_parm(t, p);
 ip6erspan_tnl_link_config(t, set_mtu);
 return 0;
}
