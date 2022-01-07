
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovs_tunnel_info {scalar_t__ tun_dst; } ;
struct nlattr {int dummy; } ;
struct dst_entry {int dummy; } ;



 int dst_release (struct dst_entry*) ;
 void* nla_data (struct nlattr const*) ;
 int nla_type (struct nlattr const*) ;

__attribute__((used)) static void ovs_nla_free_set_action(const struct nlattr *a)
{
 const struct nlattr *ovs_key = nla_data(a);
 struct ovs_tunnel_info *ovs_tun;

 switch (nla_type(ovs_key)) {
 case 128:
  ovs_tun = nla_data(ovs_key);
  dst_release((struct dst_entry *)ovs_tun->tun_dst);
  break;
 }
}
