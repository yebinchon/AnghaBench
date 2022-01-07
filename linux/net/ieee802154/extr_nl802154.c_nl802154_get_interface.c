
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; struct wpan_dev** user_ptr; } ;
typedef struct wpan_dev cfg802154_registered_device ;


 int ENOBUFS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 scalar_t__ nl802154_send_iface (struct sk_buff*,int ,int ,int ,struct wpan_dev*,struct wpan_dev*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int nl802154_get_interface(struct sk_buff *skb, struct genl_info *info)
{
 struct sk_buff *msg;
 struct cfg802154_registered_device *rdev = info->user_ptr[0];
 struct wpan_dev *wdev = info->user_ptr[1];

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 if (nl802154_send_iface(msg, info->snd_portid, info->snd_seq, 0,
    rdev, wdev) < 0) {
  nlmsg_free(msg);
  return -ENOBUFS;
 }

 return genlmsg_reply(msg, info);
}
