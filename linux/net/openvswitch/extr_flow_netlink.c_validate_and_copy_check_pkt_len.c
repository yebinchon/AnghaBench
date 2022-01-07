
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sw_flow_actions {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct check_pkt_len_arg {int exec_for_lesser_equal; int exec_for_greater; scalar_t__ pkt_len; } ;
typedef int arg ;
typedef int __be16 ;


 int EINVAL ;
 size_t OVS_ACTION_ATTR_CHECK_PKT_LEN ;
 size_t OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_GREATER ;
 size_t OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_LESS_EQUAL ;
 int OVS_CHECK_PKT_LEN_ATTR_ARG ;
 int OVS_CHECK_PKT_LEN_ATTR_MAX ;
 size_t OVS_CHECK_PKT_LEN_ATTR_PKT_LEN ;
 int __ovs_nla_copy_actions (struct net*,struct nlattr const*,struct sw_flow_key const*,struct sw_flow_actions**,int ,int ,int) ;
 int actions_may_change_flow (struct nlattr const*) ;
 int add_nested_action_end (struct sw_flow_actions*,int) ;
 int add_nested_action_start (struct sw_flow_actions**,size_t,int) ;
 int cpl_policy ;
 int nla_data (struct nlattr const*) ;
 scalar_t__ nla_get_u16 (struct nlattr*) ;
 int nla_len (struct nlattr const*) ;
 int nla_parse_deprecated_strict (struct nlattr**,int ,int ,int ,int ,int *) ;
 int ovs_nla_add_action (struct sw_flow_actions**,int ,struct check_pkt_len_arg*,int,int) ;

__attribute__((used)) static int validate_and_copy_check_pkt_len(struct net *net,
        const struct nlattr *attr,
        const struct sw_flow_key *key,
        struct sw_flow_actions **sfa,
        __be16 eth_type, __be16 vlan_tci,
        bool log, bool last)
{
 const struct nlattr *acts_if_greater, *acts_if_lesser_eq;
 struct nlattr *a[OVS_CHECK_PKT_LEN_ATTR_MAX + 1];
 struct check_pkt_len_arg arg;
 int nested_acts_start;
 int start, err;

 err = nla_parse_deprecated_strict(a, OVS_CHECK_PKT_LEN_ATTR_MAX,
       nla_data(attr), nla_len(attr),
       cpl_policy, ((void*)0));
 if (err)
  return err;

 if (!a[OVS_CHECK_PKT_LEN_ATTR_PKT_LEN] ||
     !nla_get_u16(a[OVS_CHECK_PKT_LEN_ATTR_PKT_LEN]))
  return -EINVAL;

 acts_if_lesser_eq = a[OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_LESS_EQUAL];
 acts_if_greater = a[OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_GREATER];


 if (!acts_if_greater || !acts_if_lesser_eq)
  return -EINVAL;


 start = add_nested_action_start(sfa, OVS_ACTION_ATTR_CHECK_PKT_LEN,
     log);
 if (start < 0)
  return start;

 arg.pkt_len = nla_get_u16(a[OVS_CHECK_PKT_LEN_ATTR_PKT_LEN]);
 arg.exec_for_lesser_equal =
  last || !actions_may_change_flow(acts_if_lesser_eq);
 arg.exec_for_greater =
  last || !actions_may_change_flow(acts_if_greater);

 err = ovs_nla_add_action(sfa, OVS_CHECK_PKT_LEN_ATTR_ARG, &arg,
     sizeof(arg), log);
 if (err)
  return err;

 nested_acts_start = add_nested_action_start(sfa,
  OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_LESS_EQUAL, log);
 if (nested_acts_start < 0)
  return nested_acts_start;

 err = __ovs_nla_copy_actions(net, acts_if_lesser_eq, key, sfa,
         eth_type, vlan_tci, log);

 if (err)
  return err;

 add_nested_action_end(*sfa, nested_acts_start);

 nested_acts_start = add_nested_action_start(sfa,
  OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_GREATER, log);
 if (nested_acts_start < 0)
  return nested_acts_start;

 err = __ovs_nla_copy_actions(net, acts_if_greater, key, sfa,
         eth_type, vlan_tci, log);

 if (err)
  return err;

 add_nested_action_end(*sfa, nested_acts_start);
 add_nested_action_end(*sfa, start);
 return 0;
}
