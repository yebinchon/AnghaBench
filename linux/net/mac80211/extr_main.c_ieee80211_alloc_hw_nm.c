
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int flags; int features; int bss_priv_size; int extended_capabilities_len; int * extended_capabilities_mask; int * extended_capabilities; int * vht_capa_mod_mask; int * ht_capa_mod_mask; int retry_short; int retry_long; int privid; int mgmt_stypes; } ;
struct ieee80211_ops {scalar_t__ wake_tx_queue; int set_key; int hw_scan; scalar_t__ remain_on_channel; int unassign_vif_chanctx; int assign_vif_chanctx; int change_chanctx; int remove_chanctx; int add_chanctx; scalar_t__ sta_remove; scalar_t__ sta_add; scalar_t__ sta_state; int configure_filter; int remove_interface; int add_interface; int config; int stop; int start; int tx; } ;
struct TYPE_4__ {int units_pos; int accuracy; } ;
struct TYPE_3__ {int short_frame_max_tx_count; int long_frame_max_tx_count; } ;
struct ieee80211_hw {char* priv; int tx_sk_pacing_shift; int queues; int max_rates; int radiotap_mcs_details; int radiotap_vht_details; TYPE_2__ radiotap_timestamp; int max_mtu; int uapsd_max_sp_len; int uapsd_queues; TYPE_1__ conf; int offchannel_tx_hw_queue; void* max_tx_aggregation_subframes; void* max_rx_aggregation_subframes; scalar_t__ max_report_rates; struct wiphy* wiphy; } ;
struct ieee80211_local {int use_chanctx; int airtime_flags; struct ieee80211_hw hw; int skb_queue_tdls_chsw; int skb_queue_unreliable; int skb_queue; int tasklet; int wake_txqs_tasklet; int tx_pending_tasklet; int * agg_queue_stop; int * pending; int ack_status_frames; int ack_status_lock; int tdls_chsw_work; int sched_scan_stopped_work; int dynamic_ps_timer; int dynamic_ps_disable_work; int dynamic_ps_enable_work; int smps_mode; int reconfig_filter; int radar_detected_work; int restart_work; int scan_work; int chanctx_mtx; int chanctx_list; int * active_txq_lock; int * active_txqs; int queue_stop_reason_lock; int rx_path_lock; int filter_lock; int key_mtx; int mtx; int iflist_mtx; int mc_list; int mon_list; int interfaces; int * ext_capa; int user_power_level; struct ieee80211_ops const* ops; } ;
struct ieee80211_bss {int dummy; } ;


 int AIRTIME_USE_RX ;
 int AIRTIME_USE_TX ;
 int ALIGN (int,int ) ;
 int ARRAY_SIZE (int *) ;
 int IEEE80211_DEFAULT_MAX_SP_LEN ;
 int IEEE80211_DEFAULT_UAPSD_QUEUES ;
 int IEEE80211_INVAL_HW_QUEUE ;
 void* IEEE80211_MAX_AMPDU_BUF_HT ;
 int IEEE80211_MAX_DATA_LEN ;
 int IEEE80211_MAX_QUEUES ;
 int IEEE80211_NUM_ACS ;
 int IEEE80211_RADIOTAP_MCS_HAVE_BW ;
 int IEEE80211_RADIOTAP_MCS_HAVE_GI ;
 int IEEE80211_RADIOTAP_MCS_HAVE_MCS ;
 int IEEE80211_RADIOTAP_VHT_KNOWN_BANDWIDTH ;
 int IEEE80211_RADIOTAP_VHT_KNOWN_GI ;
 int IEEE80211_SMPS_OFF ;
 int IEEE80211_UNSET_POWER_LEVEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NETDEV_ALIGN ;
 int NL80211_EXT_FEATURE_CONTROL_PORT_OVER_NL80211 ;
 int NL80211_EXT_FEATURE_FILS_STA ;
 int NL80211_EXT_FEATURE_RRM ;
 int NL80211_EXT_FEATURE_SCAN_MIN_PREQ_CONTENT ;
 int NL80211_EXT_FEATURE_SCAN_RANDOM_SN ;
 int NL80211_EXT_FEATURE_TXQS ;
 int NL80211_FEATURE_AP_SCAN ;
 int NL80211_FEATURE_FULL_AP_CLIENT_STATE ;
 int NL80211_FEATURE_HT_IBSS ;
 int NL80211_FEATURE_LOW_PRIORITY_SCAN ;
 int NL80211_FEATURE_MAC_ON_CREATE ;
 int NL80211_FEATURE_SAE ;
 int NL80211_FEATURE_SK_TX_STATUS ;
 int NL80211_FEATURE_USERSPACE_MPM ;
 int NL80211_FEATURE_VIF_TXPOWER ;
 scalar_t__ WARN_ON (int) ;
 int WIPHY_FLAG_4ADDR_AP ;
 int WIPHY_FLAG_4ADDR_STATION ;
 int WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL ;
 int WIPHY_FLAG_IBSS_RSN ;
 int WIPHY_FLAG_NETNS_OK ;
 int WIPHY_FLAG_OFFCHAN_TX ;
 int WIPHY_FLAG_REPORTS_OBSS ;
 int WLAN_EXT_CAPA8_OPMODE_NOTIF ;
 int __hw_addr_init (int *) ;
 int atomic_set (int *,int ) ;
 int idr_init (int *) ;
 int ieee80211_alloc_led_names (struct ieee80211_local*) ;
 int ieee80211_default_mgmt_stypes ;
 int ieee80211_dfs_radar_detected_work ;
 int ieee80211_dynamic_ps_disable_work ;
 int ieee80211_dynamic_ps_enable_work ;
 int ieee80211_dynamic_ps_timer ;
 int ieee80211_reconfig_filter ;
 int ieee80211_restart_work ;
 int ieee80211_roc_setup (struct ieee80211_local*) ;
 int ieee80211_scan_work ;
 int ieee80211_sched_scan_stopped_work ;
 int ieee80211_tasklet_handler ;
 int ieee80211_tdls_chsw_work ;
 int ieee80211_tx_pending ;
 int ieee80211_wake_txqs ;
 int mac80211_config_ops ;
 int mac80211_ht_capa_mod_mask ;
 int mac80211_vht_capa_mod_mask ;
 int mac80211_wiphy_privid ;
 int mutex_init (int *) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 scalar_t__ sta_info_init (struct ieee80211_local*) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int timer_setup (int *,int ,int ) ;
 int wiphy_ext_feature_set (struct wiphy*,int ) ;
 int wiphy_free (struct wiphy*) ;
 struct wiphy* wiphy_new_nm (int *,int,char const*) ;
 struct ieee80211_local* wiphy_priv (struct wiphy*) ;

