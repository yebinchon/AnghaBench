
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; struct cfg802154_registered_device** user_ptr; } ;
struct cfg802154_registered_device {int dummy; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NL802154_CMD_NEW_WPAN_PHY ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 scalar_t__ nl802154_send_wpan_phy (struct cfg802154_registered_device*,int ,struct sk_buff*,int ,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int nl802154_get_wpan_phy(struct sk_buff *skb, struct genl_info *info)
{
 struct sk_buff *msg;
 struct cfg802154_registered_device *rdev = info->user_ptr[0];

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 if (nl802154_send_wpan_phy(rdev, NL802154_CMD_NEW_WPAN_PHY, msg,
       info->snd_portid, info->snd_seq, 0) < 0) {
  nlmsg_free(msg);
  return -ENOBUFS;
 }

 return genlmsg_reply(msg, info);
}
