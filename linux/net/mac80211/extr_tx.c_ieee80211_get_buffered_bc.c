
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {int len; int dev; scalar_t__ data; } ;
struct ps_data {scalar_t__ dtim_count; int bc_buf; int dtim_bc_mc; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_info {int band; } ;
struct ieee80211_tx_data {int flags; } ;
struct TYPE_12__ {scalar_t__ type; int chanctx_conf; } ;
struct TYPE_8__ {struct ps_data ps; } ;
struct TYPE_7__ {struct ps_data ps; int beacon; } ;
struct TYPE_9__ {TYPE_2__ mesh; TYPE_1__ ap; } ;
struct ieee80211_sub_if_data {TYPE_6__ vif; TYPE_3__ u; } ;
struct ieee80211_local {int total_ps_buffered; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_11__ {TYPE_4__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_5__ def; } ;
struct beacon_data {int head; } ;
struct TYPE_10__ {int band; } ;


 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (int ) ;
 int IEEE80211_FCTL_MOREDATA ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_PS_BUFFERED ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int cpu_to_le16 (int ) ;
 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int ieee80211_free_txskb (struct ieee80211_hw*,struct sk_buff*) ;
 int ieee80211_tx_prepare (struct ieee80211_sub_if_data*,struct ieee80211_tx_data*,int *,struct sk_buff*) ;
 scalar_t__ ieee80211_vif_is_mesh (TYPE_6__*) ;
 scalar_t__ invoke_tx_handlers (struct ieee80211_tx_data*) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

struct sk_buff *
ieee80211_get_buffered_bc(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif)
{
 struct ieee80211_local *local = hw_to_local(hw);
 struct sk_buff *skb = ((void*)0);
 struct ieee80211_tx_data tx;
 struct ieee80211_sub_if_data *sdata;
 struct ps_data *ps;
 struct ieee80211_tx_info *info;
 struct ieee80211_chanctx_conf *chanctx_conf;

 sdata = vif_to_sdata(vif);

 rcu_read_lock();
 chanctx_conf = rcu_dereference(sdata->vif.chanctx_conf);

 if (!chanctx_conf)
  goto out;

 if (sdata->vif.type == NL80211_IFTYPE_AP) {
  struct beacon_data *beacon =
    rcu_dereference(sdata->u.ap.beacon);

  if (!beacon || !beacon->head)
   goto out;

  ps = &sdata->u.ap.ps;
 } else if (ieee80211_vif_is_mesh(&sdata->vif)) {
  ps = &sdata->u.mesh.ps;
 } else {
  goto out;
 }

 if (ps->dtim_count != 0 || !ps->dtim_bc_mc)
  goto out;

 while (1) {
  skb = skb_dequeue(&ps->bc_buf);
  if (!skb)
   goto out;
  local->total_ps_buffered--;

  if (!skb_queue_empty(&ps->bc_buf) && skb->len >= 2) {
   struct ieee80211_hdr *hdr =
    (struct ieee80211_hdr *) skb->data;



   hdr->frame_control |=
    cpu_to_le16(IEEE80211_FCTL_MOREDATA);
  }

  if (sdata->vif.type == NL80211_IFTYPE_AP)
   sdata = IEEE80211_DEV_TO_SUB_IF(skb->dev);
  if (!ieee80211_tx_prepare(sdata, &tx, ((void*)0), skb))
   break;
  ieee80211_free_txskb(hw, skb);
 }

 info = IEEE80211_SKB_CB(skb);

 tx.flags |= IEEE80211_TX_PS_BUFFERED;
 info->band = chanctx_conf->def.chan->band;

 if (invoke_tx_handlers(&tx))
  skb = ((void*)0);
 out:
 rcu_read_unlock();

 return skb;
}
