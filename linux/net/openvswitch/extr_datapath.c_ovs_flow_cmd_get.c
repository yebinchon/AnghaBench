
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sw_flow_match {int dummy; } ;
struct sw_flow_key {int dummy; } ;
struct sw_flow_id {int dummy; } ;
struct sw_flow {int dummy; } ;
struct sk_buff {int sk; } ;
struct ovs_header {int dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {struct ovs_header* userhdr; struct nlattr** attrs; } ;
struct datapath {int table; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 size_t OVS_FLOW_ATTR_KEY ;
 size_t OVS_FLOW_ATTR_PROBE ;
 size_t OVS_FLOW_ATTR_UFID ;
 size_t OVS_FLOW_ATTR_UFID_FLAGS ;
 int OVS_FLOW_CMD_GET ;
 int OVS_NLERR (int,char*) ;
 int PTR_ERR (struct sk_buff*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 struct datapath* get_dp (struct net*,int ) ;
 struct sk_buff* ovs_flow_cmd_build_info (struct sw_flow*,int ,struct genl_info*,int ,int,int ) ;
 struct sw_flow* ovs_flow_tbl_lookup_exact (int *,struct sw_flow_match*) ;
 struct sw_flow* ovs_flow_tbl_lookup_ufid (int *,struct sw_flow_id*) ;
 int ovs_lock () ;
 int ovs_match_init (struct sw_flow_match*,struct sw_flow_key*,int,int *) ;
 int ovs_nla_get_match (struct net*,struct sw_flow_match*,struct nlattr*,int *,int) ;
 int ovs_nla_get_ufid (struct sw_flow_id*,struct nlattr*,int) ;
 int ovs_nla_get_ufid_flags (struct nlattr*) ;
 int ovs_unlock () ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int ovs_flow_cmd_get(struct sk_buff *skb, struct genl_info *info)
{
 struct nlattr **a = info->attrs;
 struct ovs_header *ovs_header = info->userhdr;
 struct net *net = sock_net(skb->sk);
 struct sw_flow_key key;
 struct sk_buff *reply;
 struct sw_flow *flow;
 struct datapath *dp;
 struct sw_flow_match match;
 struct sw_flow_id ufid;
 u32 ufid_flags = ovs_nla_get_ufid_flags(a[OVS_FLOW_ATTR_UFID_FLAGS]);
 int err = 0;
 bool log = !a[OVS_FLOW_ATTR_PROBE];
 bool ufid_present;

 ufid_present = ovs_nla_get_ufid(&ufid, a[OVS_FLOW_ATTR_UFID], log);
 if (a[OVS_FLOW_ATTR_KEY]) {
  ovs_match_init(&match, &key, 1, ((void*)0));
  err = ovs_nla_get_match(net, &match, a[OVS_FLOW_ATTR_KEY], ((void*)0),
     log);
 } else if (!ufid_present) {
  OVS_NLERR(log,
     "Flow get message rejected, Key attribute missing.");
  err = -EINVAL;
 }
 if (err)
  return err;

 ovs_lock();
 dp = get_dp(sock_net(skb->sk), ovs_header->dp_ifindex);
 if (!dp) {
  err = -ENODEV;
  goto unlock;
 }

 if (ufid_present)
  flow = ovs_flow_tbl_lookup_ufid(&dp->table, &ufid);
 else
  flow = ovs_flow_tbl_lookup_exact(&dp->table, &match);
 if (!flow) {
  err = -ENOENT;
  goto unlock;
 }

 reply = ovs_flow_cmd_build_info(flow, ovs_header->dp_ifindex, info,
     OVS_FLOW_CMD_GET, 1, ufid_flags);
 if (IS_ERR(reply)) {
  err = PTR_ERR(reply);
  goto unlock;
 }

 ovs_unlock();
 return genlmsg_reply(reply, info);
unlock:
 ovs_unlock();
 return err;
}
