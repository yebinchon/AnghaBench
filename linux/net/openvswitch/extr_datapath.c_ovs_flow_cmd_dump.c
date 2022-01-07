
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u32 ;
struct table_instance {int dummy; } ;
struct sw_flow {int dummy; } ;
struct sk_buff {int len; int sk; } ;
struct ovs_header {int dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {void** args; TYPE_2__* nlh; int skb; } ;
struct TYPE_5__ {int ti; } ;
struct datapath {TYPE_1__ table; } ;
struct TYPE_7__ {int portid; } ;
struct TYPE_6__ {int nlmsg_seq; } ;


 int ENODEV ;
 TYPE_4__ NETLINK_CB (int ) ;
 int NLM_F_MULTI ;
 int OVS_FLOW_ATTR_MAX ;
 size_t OVS_FLOW_ATTR_UFID_FLAGS ;
 int OVS_FLOW_CMD_GET ;
 int __OVS_FLOW_ATTR_MAX ;
 int dp_flow_genl_family ;
 int flow_policy ;
 struct ovs_header* genlmsg_data (int ) ;
 int genlmsg_parse_deprecated (TYPE_2__*,int *,struct nlattr**,int ,int ,int *) ;
 struct datapath* get_dp_rcu (int ,int ) ;
 int nlmsg_data (TYPE_2__*) ;
 scalar_t__ ovs_flow_cmd_fill_info (struct sw_flow*,int ,struct sk_buff*,int ,int ,int ,int ,void*) ;
 struct sw_flow* ovs_flow_tbl_dump_next (struct table_instance*,void**,void**) ;
 void* ovs_nla_get_ufid_flags (struct nlattr*) ;
 struct table_instance* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sock_net (int ) ;

__attribute__((used)) static int ovs_flow_cmd_dump(struct sk_buff *skb, struct netlink_callback *cb)
{
 struct nlattr *a[__OVS_FLOW_ATTR_MAX];
 struct ovs_header *ovs_header = genlmsg_data(nlmsg_data(cb->nlh));
 struct table_instance *ti;
 struct datapath *dp;
 u32 ufid_flags;
 int err;

 err = genlmsg_parse_deprecated(cb->nlh, &dp_flow_genl_family, a,
           OVS_FLOW_ATTR_MAX, flow_policy, ((void*)0));
 if (err)
  return err;
 ufid_flags = ovs_nla_get_ufid_flags(a[OVS_FLOW_ATTR_UFID_FLAGS]);

 rcu_read_lock();
 dp = get_dp_rcu(sock_net(skb->sk), ovs_header->dp_ifindex);
 if (!dp) {
  rcu_read_unlock();
  return -ENODEV;
 }

 ti = rcu_dereference(dp->table.ti);
 for (;;) {
  struct sw_flow *flow;
  u32 bucket, obj;

  bucket = cb->args[0];
  obj = cb->args[1];
  flow = ovs_flow_tbl_dump_next(ti, &bucket, &obj);
  if (!flow)
   break;

  if (ovs_flow_cmd_fill_info(flow, ovs_header->dp_ifindex, skb,
        NETLINK_CB(cb->skb).portid,
        cb->nlh->nlmsg_seq, NLM_F_MULTI,
        OVS_FLOW_CMD_GET, ufid_flags) < 0)
   break;

  cb->args[0] = bucket;
  cb->args[1] = obj;
 }
 rcu_read_unlock();
 return skb->len;
}
