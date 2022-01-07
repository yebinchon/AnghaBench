
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; } ;
struct TYPE_4__ {int const* pmkid; int const* pmk; scalar_t__ pmk_len; int const* kek; scalar_t__ kek_len; int erp_next_seq_num; scalar_t__ update_erp_next_seq_num; } ;
struct cfg80211_roam_info {TYPE_2__ fils; int const* resp_ie; scalar_t__ resp_ie_len; int const* req_ie; scalar_t__ req_ie_len; int * bssid; TYPE_1__* bss; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; } ;
typedef int gfp_t ;
struct TYPE_3__ {int * bssid; } ;


 scalar_t__ ETH_ALEN ;
 int NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM ;
 int NL80211_ATTR_FILS_KEK ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_MAC ;
 int NL80211_ATTR_PMK ;
 int NL80211_ATTR_PMKID ;
 int NL80211_ATTR_REQ_IE ;
 int NL80211_ATTR_RESP_IE ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_ROAM ;
 int NL80211_MCGRP_MLME ;
 scalar_t__ WLAN_PMKID_LEN ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,scalar_t__,int const*) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (scalar_t__,int ) ;
 int wiphy_net (int *) ;

void nl80211_send_roamed(struct cfg80211_registered_device *rdev,
    struct net_device *netdev,
    struct cfg80211_roam_info *info, gfp_t gfp)
{
 struct sk_buff *msg;
 void *hdr;
 const u8 *bssid = info->bss ? info->bss->bssid : info->bssid;

 msg = nlmsg_new(100 + info->req_ie_len + info->resp_ie_len +
   info->fils.kek_len + info->fils.pmk_len +
   (info->fils.pmkid ? WLAN_PMKID_LEN : 0), gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_ROAM);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, netdev->ifindex) ||
     nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN, bssid) ||
     (info->req_ie &&
      nla_put(msg, NL80211_ATTR_REQ_IE, info->req_ie_len,
       info->req_ie)) ||
     (info->resp_ie &&
      nla_put(msg, NL80211_ATTR_RESP_IE, info->resp_ie_len,
       info->resp_ie)) ||
     (info->fils.update_erp_next_seq_num &&
      nla_put_u16(msg, NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM,
    info->fils.erp_next_seq_num)) ||
     (info->fils.kek &&
      nla_put(msg, NL80211_ATTR_FILS_KEK, info->fils.kek_len,
       info->fils.kek)) ||
     (info->fils.pmk &&
      nla_put(msg, NL80211_ATTR_PMK, info->fils.pmk_len, info->fils.pmk)) ||
     (info->fils.pmkid &&
      nla_put(msg, NL80211_ATTR_PMKID, WLAN_PMKID_LEN, info->fils.pmkid)))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_MLME, gfp);
 return;

 nla_put_failure:
 nlmsg_free(msg);
}
