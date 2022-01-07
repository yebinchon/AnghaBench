
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct nlattr {int dummy; } ;
struct nl80211_dump_wiphy_state {int filter_wiphy; struct nlattr* split; } ;
struct netlink_callback {int nlh; } ;
struct net_device {TYPE_1__* ieee80211_ptr; } ;
struct cfg80211_registered_device {int wiphy_idx; } ;
struct TYPE_4__ {int maxattr; scalar_t__ hdrsize; } ;
struct TYPE_3__ {int wiphy; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ GENL_HDRLEN ;
 int GFP_KERNEL ;
 size_t NL80211_ATTR_IFINDEX ;
 size_t NL80211_ATTR_SPLIT_WIPHY_DUMP ;
 size_t NL80211_ATTR_WDEV ;
 size_t NL80211_ATTR_WIPHY ;
 int NUM_NL80211_ATTR ;
 struct net_device* __dev_get_by_index (int ,int) ;
 struct nlattr** kcalloc (int ,int,int ) ;
 int kfree (struct nlattr**) ;
 TYPE_2__ nl80211_fam ;
 int nl80211_policy ;
 void* nla_get_u32 (struct nlattr*) ;
 int nla_get_u64 (struct nlattr*) ;
 int nlmsg_parse_deprecated (int ,scalar_t__,struct nlattr**,int ,int ,int *) ;
 int sock_net (int ) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static int nl80211_dump_wiphy_parse(struct sk_buff *skb,
        struct netlink_callback *cb,
        struct nl80211_dump_wiphy_state *state)
{
 struct nlattr **tb = kcalloc(NUM_NL80211_ATTR, sizeof(*tb), GFP_KERNEL);
 int ret;

 if (!tb)
  return -ENOMEM;

 ret = nlmsg_parse_deprecated(cb->nlh,
         GENL_HDRLEN + nl80211_fam.hdrsize,
         tb, nl80211_fam.maxattr,
         nl80211_policy, ((void*)0));

 if (ret) {
  ret = 0;
  goto out;
 }

 state->split = tb[NL80211_ATTR_SPLIT_WIPHY_DUMP];
 if (tb[NL80211_ATTR_WIPHY])
  state->filter_wiphy = nla_get_u32(tb[NL80211_ATTR_WIPHY]);
 if (tb[NL80211_ATTR_WDEV])
  state->filter_wiphy = nla_get_u64(tb[NL80211_ATTR_WDEV]) >> 32;
 if (tb[NL80211_ATTR_IFINDEX]) {
  struct net_device *netdev;
  struct cfg80211_registered_device *rdev;
  int ifidx = nla_get_u32(tb[NL80211_ATTR_IFINDEX]);

  netdev = __dev_get_by_index(sock_net(skb->sk), ifidx);
  if (!netdev) {
   ret = -ENODEV;
   goto out;
  }
  if (netdev->ieee80211_ptr) {
   rdev = wiphy_to_rdev(
    netdev->ieee80211_ptr->wiphy);
   state->filter_wiphy = rdev->wiphy_idx;
  }
 }

 ret = 0;
out:
 kfree(tb);
 return ret;
}
