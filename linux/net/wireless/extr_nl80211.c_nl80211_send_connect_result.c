
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int ifindex; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; } ;
struct TYPE_2__ {scalar_t__ erp_next_seq_num; scalar_t__ pmkid; scalar_t__ pmk; scalar_t__ pmk_len; scalar_t__ kek; scalar_t__ kek_len; scalar_t__ update_erp_next_seq_num; } ;
struct cfg80211_connect_resp_params {scalar_t__ status; TYPE_1__ fils; scalar_t__ resp_ie; scalar_t__ resp_ie_len; scalar_t__ req_ie; scalar_t__ req_ie_len; int timeout_reason; scalar_t__ bssid; } ;
typedef int gfp_t ;


 scalar_t__ ETH_ALEN ;
 int NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM ;
 int NL80211_ATTR_FILS_KEK ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_MAC ;
 int NL80211_ATTR_PMK ;
 int NL80211_ATTR_PMKID ;
 int NL80211_ATTR_REQ_IE ;
 int NL80211_ATTR_RESP_IE ;
 int NL80211_ATTR_STATUS_CODE ;
 int NL80211_ATTR_TIMED_OUT ;
 int NL80211_ATTR_TIMEOUT_REASON ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_CONNECT ;
 int NL80211_MCGRP_MLME ;
 scalar_t__ WLAN_PMKID_LEN ;
 scalar_t__ WLAN_STATUS_SUCCESS ;
 scalar_t__ WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (scalar_t__,int ) ;
 int wiphy_net (int *) ;

void nl80211_send_connect_result(struct cfg80211_registered_device *rdev,
     struct net_device *netdev,
     struct cfg80211_connect_resp_params *cr,
     gfp_t gfp)
{
 struct sk_buff *msg;
 void *hdr;

 msg = nlmsg_new(100 + cr->req_ie_len + cr->resp_ie_len +
   cr->fils.kek_len + cr->fils.pmk_len +
   (cr->fils.pmkid ? WLAN_PMKID_LEN : 0), gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_CONNECT);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, netdev->ifindex) ||
     (cr->bssid &&
      nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN, cr->bssid)) ||
     nla_put_u16(msg, NL80211_ATTR_STATUS_CODE,
   cr->status < 0 ? WLAN_STATUS_UNSPECIFIED_FAILURE :
   cr->status) ||
     (cr->status < 0 &&
      (nla_put_flag(msg, NL80211_ATTR_TIMED_OUT) ||
       nla_put_u32(msg, NL80211_ATTR_TIMEOUT_REASON,
     cr->timeout_reason))) ||
     (cr->req_ie &&
      nla_put(msg, NL80211_ATTR_REQ_IE, cr->req_ie_len, cr->req_ie)) ||
     (cr->resp_ie &&
      nla_put(msg, NL80211_ATTR_RESP_IE, cr->resp_ie_len,
       cr->resp_ie)) ||
     (cr->fils.update_erp_next_seq_num &&
      nla_put_u16(msg, NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM,
    cr->fils.erp_next_seq_num)) ||
     (cr->status == WLAN_STATUS_SUCCESS &&
      ((cr->fils.kek &&
        nla_put(msg, NL80211_ATTR_FILS_KEK, cr->fils.kek_len,
         cr->fils.kek)) ||
       (cr->fils.pmk &&
        nla_put(msg, NL80211_ATTR_PMK, cr->fils.pmk_len, cr->fils.pmk)) ||
       (cr->fils.pmkid &&
        nla_put(msg, NL80211_ATTR_PMKID, WLAN_PMKID_LEN, cr->fils.pmkid)))))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_MLME, gfp);
 return;

 nla_put_failure:
 nlmsg_free(msg);
}
