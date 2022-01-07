
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


typedef int u8 ;
struct ieee80211_tx_queue_params {int mu_edca; int aifs; int acm; int uapsd; int txop; void* cw_max; void* cw_min; int mu_edca_param_rec; } ;
struct TYPE_8__ {int qos; } ;
struct TYPE_9__ {TYPE_2__ bss_conf; } ;
struct ieee80211_if_managed {int flags; int uapsd_queues; int wmm_last_param_set; int mu_edca_last_param_set; TYPE_1__* tx_tspec; } ;
struct TYPE_10__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int wmm_acm; TYPE_3__ vif; struct ieee80211_tx_queue_params* tx_conf; TYPE_4__ u; } ;
struct ieee80211_mu_edca_param_set {int mu_qos_info; int ac_be; int ac_vo; int ac_vi; int ac_bk; } ;
struct TYPE_12__ {int queues; } ;
struct ieee80211_local {TYPE_6__ hw; TYPE_5__* ops; } ;
typedef int params ;
struct TYPE_11__ {int conf_tx; } ;
struct TYPE_7__ {int downgraded; } ;


 int BIT (int) ;
 int IEEE80211_AC_BE ;
 int IEEE80211_AC_BK ;
 int IEEE80211_AC_VI ;
 int IEEE80211_AC_VO ;
 int IEEE80211_NUM_ACS ;
 int IEEE80211_STA_UAPSD_ENABLED ;
 int IEEE80211_WMM_IE_STA_QOSINFO_AC_BE ;
 int IEEE80211_WMM_IE_STA_QOSINFO_AC_BK ;
 int IEEE80211_WMM_IE_STA_QOSINFO_AC_VI ;
 int IEEE80211_WMM_IE_STA_QOSINFO_AC_VO ;
 scalar_t__ drv_conf_tx (struct ieee80211_local*,struct ieee80211_sub_if_data*,int,struct ieee80211_tx_queue_params*) ;
 void* ecw2cw (int const) ;
 int get_unaligned_le16 (int const*) ;
 int ieee80211_regulatory_limit_wmm_params (struct ieee80211_sub_if_data*,struct ieee80211_tx_queue_params*,int) ;
 int memset (struct ieee80211_tx_queue_params**,int ,int) ;
 int mlme_dbg (struct ieee80211_sub_if_data*,char*,int,int,int,void*,void*,int ,int,int ) ;
 int sdata_err (struct ieee80211_sub_if_data*,char*,int) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,int,...) ;

