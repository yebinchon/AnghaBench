
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovs_conntrack_info {int dummy; } ;
struct nlattr {int dummy; } ;


 int __ovs_ct_free_action (struct ovs_conntrack_info*) ;
 struct ovs_conntrack_info* nla_data (struct nlattr const*) ;

void ovs_ct_free_action(const struct nlattr *a)
{
 struct ovs_conntrack_info *ct_info = nla_data(a);

 __ovs_ct_free_action(ct_info);
}
