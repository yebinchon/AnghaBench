
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned long u16 ;
struct TYPE_4__ {int * txq; } ;
struct sta_info {TYPE_2__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int priority; scalar_t__ data; } ;
struct TYPE_3__ {int flags; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef enum ieee80211_frame_release_type { ____Placeholder_ieee80211_frame_release_type } ieee80211_frame_release_type ;


 int ARRAY_SIZE (int *) ;
 unsigned long BIT (int) ;
 int IEEE80211_AC_VO ;
 int IEEE80211_FCTL_MOREDATA ;
 int IEEE80211_FRAME_RELEASE_PSPOLL ;
 int IEEE80211_FRAME_RELEASE_UAPSD ;
 int IEEE80211_NUM_ACS ;
 int IEEE80211_QOS_CTL_EOSP ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_PS_BUFFER ;
 int IEEE80211_TX_CTL_REQ_TX_STATUS ;
 int IEEE80211_TX_CTRL_PS_RESPONSE ;
 int IEEE80211_TX_STATUS_EOSP ;
 int WLAN_STA_SP ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int cpu_to_le16 (int ) ;
 int drv_allow_buffered_frames (struct ieee80211_local*,struct sta_info*,unsigned long,int,int,int) ;
 int drv_release_buffered_frames (struct ieee80211_local*,struct sta_info*,unsigned long,int,int,int) ;
 int find_highest_prio_tid (unsigned long) ;
 int* ieee80211_ac_to_qos_mask ;
 int ieee80211_add_pending_skbs (struct ieee80211_local*,struct sk_buff_head*) ;
 int* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 scalar_t__ ieee80211_is_qos_nullfunc (int ) ;
 int ieee80211_send_null_response (struct sta_info*,int,int,int,int) ;
 int ieee80211_sta_ps_get_frames (struct sta_info*,int,int,int,struct sk_buff_head*,unsigned long*) ;
 int ieee80211_sta_ps_more_data (struct sta_info*,int,int,unsigned long) ;
 int set_sta_flag (struct sta_info*,int ) ;
 scalar_t__ skb_queue_empty (struct sk_buff_head*) ;
 int skb_queue_head_init (struct sk_buff_head*) ;
 int sta_info_recalc_tim (struct sta_info*) ;
 scalar_t__ txq_has_queue (int ) ;

__attribute__((used)) static void
ieee80211_sta_ps_deliver_response(struct sta_info *sta,
      int n_frames, u8 ignored_acs,
      enum ieee80211_frame_release_type reason)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 struct ieee80211_local *local = sdata->local;
 unsigned long driver_release_tids = 0;
 struct sk_buff_head frames;
 bool more_data;


 set_sta_flag(sta, WLAN_STA_SP);

 __skb_queue_head_init(&frames);

 ieee80211_sta_ps_get_frames(sta, n_frames, ignored_acs, reason,
        &frames, &driver_release_tids);

 more_data = ieee80211_sta_ps_more_data(sta, ignored_acs, reason, driver_release_tids);

 if (driver_release_tids && reason == IEEE80211_FRAME_RELEASE_PSPOLL)
  driver_release_tids =
   BIT(find_highest_prio_tid(driver_release_tids));

 if (skb_queue_empty(&frames) && !driver_release_tids) {
  int tid, ac;
  for (ac = IEEE80211_AC_VO; ac < IEEE80211_NUM_ACS; ac++)
   if (!(ignored_acs & ieee80211_ac_to_qos_mask[ac]))
    break;
  tid = 7 - 2 * ac;

  ieee80211_send_null_response(sta, tid, reason, 1, 0);
 } else if (!driver_release_tids) {
  struct sk_buff_head pending;
  struct sk_buff *skb;
  int num = 0;
  u16 tids = 0;
  bool need_null = 0;

  skb_queue_head_init(&pending);

  while ((skb = __skb_dequeue(&frames))) {
   struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
   struct ieee80211_hdr *hdr = (void *) skb->data;
   u8 *qoshdr = ((void*)0);

   num++;






   info->flags |= IEEE80211_TX_CTL_NO_PS_BUFFER;
   info->control.flags |= IEEE80211_TX_CTRL_PS_RESPONSE;





   if (more_data || !skb_queue_empty(&frames))
    hdr->frame_control |=
     cpu_to_le16(IEEE80211_FCTL_MOREDATA);
   else
    hdr->frame_control &=
     cpu_to_le16(~IEEE80211_FCTL_MOREDATA);

   if (ieee80211_is_data_qos(hdr->frame_control) ||
       ieee80211_is_qos_nullfunc(hdr->frame_control))
    qoshdr = ieee80211_get_qos_ctl(hdr);

   tids |= BIT(skb->priority);

   __skb_queue_tail(&pending, skb);


   if (!skb_queue_empty(&frames))
    continue;

   if (reason != IEEE80211_FRAME_RELEASE_UAPSD) {

    info->flags |= IEEE80211_TX_STATUS_EOSP |
            IEEE80211_TX_CTL_REQ_TX_STATUS;
    break;
   }
   if (qoshdr) {
    *qoshdr |= IEEE80211_QOS_CTL_EOSP;

    info->flags |= IEEE80211_TX_STATUS_EOSP |
            IEEE80211_TX_CTL_REQ_TX_STATUS;
   } else {
    hdr->frame_control |=
     cpu_to_le16(IEEE80211_FCTL_MOREDATA);
    need_null = 1;
    num++;
   }
   break;
  }

  drv_allow_buffered_frames(local, sta, tids, num,
       reason, more_data);

  ieee80211_add_pending_skbs(local, &pending);

  if (need_null)
   ieee80211_send_null_response(
    sta, find_highest_prio_tid(tids),
    reason, 0, 0);

  sta_info_recalc_tim(sta);
 } else {
  int tid;
  drv_release_buffered_frames(local, sta, driver_release_tids,
         n_frames, reason, more_data);
  if (!sta->sta.txq[0])
   return;

  for (tid = 0; tid < ARRAY_SIZE(sta->sta.txq); tid++) {
   if (!sta->sta.txq[tid] ||
       !(driver_release_tids & BIT(tid)) ||
       txq_has_queue(sta->sta.txq[tid]))
    continue;

   sta_info_recalc_tim(sta);
   break;
  }
 }
}
