
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_wmm_param_ie {int len; int* oui; int oui_type; int oui_subtype; int version; TYPE_1__* ac; scalar_t__ qos_info; int element_id; } ;
struct ieee80211_tx_queue_params {int txop; int cw_max; int cw_min; int acm; int aifs; } ;
struct ieee80211_sub_if_data {struct ieee80211_tx_queue_params* tx_conf; } ;
struct TYPE_2__ {int txop_limit; int cw; int aci_aifsn; } ;


 int IEEE80211_NUM_ACS ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int cpu_to_le16 (int ) ;
 size_t ieee80211_ac_from_wmm (int) ;
 int ieee80211_wmm_aci_aifsn (int ,int ,int) ;
 int ieee80211_wmm_ecw (int ,int ) ;
 struct ieee80211_wmm_param_ie* skb_put_zero (struct sk_buff*,int) ;

__attribute__((used)) static void ieee80211_tdls_add_wmm_param_ie(struct ieee80211_sub_if_data *sdata,
         struct sk_buff *skb)
{
 struct ieee80211_wmm_param_ie *wmm;
 struct ieee80211_tx_queue_params *txq;
 int i;

 wmm = skb_put_zero(skb, sizeof(*wmm));

 wmm->element_id = WLAN_EID_VENDOR_SPECIFIC;
 wmm->len = sizeof(*wmm) - 2;

 wmm->oui[0] = 0x00;
 wmm->oui[1] = 0x50;
 wmm->oui[2] = 0xf2;
 wmm->oui_type = 2;
 wmm->oui_subtype = 1;
 wmm->version = 1;
 wmm->qos_info = 0;





 for (i = 0; i < IEEE80211_NUM_ACS; i++) {
  txq = &sdata->tx_conf[ieee80211_ac_from_wmm(i)];
  wmm->ac[i].aci_aifsn = ieee80211_wmm_aci_aifsn(txq->aifs,
              txq->acm, i);
  wmm->ac[i].cw = ieee80211_wmm_ecw(txq->cw_min, txq->cw_max);
  wmm->ac[i].txop_limit = cpu_to_le16(txq->txop);
 }
}
