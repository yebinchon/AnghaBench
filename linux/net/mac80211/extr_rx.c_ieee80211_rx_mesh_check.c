
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ieee80211_rx_data {TYPE_3__* skb; int sta; TYPE_2__* sdata; } ;
struct TYPE_9__ {scalar_t__ category; } ;
struct TYPE_10__ {TYPE_4__ action; } ;
struct ieee80211_mgmt {TYPE_5__ u; } ;
struct ieee80211_hdr {int frame_control; int addr4; int addr3; int addr1; } ;
typedef int ieee80211_rx_result ;
struct TYPE_8__ {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_6__ {char* addr; } ;
struct TYPE_7__ {TYPE_1__ vif; } ;


 scalar_t__ IEEE80211_MIN_ACTION_SIZE ;
 scalar_t__ NL80211_PLINK_ESTAB ;
 int RX_CONTINUE ;
 int RX_DROP_MONITOR ;
 scalar_t__ WLAN_CATEGORY_MESH_ACTION ;
 scalar_t__ WLAN_CATEGORY_SELF_PROTECTED ;
 scalar_t__ ether_addr_equal (int ,char*) ;
 int ieee80211_has_a4 (int ) ;
 int ieee80211_has_fromds (int ) ;
 scalar_t__ ieee80211_has_tods (int ) ;
 scalar_t__ ieee80211_is_action (int ) ;
 scalar_t__ ieee80211_is_auth (int ) ;
 scalar_t__ ieee80211_is_beacon (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 int ieee80211_is_mgmt (int ) ;
 scalar_t__ ieee80211_is_probe_req (int ) ;
 scalar_t__ ieee80211_is_probe_resp (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 scalar_t__ sta_plink_state (int ) ;

__attribute__((used)) static ieee80211_rx_result ieee80211_rx_mesh_check(struct ieee80211_rx_data *rx)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)rx->skb->data;
 char *dev_addr = rx->sdata->vif.addr;

 if (ieee80211_is_data(hdr->frame_control)) {
  if (is_multicast_ether_addr(hdr->addr1)) {
   if (ieee80211_has_tods(hdr->frame_control) ||
       !ieee80211_has_fromds(hdr->frame_control))
    return RX_DROP_MONITOR;
   if (ether_addr_equal(hdr->addr3, dev_addr))
    return RX_DROP_MONITOR;
  } else {
   if (!ieee80211_has_a4(hdr->frame_control))
    return RX_DROP_MONITOR;
   if (ether_addr_equal(hdr->addr4, dev_addr))
    return RX_DROP_MONITOR;
  }
 }





 if (!rx->sta || sta_plink_state(rx->sta) != NL80211_PLINK_ESTAB) {
  struct ieee80211_mgmt *mgmt;

  if (!ieee80211_is_mgmt(hdr->frame_control))
   return RX_DROP_MONITOR;

  if (ieee80211_is_action(hdr->frame_control)) {
   u8 category;


   if (rx->skb->len < IEEE80211_MIN_ACTION_SIZE)
    return RX_DROP_MONITOR;

   mgmt = (struct ieee80211_mgmt *)hdr;
   category = mgmt->u.action.category;
   if (category != WLAN_CATEGORY_MESH_ACTION &&
       category != WLAN_CATEGORY_SELF_PROTECTED)
    return RX_DROP_MONITOR;
   return RX_CONTINUE;
  }

  if (ieee80211_is_probe_req(hdr->frame_control) ||
      ieee80211_is_probe_resp(hdr->frame_control) ||
      ieee80211_is_beacon(hdr->frame_control) ||
      ieee80211_is_auth(hdr->frame_control))
   return RX_CONTINUE;

  return RX_DROP_MONITOR;
 }

 return RX_CONTINUE;
}
