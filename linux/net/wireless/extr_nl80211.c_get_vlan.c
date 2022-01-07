
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* ieee80211_ptr; } ;
struct genl_info {struct nlattr** attrs; } ;
struct cfg80211_registered_device {int wiphy; } ;
struct TYPE_2__ {scalar_t__ iftype; int * wiphy; } ;


 int EINVAL ;
 int ENETDOWN ;
 int ENODEV ;
 struct net_device* ERR_PTR (int) ;
 size_t NL80211_ATTR_STA_VLAN ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 scalar_t__ NL80211_IFTYPE_P2P_GO ;
 struct net_device* dev_get_by_index (int ,int ) ;
 int dev_put (struct net_device*) ;
 int genl_info_net (struct genl_info*) ;
 int netif_running (struct net_device*) ;
 int nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static struct net_device *get_vlan(struct genl_info *info,
       struct cfg80211_registered_device *rdev)
{
 struct nlattr *vlanattr = info->attrs[NL80211_ATTR_STA_VLAN];
 struct net_device *v;
 int ret;

 if (!vlanattr)
  return ((void*)0);

 v = dev_get_by_index(genl_info_net(info), nla_get_u32(vlanattr));
 if (!v)
  return ERR_PTR(-ENODEV);

 if (!v->ieee80211_ptr || v->ieee80211_ptr->wiphy != &rdev->wiphy) {
  ret = -EINVAL;
  goto error;
 }

 if (v->ieee80211_ptr->iftype != NL80211_IFTYPE_AP_VLAN &&
     v->ieee80211_ptr->iftype != NL80211_IFTYPE_AP &&
     v->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_GO) {
  ret = -EINVAL;
  goto error;
 }

 if (!netif_running(v)) {
  ret = -ENETDOWN;
  goto error;
 }

 return v;
 error:
 dev_put(v);
 return ERR_PTR(ret);
}
