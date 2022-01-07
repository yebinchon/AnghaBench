
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {struct wireless_dev* netdev; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct genl_ops {int internal_flags; } ;
struct genl_info {struct wireless_dev** user_ptr; } ;


 int NL80211_FLAG_CLEAR_SKB ;
 int NL80211_FLAG_NEED_RTNL ;
 int NL80211_FLAG_NEED_WDEV ;
 int dev_put (struct wireless_dev*) ;
 int memset (int ,int ,int ) ;
 int nlmsg_data (struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_hdr (struct sk_buff*) ;
 int nlmsg_len (struct nlmsghdr*) ;
 int rtnl_unlock () ;

__attribute__((used)) static void nl80211_post_doit(const struct genl_ops *ops, struct sk_buff *skb,
         struct genl_info *info)
{
 if (info->user_ptr[1]) {
  if (ops->internal_flags & NL80211_FLAG_NEED_WDEV) {
   struct wireless_dev *wdev = info->user_ptr[1];

   if (wdev->netdev)
    dev_put(wdev->netdev);
  } else {
   dev_put(info->user_ptr[1]);
  }
 }

 if (ops->internal_flags & NL80211_FLAG_NEED_RTNL)
  rtnl_unlock();






 if (ops->internal_flags & NL80211_FLAG_CLEAR_SKB) {
  struct nlmsghdr *nlh = nlmsg_hdr(skb);

  memset(nlmsg_data(nlh), 0, nlmsg_len(nlh));
 }
}
