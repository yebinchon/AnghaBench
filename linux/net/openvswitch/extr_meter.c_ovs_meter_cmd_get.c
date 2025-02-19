
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int sk; } ;
struct ovs_header {int dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct genl_info {struct ovs_header* userhdr; struct nlattr** attrs; } ;
struct dp_meter {int lock; } ;
struct datapath {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 size_t OVS_METER_ATTR_ID ;
 int OVS_METER_CMD_GET ;
 int PTR_ERR (struct sk_buff*) ;
 int genlmsg_end (struct sk_buff*,struct ovs_header*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 struct datapath* get_dp (int ,int ) ;
 struct dp_meter* lookup_meter (struct datapath*,int ) ;
 int nla_get_u32 (struct nlattr*) ;
 int nlmsg_free (struct sk_buff*) ;
 int ovs_lock () ;
 struct sk_buff* ovs_meter_cmd_reply_start (struct genl_info*,int ,struct ovs_header**) ;
 int ovs_meter_cmd_reply_stats (struct sk_buff*,int ,struct dp_meter*) ;
 int ovs_unlock () ;
 int sock_net (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ovs_meter_cmd_get(struct sk_buff *skb, struct genl_info *info)
{
 struct nlattr **a = info->attrs;
 u32 meter_id;
 struct ovs_header *ovs_header = info->userhdr;
 struct ovs_header *ovs_reply_header;
 struct datapath *dp;
 int err;
 struct sk_buff *reply;
 struct dp_meter *meter;

 if (!a[OVS_METER_ATTR_ID])
  return -EINVAL;

 meter_id = nla_get_u32(a[OVS_METER_ATTR_ID]);

 reply = ovs_meter_cmd_reply_start(info, OVS_METER_CMD_GET,
       &ovs_reply_header);
 if (IS_ERR(reply))
  return PTR_ERR(reply);

 ovs_lock();

 dp = get_dp(sock_net(skb->sk), ovs_header->dp_ifindex);
 if (!dp) {
  err = -ENODEV;
  goto exit_unlock;
 }


 meter = lookup_meter(dp, meter_id);
 if (!meter) {
  err = -ENOENT;
  goto exit_unlock;
 }

 spin_lock_bh(&meter->lock);
 err = ovs_meter_cmd_reply_stats(reply, meter_id, meter);
 spin_unlock_bh(&meter->lock);
 if (err)
  goto exit_unlock;

 ovs_unlock();

 genlmsg_end(reply, ovs_reply_header);
 return genlmsg_reply(reply, info);

exit_unlock:
 ovs_unlock();
 nlmsg_free(reply);
 return err;
}
