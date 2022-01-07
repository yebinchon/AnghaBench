
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; int * attrs; struct batadv_priv** user_ptr; } ;
struct batadv_priv {int dummy; } ;


 size_t BATADV_ATTR_ORIG_ADDRESS ;
 size_t BATADV_ATTR_TPMETER_TEST_TIME ;
 int BATADV_CMD_TP_METER ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int batadv_netlink_family ;
 int batadv_netlink_tp_meter_put (struct sk_buff*,int ) ;
 int batadv_tp_start (struct batadv_priv*,int *,int ,int *) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int * nla_data (int ) ;
 int nla_get_u32 (int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int
batadv_netlink_tp_meter_start(struct sk_buff *skb, struct genl_info *info)
{
 struct batadv_priv *bat_priv = info->user_ptr[0];
 struct sk_buff *msg = ((void*)0);
 u32 test_length;
 void *msg_head;
 u32 cookie;
 u8 *dst;
 int ret;

 if (!info->attrs[BATADV_ATTR_ORIG_ADDRESS])
  return -EINVAL;

 if (!info->attrs[BATADV_ATTR_TPMETER_TEST_TIME])
  return -EINVAL;

 dst = nla_data(info->attrs[BATADV_ATTR_ORIG_ADDRESS]);

 test_length = nla_get_u32(info->attrs[BATADV_ATTR_TPMETER_TEST_TIME]);

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg) {
  ret = -ENOMEM;
  goto out;
 }

 msg_head = genlmsg_put(msg, info->snd_portid, info->snd_seq,
          &batadv_netlink_family, 0,
          BATADV_CMD_TP_METER);
 if (!msg_head) {
  ret = -ENOBUFS;
  goto out;
 }

 batadv_tp_start(bat_priv, dst, test_length, &cookie);

 ret = batadv_netlink_tp_meter_put(msg, cookie);

 out:
 if (ret) {
  if (msg)
   nlmsg_free(msg);
  return ret;
 }

 genlmsg_end(msg, msg_head);
 return genlmsg_reply(msg, info);
}
