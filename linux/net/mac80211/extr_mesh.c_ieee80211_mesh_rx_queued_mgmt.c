
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_3__ {int mesh_id_len; } ;
struct TYPE_4__ {TYPE_1__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_mgmt {int frame_control; } ;


 int IEEE80211_FCTL_STYPE ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;




 int ieee80211_mesh_rx_bcn_presp (struct ieee80211_sub_if_data*,int,struct ieee80211_mgmt*,int ,struct ieee80211_rx_status*) ;
 int ieee80211_mesh_rx_mgmt_action (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,int ,struct ieee80211_rx_status*) ;
 int ieee80211_mesh_rx_probe_req (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,int ) ;
 int le16_to_cpu (int ) ;
 int sdata_lock (struct ieee80211_sub_if_data*) ;
 int sdata_unlock (struct ieee80211_sub_if_data*) ;

void ieee80211_mesh_rx_queued_mgmt(struct ieee80211_sub_if_data *sdata,
       struct sk_buff *skb)
{
 struct ieee80211_rx_status *rx_status;
 struct ieee80211_mgmt *mgmt;
 u16 stype;

 sdata_lock(sdata);


 if (!sdata->u.mesh.mesh_id_len)
  goto out;

 rx_status = IEEE80211_SKB_RXCB(skb);
 mgmt = (struct ieee80211_mgmt *) skb->data;
 stype = le16_to_cpu(mgmt->frame_control) & IEEE80211_FCTL_STYPE;

 switch (stype) {
 case 128:
 case 130:
  ieee80211_mesh_rx_bcn_presp(sdata, stype, mgmt, skb->len,
         rx_status);
  break;
 case 129:
  ieee80211_mesh_rx_probe_req(sdata, mgmt, skb->len);
  break;
 case 131:
  ieee80211_mesh_rx_mgmt_action(sdata, mgmt, skb->len, rx_status);
  break;
 }
out:
 sdata_unlock(sdata);
}
