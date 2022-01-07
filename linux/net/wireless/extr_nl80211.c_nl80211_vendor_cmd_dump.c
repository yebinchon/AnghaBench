
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wireless_dev {int netdev; } ;
struct wiphy_vendor_command {int flags; int (* dumpit ) (TYPE_2__*,struct wireless_dev*,struct sk_buff*,void*,int,unsigned long*) ;} ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {unsigned int* args; TYPE_1__* nlh; int skb; } ;
struct TYPE_5__ {struct wiphy_vendor_command* vendor_commands; } ;
struct cfg80211_registered_device {TYPE_2__ wiphy; int wiphy_idx; } ;
struct TYPE_6__ {int portid; } ;
struct TYPE_4__ {int nlmsg_seq; } ;


 int EINVAL ;
 int ENETDOWN ;
 int ENOBUFS ;
 int ENOENT ;
 TYPE_3__ NETLINK_CB (int ) ;
 int NL80211_ATTR_PAD ;
 int NL80211_ATTR_VENDOR_DATA ;
 int NL80211_ATTR_WDEV ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_VENDOR ;
 int NLM_F_MULTI ;
 int WIPHY_VENDOR_CMD_NEED_NETDEV ;
 int WIPHY_VENDOR_CMD_NEED_RUNNING ;
 int WIPHY_VENDOR_CMD_NEED_WDEV ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int nl80211_prepare_vendor_dump (struct sk_buff*,struct netlink_callback*,struct cfg80211_registered_device**,struct wireless_dev**) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stub1 (TYPE_2__*,struct wireless_dev*,struct sk_buff*,void*,int,unsigned long*) ;
 int wdev_id (struct wireless_dev*) ;
 int wdev_running (struct wireless_dev*) ;

__attribute__((used)) static int nl80211_vendor_cmd_dump(struct sk_buff *skb,
       struct netlink_callback *cb)
{
 struct cfg80211_registered_device *rdev;
 struct wireless_dev *wdev;
 unsigned int vcmd_idx;
 const struct wiphy_vendor_command *vcmd;
 void *data;
 int data_len;
 int err;
 struct nlattr *vendor_data;

 rtnl_lock();
 err = nl80211_prepare_vendor_dump(skb, cb, &rdev, &wdev);
 if (err)
  goto out;

 vcmd_idx = cb->args[2];
 data = (void *)cb->args[3];
 data_len = cb->args[4];
 vcmd = &rdev->wiphy.vendor_commands[vcmd_idx];

 if (vcmd->flags & (WIPHY_VENDOR_CMD_NEED_WDEV |
      WIPHY_VENDOR_CMD_NEED_NETDEV)) {
  if (!wdev) {
   err = -EINVAL;
   goto out;
  }
  if (vcmd->flags & WIPHY_VENDOR_CMD_NEED_NETDEV &&
      !wdev->netdev) {
   err = -EINVAL;
   goto out;
  }

  if (vcmd->flags & WIPHY_VENDOR_CMD_NEED_RUNNING) {
   if (!wdev_running(wdev)) {
    err = -ENETDOWN;
    goto out;
   }
  }
 }

 while (1) {
  void *hdr = nl80211hdr_put(skb, NETLINK_CB(cb->skb).portid,
        cb->nlh->nlmsg_seq, NLM_F_MULTI,
        NL80211_CMD_VENDOR);
  if (!hdr)
   break;

  if (nla_put_u32(skb, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
      (wdev && nla_put_u64_64bit(skb, NL80211_ATTR_WDEV,
            wdev_id(wdev),
            NL80211_ATTR_PAD))) {
   genlmsg_cancel(skb, hdr);
   break;
  }

  vendor_data = nla_nest_start_noflag(skb,
          NL80211_ATTR_VENDOR_DATA);
  if (!vendor_data) {
   genlmsg_cancel(skb, hdr);
   break;
  }

  err = vcmd->dumpit(&rdev->wiphy, wdev, skb, data, data_len,
       (unsigned long *)&cb->args[5]);
  nla_nest_end(skb, vendor_data);

  if (err == -ENOBUFS || err == -ENOENT) {
   genlmsg_cancel(skb, hdr);
   break;
  } else if (err) {
   genlmsg_cancel(skb, hdr);
   goto out;
  }

  genlmsg_end(skb, hdr);
 }

 err = skb->len;
 out:
 rtnl_unlock();
 return err;
}