__attribute__((used)) static bool
ieee80211_sta_wmm_params(struct ieee80211_local *local,
    struct ieee80211_sub_if_data *sdata,
    const u8 *wmm_param, size_t wmm_param_len,
    const struct ieee80211_mu_edca_param_set *mu_edca)
{
 struct ieee80211_tx_queue_params params[IEEE80211_NUM_ACS];
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 size_t left;
 int count, mu_edca_count, ac;
 const u8 *pos;
 u8 uapsd_queues = 0;

 if (!local->ops->conf_tx)
  return 0;

 if (local->hw.queues < IEEE80211_NUM_ACS)
  return 0;

 if (!wmm_param)
  return 0;

 if (wmm_param_len < 8 || wmm_param[5] != 1)
  return 0;

 if (ifmgd->flags & IEEE80211_STA_UAPSD_ENABLED)
  uapsd_queues = ifmgd->uapsd_queues;

 count = wmm_param[6] & 0x0f;




 mu_edca_count = mu_edca ? mu_edca->mu_qos_info & 0x0f : -1;
 if (count == ifmgd->wmm_last_param_set &&
     mu_edca_count == ifmgd->mu_edca_last_param_set)
  return 0;
 ifmgd->wmm_last_param_set = count;
 ifmgd->mu_edca_last_param_set = mu_edca_count;

 pos = wmm_param + 8;
 left = wmm_param_len - 8;

 memset(&params, 0, sizeof(params));

 sdata->wmm_acm = 0;
 for (; left >= 4; left -= 4, pos += 4) {
  int aci = (pos[0] >> 5) & 0x03;
  int acm = (pos[0] >> 4) & 0x01;
  bool uapsd = 0;

  switch (aci) {
  case 1:
   ac = IEEE80211_AC_BK;
   if (acm)
    sdata->wmm_acm |= BIT(1) | BIT(2);
   if (uapsd_queues & IEEE80211_WMM_IE_STA_QOSINFO_AC_BK)
    uapsd = 1;
   params[ac].mu_edca = !!mu_edca;
   if (mu_edca)
    params[ac].mu_edca_param_rec = mu_edca->ac_bk;
   break;
  case 2:
   ac = IEEE80211_AC_VI;
   if (acm)
    sdata->wmm_acm |= BIT(4) | BIT(5);
   if (uapsd_queues & IEEE80211_WMM_IE_STA_QOSINFO_AC_VI)
    uapsd = 1;
   params[ac].mu_edca = !!mu_edca;
   if (mu_edca)
    params[ac].mu_edca_param_rec = mu_edca->ac_vi;
   break;
  case 3:
   ac = IEEE80211_AC_VO;
   if (acm)
    sdata->wmm_acm |= BIT(6) | BIT(7);
   if (uapsd_queues & IEEE80211_WMM_IE_STA_QOSINFO_AC_VO)
    uapsd = 1;
   params[ac].mu_edca = !!mu_edca;
   if (mu_edca)
    params[ac].mu_edca_param_rec = mu_edca->ac_vo;
   break;
  case 0:
  default:
   ac = IEEE80211_AC_BE;
   if (acm)
    sdata->wmm_acm |= BIT(0) | BIT(3);
   if (uapsd_queues & IEEE80211_WMM_IE_STA_QOSINFO_AC_BE)
    uapsd = 1;
   params[ac].mu_edca = !!mu_edca;
   if (mu_edca)
    params[ac].mu_edca_param_rec = mu_edca->ac_be;
   break;
  }

  params[ac].aifs = pos[0] & 0x0f;

  if (params[ac].aifs < 2) {
   sdata_info(sdata,
       "AP has invalid WMM params (AIFSN=%d for ACI %d), will use 2\n",
       params[ac].aifs, aci);
   params[ac].aifs = 2;
  }
  params[ac].cw_max = ecw2cw((pos[1] & 0xf0) >> 4);
  params[ac].cw_min = ecw2cw(pos[1] & 0x0f);
  params[ac].txop = get_unaligned_le16(pos + 2);
  params[ac].acm = acm;
  params[ac].uapsd = uapsd;

  if (params[ac].cw_min == 0 ||
      params[ac].cw_min > params[ac].cw_max) {
   sdata_info(sdata,
       "AP has invalid WMM params (CWmin/max=%d/%d for ACI %d), using defaults\n",
       params[ac].cw_min, params[ac].cw_max, aci);
   return 0;
  }
  ieee80211_regulatory_limit_wmm_params(sdata, &params[ac], ac);
 }


 for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
  if (params[ac].cw_min == 0) {
   sdata_info(sdata,
       "AP has invalid WMM params (missing AC %d), using defaults\n",
       ac);
   return 0;
  }
 }

 for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
  mlme_dbg(sdata,
    "WMM AC=%d acm=%d aifs=%d cWmin=%d cWmax=%d txop=%d uapsd=%d, downgraded=%d\n",
    ac, params[ac].acm,
    params[ac].aifs, params[ac].cw_min, params[ac].cw_max,
    params[ac].txop, params[ac].uapsd,
    ifmgd->tx_tspec[ac].downgraded);
  sdata->tx_conf[ac] = params[ac];
  if (!ifmgd->tx_tspec[ac].downgraded &&
      drv_conf_tx(local, sdata, ac, &params[ac]))
   sdata_err(sdata,
      "failed to set TX queue parameters for AC %d\n",
      ac);
 }


 sdata->vif.bss_conf.qos = 1;
 return 1;
}