struct ieee80211_hw *ieee80211_alloc_hw_nm(size_t priv_data_len,
        const struct ieee80211_ops *ops,
        const char *requested_name)
{
 struct ieee80211_local *local;
 int priv_size, i;
 struct wiphy *wiphy;
 bool use_chanctx;

 if (WARN_ON(!ops->tx || !ops->start || !ops->stop || !ops->config ||
      !ops->add_interface || !ops->remove_interface ||
      !ops->configure_filter))
  return ((void*)0);

 if (WARN_ON(ops->sta_state && (ops->sta_add || ops->sta_remove)))
  return ((void*)0);


 i = !!ops->add_chanctx + !!ops->remove_chanctx +
     !!ops->change_chanctx + !!ops->assign_vif_chanctx +
     !!ops->unassign_vif_chanctx;
 if (WARN_ON(i != 0 && i != 5))
  return ((void*)0);
 use_chanctx = i == 5;
 priv_size = ALIGN(sizeof(*local), NETDEV_ALIGN) + priv_data_len;

 wiphy = wiphy_new_nm(&mac80211_config_ops, priv_size, requested_name);

 if (!wiphy)
  return ((void*)0);

 wiphy->mgmt_stypes = ieee80211_default_mgmt_stypes;

 wiphy->privid = mac80211_wiphy_privid;

 wiphy->flags |= WIPHY_FLAG_NETNS_OK |
   WIPHY_FLAG_4ADDR_AP |
   WIPHY_FLAG_4ADDR_STATION |
   WIPHY_FLAG_REPORTS_OBSS |
   WIPHY_FLAG_OFFCHAN_TX;

 if (ops->remain_on_channel)
  wiphy->flags |= WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL;

 wiphy->features |= NL80211_FEATURE_SK_TX_STATUS |
      NL80211_FEATURE_SAE |
      NL80211_FEATURE_HT_IBSS |
      NL80211_FEATURE_VIF_TXPOWER |
      NL80211_FEATURE_MAC_ON_CREATE |
      NL80211_FEATURE_USERSPACE_MPM |
      NL80211_FEATURE_FULL_AP_CLIENT_STATE;
 wiphy_ext_feature_set(wiphy, NL80211_EXT_FEATURE_FILS_STA);
 wiphy_ext_feature_set(wiphy,
         NL80211_EXT_FEATURE_CONTROL_PORT_OVER_NL80211);

 if (!ops->hw_scan) {
  wiphy->features |= NL80211_FEATURE_LOW_PRIORITY_SCAN |
       NL80211_FEATURE_AP_SCAN;





  wiphy_ext_feature_set(wiphy,
          NL80211_EXT_FEATURE_SCAN_RANDOM_SN);
  wiphy_ext_feature_set(wiphy,
          NL80211_EXT_FEATURE_SCAN_MIN_PREQ_CONTENT);
 }

 if (!ops->set_key)
  wiphy->flags |= WIPHY_FLAG_IBSS_RSN;

 if (ops->wake_tx_queue)
  wiphy_ext_feature_set(wiphy, NL80211_EXT_FEATURE_TXQS);

 wiphy_ext_feature_set(wiphy, NL80211_EXT_FEATURE_RRM);

 wiphy->bss_priv_size = sizeof(struct ieee80211_bss);

 local = wiphy_priv(wiphy);

 if (sta_info_init(local))
  goto err_free;

 local->hw.wiphy = wiphy;

 local->hw.priv = (char *)local + ALIGN(sizeof(*local), NETDEV_ALIGN);

 local->ops = ops;
 local->use_chanctx = use_chanctx;
 local->hw.tx_sk_pacing_shift = 7;


 local->hw.queues = 1;
 local->hw.max_rates = 1;
 local->hw.max_report_rates = 0;
 local->hw.max_rx_aggregation_subframes = IEEE80211_MAX_AMPDU_BUF_HT;
 local->hw.max_tx_aggregation_subframes = IEEE80211_MAX_AMPDU_BUF_HT;
 local->hw.offchannel_tx_hw_queue = IEEE80211_INVAL_HW_QUEUE;
 local->hw.conf.long_frame_max_tx_count = wiphy->retry_long;
 local->hw.conf.short_frame_max_tx_count = wiphy->retry_short;
 local->hw.radiotap_mcs_details = IEEE80211_RADIOTAP_MCS_HAVE_MCS |
      IEEE80211_RADIOTAP_MCS_HAVE_GI |
      IEEE80211_RADIOTAP_MCS_HAVE_BW;
 local->hw.radiotap_vht_details = IEEE80211_RADIOTAP_VHT_KNOWN_GI |
      IEEE80211_RADIOTAP_VHT_KNOWN_BANDWIDTH;
 local->hw.uapsd_queues = IEEE80211_DEFAULT_UAPSD_QUEUES;
 local->hw.uapsd_max_sp_len = IEEE80211_DEFAULT_MAX_SP_LEN;
 local->hw.max_mtu = IEEE80211_MAX_DATA_LEN;
 local->user_power_level = IEEE80211_UNSET_POWER_LEVEL;
 wiphy->ht_capa_mod_mask = &mac80211_ht_capa_mod_mask;
 wiphy->vht_capa_mod_mask = &mac80211_vht_capa_mod_mask;

 local->ext_capa[7] = WLAN_EXT_CAPA8_OPMODE_NOTIF;

 wiphy->extended_capabilities = local->ext_capa;
 wiphy->extended_capabilities_mask = local->ext_capa;
 wiphy->extended_capabilities_len =
  ARRAY_SIZE(local->ext_capa);

 INIT_LIST_HEAD(&local->interfaces);
 INIT_LIST_HEAD(&local->mon_list);

 __hw_addr_init(&local->mc_list);

 mutex_init(&local->iflist_mtx);
 mutex_init(&local->mtx);

 mutex_init(&local->key_mtx);
 spin_lock_init(&local->filter_lock);
 spin_lock_init(&local->rx_path_lock);
 spin_lock_init(&local->queue_stop_reason_lock);

 for (i = 0; i < IEEE80211_NUM_ACS; i++) {
  INIT_LIST_HEAD(&local->active_txqs[i]);
  spin_lock_init(&local->active_txq_lock[i]);
 }
 local->airtime_flags = AIRTIME_USE_TX | AIRTIME_USE_RX;

 INIT_LIST_HEAD(&local->chanctx_list);
 mutex_init(&local->chanctx_mtx);

 INIT_DELAYED_WORK(&local->scan_work, ieee80211_scan_work);

 INIT_WORK(&local->restart_work, ieee80211_restart_work);

 INIT_WORK(&local->radar_detected_work,
    ieee80211_dfs_radar_detected_work);

 INIT_WORK(&local->reconfig_filter, ieee80211_reconfig_filter);
 local->smps_mode = IEEE80211_SMPS_OFF;

 INIT_WORK(&local->dynamic_ps_enable_work,
    ieee80211_dynamic_ps_enable_work);
 INIT_WORK(&local->dynamic_ps_disable_work,
    ieee80211_dynamic_ps_disable_work);
 timer_setup(&local->dynamic_ps_timer, ieee80211_dynamic_ps_timer, 0);

 INIT_WORK(&local->sched_scan_stopped_work,
    ieee80211_sched_scan_stopped_work);

 INIT_WORK(&local->tdls_chsw_work, ieee80211_tdls_chsw_work);

 spin_lock_init(&local->ack_status_lock);
 idr_init(&local->ack_status_frames);

 for (i = 0; i < IEEE80211_MAX_QUEUES; i++) {
  skb_queue_head_init(&local->pending[i]);
  atomic_set(&local->agg_queue_stop[i], 0);
 }
 tasklet_init(&local->tx_pending_tasklet, ieee80211_tx_pending,
       (unsigned long)local);

 if (ops->wake_tx_queue)
  tasklet_init(&local->wake_txqs_tasklet, ieee80211_wake_txqs,
        (unsigned long)local);

 tasklet_init(&local->tasklet,
       ieee80211_tasklet_handler,
       (unsigned long) local);

 skb_queue_head_init(&local->skb_queue);
 skb_queue_head_init(&local->skb_queue_unreliable);
 skb_queue_head_init(&local->skb_queue_tdls_chsw);

 ieee80211_alloc_led_names(local);

 ieee80211_roc_setup(local);

 local->hw.radiotap_timestamp.units_pos = -1;
 local->hw.radiotap_timestamp.accuracy = -1;

 return &local->hw;
 err_free:
 wiphy_free(wiphy);
 return ((void*)0);
}
