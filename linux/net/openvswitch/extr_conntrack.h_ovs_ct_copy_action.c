
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sw_flow_actions {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static inline int ovs_ct_copy_action(struct net *net, const struct nlattr *nla,
         const struct sw_flow_key *key,
         struct sw_flow_actions **acts, bool log)
{
 return -ENOTSUPP;
}
