
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct batadv_priv {int soft_iface; } ;


 int BATADV_ATTR_ORIG_ADDRESS ;
 int BATADV_ATTR_PAD ;
 int BATADV_ATTR_TPMETER_BYTES ;
 int BATADV_ATTR_TPMETER_COOKIE ;
 int BATADV_ATTR_TPMETER_RESULT ;
 int BATADV_ATTR_TPMETER_TEST_TIME ;
 int BATADV_CMD_TP_METER ;
 int BATADV_NL_MCGRP_TPMETER ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int batadv_netlink_family ;
 int dev_net (int ) ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int const*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

int batadv_netlink_tpmeter_notify(struct batadv_priv *bat_priv, const u8 *dst,
      u8 result, u32 test_time, u64 total_bytes,
      u32 cookie)
{
 struct sk_buff *msg;
 void *hdr;
 int ret;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 hdr = genlmsg_put(msg, 0, 0, &batadv_netlink_family, 0,
     BATADV_CMD_TP_METER);
 if (!hdr) {
  ret = -ENOBUFS;
  goto err_genlmsg;
 }

 if (nla_put_u32(msg, BATADV_ATTR_TPMETER_COOKIE, cookie))
  goto nla_put_failure;

 if (nla_put_u32(msg, BATADV_ATTR_TPMETER_TEST_TIME, test_time))
  goto nla_put_failure;

 if (nla_put_u64_64bit(msg, BATADV_ATTR_TPMETER_BYTES, total_bytes,
         BATADV_ATTR_PAD))
  goto nla_put_failure;

 if (nla_put_u8(msg, BATADV_ATTR_TPMETER_RESULT, result))
  goto nla_put_failure;

 if (nla_put(msg, BATADV_ATTR_ORIG_ADDRESS, ETH_ALEN, dst))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(&batadv_netlink_family,
    dev_net(bat_priv->soft_iface), msg, 0,
    BATADV_NL_MCGRP_TPMETER, GFP_KERNEL);

 return 0;

nla_put_failure:
 genlmsg_cancel(msg, hdr);
 ret = -EMSGSIZE;

err_genlmsg:
 nlmsg_free(msg);
 return ret;
}
