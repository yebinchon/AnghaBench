
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct wiphy_iftype_ext_capab {int iftype; int extended_capabilities_len; struct nl80211_vendor_cmd_info const* extended_capabilities_mask; struct nl80211_vendor_cmd_info const* extended_capabilities; } ;
struct sk_buff {int dummy; } ;
typedef void nlattr ;
struct nl80211_vendor_cmd_info {int dummy; } ;
struct nl80211_dump_wiphy_state {int split_start; int band_start; int chan_start; int capa_start; int split; } ;
struct ieee80211_txrx_stypes {int dummy; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_txq_stats {int dummy; } ;
struct TYPE_11__ {int frag_threshold; int rts_threshold; int max_sched_scan_plans; int max_sched_scan_plan_interval; int max_sched_scan_plan_iterations; int flags; int n_cipher_suites; int available_antennas_tx; int available_antennas_rx; int probe_resp_offload; int features; int max_remain_on_channel_duration; int ap_sme_capa; int max_acl_mac_addrs; int extended_capabilities_len; int n_addresses; int max_ap_assoc_sta; int n_vendor_commands; int n_vendor_events; int regulatory_flags; int max_sched_scan_reqs; int bss_select_support; int num_iftype_ext_capab; int nan_supported_bands; int txq_limit; int txq_memory_limit; int txq_quantum; int n_akm_suites; struct nl80211_vendor_cmd_info const* akm_suites; struct wiphy_iftype_ext_capab* iftype_ext_capab; struct nl80211_vendor_cmd_info const* ext_features; int max_num_csa_counters; struct nl80211_vendor_cmd_info* vendor_events; TYPE_3__* vendor_commands; TYPE_2__* addresses; struct nl80211_vendor_cmd_info const* addr_mask; struct nl80211_vendor_cmd_info const* perm_addr; struct nl80211_vendor_cmd_info const* vht_capa_mod_mask; struct nl80211_vendor_cmd_info const* extended_capabilities_mask; struct nl80211_vendor_cmd_info const* extended_capabilities; struct nl80211_vendor_cmd_info const* ht_capa_mod_mask; int software_iftypes; struct ieee80211_supported_band** bands; int interface_modes; int max_num_pmkids; struct nl80211_vendor_cmd_info const* cipher_suites; int max_match_sets; int max_sched_scan_ie_len; int max_scan_ie_len; int max_sched_scan_ssids; int max_scan_ssids; int coverage_class; int retry_long; int retry_short; struct ieee80211_txrx_stypes* mgmt_stypes; } ;
struct cfg80211_registered_device {int wiphy_idx; TYPE_4__ wiphy; TYPE_1__* ops; } ;
typedef enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_10__ {struct nl80211_vendor_cmd_info info; } ;
struct TYPE_9__ {struct nl80211_vendor_cmd_info const* addr; } ;
struct TYPE_8__ {int remain_on_channel; int get_antenna; } ;


 int ADD_TX_TS ;
 int CHANNEL_SWITCH ;
 int CMD (int ,int ) ;
 int CRIT_PROTOCOL_START ;
 int CRIT_PROTOCOL_STOP ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ETH_ALEN ;
 int NL80211_ATTR_AKM_SUITES ;
 int NL80211_ATTR_BANDS ;
 int NL80211_ATTR_BSS_SELECT ;
 int NL80211_ATTR_CIPHER_SUITES ;
 int NL80211_ATTR_CONTROL_PORT_ETHERTYPE ;
 int NL80211_ATTR_DEVICE_AP_SME ;
 int NL80211_ATTR_EXT_CAPA ;
 int NL80211_ATTR_EXT_CAPA_MASK ;
 int NL80211_ATTR_EXT_FEATURES ;
 int NL80211_ATTR_FEATURE_FLAGS ;
 int NL80211_ATTR_GENERATION ;
 int NL80211_ATTR_HT_CAPABILITY_MASK ;
 int NL80211_ATTR_IFTYPE ;
 int NL80211_ATTR_IFTYPE_EXT_CAPA ;
 int NL80211_ATTR_MAC ;
 int NL80211_ATTR_MAC_ACL_MAX ;
 int NL80211_ATTR_MAC_ADDRS ;
 int NL80211_ATTR_MAC_MASK ;
 int NL80211_ATTR_MAX_AP_ASSOC_STA ;
 int NL80211_ATTR_MAX_CSA_COUNTERS ;
 int NL80211_ATTR_MAX_MATCH_SETS ;
 int NL80211_ATTR_MAX_NUM_PMKIDS ;
 int NL80211_ATTR_MAX_NUM_SCAN_SSIDS ;
 int NL80211_ATTR_MAX_NUM_SCHED_SCAN_PLANS ;
 int NL80211_ATTR_MAX_NUM_SCHED_SCAN_SSIDS ;
 int NL80211_ATTR_MAX_REMAIN_ON_CHANNEL_DURATION ;
 int NL80211_ATTR_MAX_SCAN_IE_LEN ;
 int NL80211_ATTR_MAX_SCAN_PLAN_INTERVAL ;
 int NL80211_ATTR_MAX_SCAN_PLAN_ITERATIONS ;
 int NL80211_ATTR_MAX_SCHED_SCAN_IE_LEN ;
 int NL80211_ATTR_OFFCHANNEL_TX_OK ;
 int NL80211_ATTR_PROBE_RESP_OFFLOAD ;
 int NL80211_ATTR_ROAM_SUPPORT ;
 int NL80211_ATTR_SCHED_SCAN_MAX_REQS ;
 int NL80211_ATTR_SOFTWARE_IFTYPES ;
 int NL80211_ATTR_SUPPORTED_COMMANDS ;
 int NL80211_ATTR_SUPPORTED_IFTYPES ;
 int NL80211_ATTR_SUPPORT_10_MHZ ;
 int NL80211_ATTR_SUPPORT_5_MHZ ;
 int NL80211_ATTR_SUPPORT_AP_UAPSD ;
 int NL80211_ATTR_SUPPORT_IBSS_RSN ;
 int NL80211_ATTR_SUPPORT_MESH_AUTH ;
 int NL80211_ATTR_TDLS_EXTERNAL_SETUP ;
 int NL80211_ATTR_TDLS_SUPPORT ;
 int NL80211_ATTR_TXQ_LIMIT ;
 int NL80211_ATTR_TXQ_MEMORY_LIMIT ;
 int NL80211_ATTR_TXQ_QUANTUM ;
 int NL80211_ATTR_TXQ_STATS ;
 int NL80211_ATTR_VENDOR_DATA ;
 int NL80211_ATTR_VENDOR_EVENTS ;
 int NL80211_ATTR_VHT_CAPABILITY_MASK ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_ATTR_WIPHY_ANTENNA_AVAIL_RX ;
 int NL80211_ATTR_WIPHY_ANTENNA_AVAIL_TX ;
 int NL80211_ATTR_WIPHY_ANTENNA_RX ;
 int NL80211_ATTR_WIPHY_ANTENNA_TX ;
 int NL80211_ATTR_WIPHY_BANDS ;
 int NL80211_ATTR_WIPHY_COVERAGE_CLASS ;
 int NL80211_ATTR_WIPHY_FRAG_THRESHOLD ;
 int NL80211_ATTR_WIPHY_NAME ;
 int NL80211_ATTR_WIPHY_RETRY_LONG ;
 int NL80211_ATTR_WIPHY_RETRY_SHORT ;
 int NL80211_ATTR_WIPHY_RTS_THRESHOLD ;
 int NL80211_ATTR_WIPHY_SELF_MANAGED_REG ;
 int NL80211_BAND_ATTR_FREQS ;
 int NL80211_CMD_NEW_WIPHY ;
 int NL80211_EXT_FEATURE_TXQS ;
 int NL80211_FEATURE_ADVERTISE_CHAN_LIMITS ;
 int NL80211_FEATURE_SUPPORTS_WMM_ADMISSION ;
 int NUM_NL80211_BANDS ;
 int REGULATORY_WIPHY_SELF_MANAGED ;
 int SET_MULTICAST_TO_UNICAST ;
 int SET_QOS_MAP ;
 int UPDATE_CONNECT_PARAMS ;
 int UPDATE_FT_IES ;
 scalar_t__ WARN_ON (int) ;
 int WIPHY_FLAG_AP_PROBE_RESP_OFFLOAD ;
 int WIPHY_FLAG_AP_UAPSD ;
 int WIPHY_FLAG_CONTROL_PORT_PROTOCOL ;
 int WIPHY_FLAG_HAS_CHANNEL_SWITCH ;
 int WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL ;
 int WIPHY_FLAG_HAVE_AP_SME ;
 int WIPHY_FLAG_IBSS_RSN ;
 int WIPHY_FLAG_MESH_AUTH ;
 int WIPHY_FLAG_OFFCHAN_TX ;
 int WIPHY_FLAG_SUPPORTS_5_10_MHZ ;
 int WIPHY_FLAG_SUPPORTS_FW_ROAM ;
 int WIPHY_FLAG_SUPPORTS_TDLS ;
 int WIPHY_FLAG_TDLS_EXTERNAL_SETUP ;
 int add_tx_ts ;
 int cfg80211_rdev_list_generation ;
 int channel_switch ;
 int crit_proto_start ;
 int crit_proto_stop ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int is_zero_ether_addr (struct nl80211_vendor_cmd_info const*) ;
 int nl80211_add_commands_unsplit (struct cfg80211_registered_device*,struct sk_buff*) ;
 int nl80211_msg_put_channel (struct sk_buff*,TYPE_4__*,struct ieee80211_channel*,int ) ;
 int nl80211_put_iface_combinations (TYPE_4__*,struct sk_buff*,int ) ;
 int nl80211_put_iftypes (struct sk_buff*,int ,int ) ;
 int nl80211_put_txq_stats (struct sk_buff*,struct cfg80211_txq_stats*,int ) ;
 int nl80211_send_band_rateinfo (struct sk_buff*,struct ieee80211_supported_band*) ;
 int nl80211_send_coalesce (struct sk_buff*,struct cfg80211_registered_device*) ;
 int nl80211_send_mgmt_stypes (struct sk_buff*,struct ieee80211_txrx_stypes const*) ;
 int nl80211_send_pmsr_capa (struct cfg80211_registered_device*,struct sk_buff*) ;
 int nl80211_send_wowlan (struct sk_buff*,struct cfg80211_registered_device*,int ) ;
 void* nl80211hdr_put (struct sk_buff*,int,int,int,int) ;
 int nla_nest_end (struct sk_buff*,void*) ;
 void* nla_nest_start (struct sk_buff*,int ) ;
 void* nla_nest_start_noflag (struct sk_buff*,int) ;
 int nla_put (struct sk_buff*,int,int,struct nl80211_vendor_cmd_info const*) ;
 int nla_put_flag (struct sk_buff*,int) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 int nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 int nla_put_u8 (struct sk_buff*,int ,int ) ;
 int rdev_get_antenna (struct cfg80211_registered_device*,int*,int*) ;
 int rdev_get_txq_stats (struct cfg80211_registered_device*,int *,struct cfg80211_txq_stats*) ;
 int set_multicast_to_unicast ;
 int set_qos_map ;
 int update_connect_params ;
 int update_ft_ies ;
 int wiphy_ext_feature_isset (TYPE_4__*,int ) ;
 int wiphy_name (TYPE_4__*) ;

__attribute__((used)) static int nl80211_send_wiphy(struct cfg80211_registered_device *rdev,
         enum nl80211_commands cmd,
         struct sk_buff *msg, u32 portid, u32 seq,
         int flags, struct nl80211_dump_wiphy_state *state)
{
 void *hdr;
 struct nlattr *nl_bands, *nl_band;
 struct nlattr *nl_freqs, *nl_freq;
 struct nlattr *nl_cmds;
 enum nl80211_band band;
 struct ieee80211_channel *chan;
 int i;
 const struct ieee80211_txrx_stypes *mgmt_stypes =
    rdev->wiphy.mgmt_stypes;
 u32 features;

 hdr = nl80211hdr_put(msg, portid, seq, flags, cmd);
 if (!hdr)
  return -ENOBUFS;

 if (WARN_ON(!state))
  return -EINVAL;

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_string(msg, NL80211_ATTR_WIPHY_NAME,
      wiphy_name(&rdev->wiphy)) ||
     nla_put_u32(msg, NL80211_ATTR_GENERATION,
   cfg80211_rdev_list_generation))
  goto nla_put_failure;

 if (cmd != NL80211_CMD_NEW_WIPHY)
  goto finish;

 switch (state->split_start) {
 case 0:
  if (nla_put_u8(msg, NL80211_ATTR_WIPHY_RETRY_SHORT,
          rdev->wiphy.retry_short) ||
      nla_put_u8(msg, NL80211_ATTR_WIPHY_RETRY_LONG,
          rdev->wiphy.retry_long) ||
      nla_put_u32(msg, NL80211_ATTR_WIPHY_FRAG_THRESHOLD,
    rdev->wiphy.frag_threshold) ||
      nla_put_u32(msg, NL80211_ATTR_WIPHY_RTS_THRESHOLD,
    rdev->wiphy.rts_threshold) ||
      nla_put_u8(msg, NL80211_ATTR_WIPHY_COVERAGE_CLASS,
          rdev->wiphy.coverage_class) ||
      nla_put_u8(msg, NL80211_ATTR_MAX_NUM_SCAN_SSIDS,
          rdev->wiphy.max_scan_ssids) ||
      nla_put_u8(msg, NL80211_ATTR_MAX_NUM_SCHED_SCAN_SSIDS,
          rdev->wiphy.max_sched_scan_ssids) ||
      nla_put_u16(msg, NL80211_ATTR_MAX_SCAN_IE_LEN,
    rdev->wiphy.max_scan_ie_len) ||
      nla_put_u16(msg, NL80211_ATTR_MAX_SCHED_SCAN_IE_LEN,
    rdev->wiphy.max_sched_scan_ie_len) ||
      nla_put_u8(msg, NL80211_ATTR_MAX_MATCH_SETS,
          rdev->wiphy.max_match_sets) ||
      nla_put_u32(msg, NL80211_ATTR_MAX_NUM_SCHED_SCAN_PLANS,
    rdev->wiphy.max_sched_scan_plans) ||
      nla_put_u32(msg, NL80211_ATTR_MAX_SCAN_PLAN_INTERVAL,
    rdev->wiphy.max_sched_scan_plan_interval) ||
      nla_put_u32(msg, NL80211_ATTR_MAX_SCAN_PLAN_ITERATIONS,
    rdev->wiphy.max_sched_scan_plan_iterations))
   goto nla_put_failure;

  if ((rdev->wiphy.flags & WIPHY_FLAG_IBSS_RSN) &&
      nla_put_flag(msg, NL80211_ATTR_SUPPORT_IBSS_RSN))
   goto nla_put_failure;
  if ((rdev->wiphy.flags & WIPHY_FLAG_MESH_AUTH) &&
      nla_put_flag(msg, NL80211_ATTR_SUPPORT_MESH_AUTH))
   goto nla_put_failure;
  if ((rdev->wiphy.flags & WIPHY_FLAG_AP_UAPSD) &&
      nla_put_flag(msg, NL80211_ATTR_SUPPORT_AP_UAPSD))
   goto nla_put_failure;
  if ((rdev->wiphy.flags & WIPHY_FLAG_SUPPORTS_FW_ROAM) &&
      nla_put_flag(msg, NL80211_ATTR_ROAM_SUPPORT))
   goto nla_put_failure;
  if ((rdev->wiphy.flags & WIPHY_FLAG_SUPPORTS_TDLS) &&
      nla_put_flag(msg, NL80211_ATTR_TDLS_SUPPORT))
   goto nla_put_failure;
  if ((rdev->wiphy.flags & WIPHY_FLAG_TDLS_EXTERNAL_SETUP) &&
      nla_put_flag(msg, NL80211_ATTR_TDLS_EXTERNAL_SETUP))
   goto nla_put_failure;
  state->split_start++;
  if (state->split)
   break;

 case 1:
  if (nla_put(msg, NL80211_ATTR_CIPHER_SUITES,
       sizeof(u32) * rdev->wiphy.n_cipher_suites,
       rdev->wiphy.cipher_suites))
   goto nla_put_failure;

  if (nla_put_u8(msg, NL80211_ATTR_MAX_NUM_PMKIDS,
          rdev->wiphy.max_num_pmkids))
   goto nla_put_failure;

  if ((rdev->wiphy.flags & WIPHY_FLAG_CONTROL_PORT_PROTOCOL) &&
      nla_put_flag(msg, NL80211_ATTR_CONTROL_PORT_ETHERTYPE))
   goto nla_put_failure;

  if (nla_put_u32(msg, NL80211_ATTR_WIPHY_ANTENNA_AVAIL_TX,
    rdev->wiphy.available_antennas_tx) ||
      nla_put_u32(msg, NL80211_ATTR_WIPHY_ANTENNA_AVAIL_RX,
    rdev->wiphy.available_antennas_rx))
   goto nla_put_failure;

  if ((rdev->wiphy.flags & WIPHY_FLAG_AP_PROBE_RESP_OFFLOAD) &&
      nla_put_u32(msg, NL80211_ATTR_PROBE_RESP_OFFLOAD,
    rdev->wiphy.probe_resp_offload))
   goto nla_put_failure;

  if ((rdev->wiphy.available_antennas_tx ||
       rdev->wiphy.available_antennas_rx) &&
      rdev->ops->get_antenna) {
   u32 tx_ant = 0, rx_ant = 0;
   int res;

   res = rdev_get_antenna(rdev, &tx_ant, &rx_ant);
   if (!res) {
    if (nla_put_u32(msg,
      NL80211_ATTR_WIPHY_ANTENNA_TX,
      tx_ant) ||
        nla_put_u32(msg,
      NL80211_ATTR_WIPHY_ANTENNA_RX,
      rx_ant))
     goto nla_put_failure;
   }
  }

  state->split_start++;
  if (state->split)
   break;

 case 2:
  if (nl80211_put_iftypes(msg, NL80211_ATTR_SUPPORTED_IFTYPES,
     rdev->wiphy.interface_modes))
    goto nla_put_failure;
  state->split_start++;
  if (state->split)
   break;

 case 3:
  nl_bands = nla_nest_start_noflag(msg,
       NL80211_ATTR_WIPHY_BANDS);
  if (!nl_bands)
   goto nla_put_failure;

  for (band = state->band_start;
       band < NUM_NL80211_BANDS; band++) {
   struct ieee80211_supported_band *sband;

   sband = rdev->wiphy.bands[band];

   if (!sband)
    continue;

   nl_band = nla_nest_start_noflag(msg, band);
   if (!nl_band)
    goto nla_put_failure;

   switch (state->chan_start) {
   case 0:
    if (nl80211_send_band_rateinfo(msg, sband))
     goto nla_put_failure;
    state->chan_start++;
    if (state->split)
     break;

   default:

    nl_freqs = nla_nest_start_noflag(msg,
         NL80211_BAND_ATTR_FREQS);
    if (!nl_freqs)
     goto nla_put_failure;

    for (i = state->chan_start - 1;
         i < sband->n_channels;
         i++) {
     nl_freq = nla_nest_start_noflag(msg,
         i);
     if (!nl_freq)
      goto nla_put_failure;

     chan = &sband->channels[i];

     if (nl80211_msg_put_channel(
       msg, &rdev->wiphy, chan,
       state->split))
      goto nla_put_failure;

     nla_nest_end(msg, nl_freq);
     if (state->split)
      break;
    }
    if (i < sband->n_channels)
     state->chan_start = i + 2;
    else
     state->chan_start = 0;
    nla_nest_end(msg, nl_freqs);
   }

   nla_nest_end(msg, nl_band);

   if (state->split) {

    if (state->chan_start)
     band--;
    break;
   }
  }
  nla_nest_end(msg, nl_bands);

  if (band < NUM_NL80211_BANDS)
   state->band_start = band + 1;
  else
   state->band_start = 0;


  if (state->band_start == 0 && state->chan_start == 0)
   state->split_start++;
  if (state->split)
   break;

 case 4:
  nl_cmds = nla_nest_start_noflag(msg,
      NL80211_ATTR_SUPPORTED_COMMANDS);
  if (!nl_cmds)
   goto nla_put_failure;

  i = nl80211_add_commands_unsplit(rdev, msg);
  if (i < 0)
   goto nla_put_failure;
  if (state->split) {
   CMD(crit_proto_start, CRIT_PROTOCOL_START);
   CMD(crit_proto_stop, CRIT_PROTOCOL_STOP);
   if (rdev->wiphy.flags & WIPHY_FLAG_HAS_CHANNEL_SWITCH)
    CMD(channel_switch, CHANNEL_SWITCH);
   CMD(set_qos_map, SET_QOS_MAP);
   if (rdev->wiphy.features &
     NL80211_FEATURE_SUPPORTS_WMM_ADMISSION)
    CMD(add_tx_ts, ADD_TX_TS);
   CMD(set_multicast_to_unicast, SET_MULTICAST_TO_UNICAST);
   CMD(update_connect_params, UPDATE_CONNECT_PARAMS);
   CMD(update_ft_ies, UPDATE_FT_IES);
  }


  nla_nest_end(msg, nl_cmds);
  state->split_start++;
  if (state->split)
   break;

 case 5:
  if (rdev->ops->remain_on_channel &&
      (rdev->wiphy.flags & WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL) &&
      nla_put_u32(msg,
    NL80211_ATTR_MAX_REMAIN_ON_CHANNEL_DURATION,
    rdev->wiphy.max_remain_on_channel_duration))
   goto nla_put_failure;

  if ((rdev->wiphy.flags & WIPHY_FLAG_OFFCHAN_TX) &&
      nla_put_flag(msg, NL80211_ATTR_OFFCHANNEL_TX_OK))
   goto nla_put_failure;

  if (nl80211_send_mgmt_stypes(msg, mgmt_stypes))
   goto nla_put_failure;
  state->split_start++;
  if (state->split)
   break;

 case 6:







  state->split_start++;


 case 7:
  if (nl80211_put_iftypes(msg, NL80211_ATTR_SOFTWARE_IFTYPES,
     rdev->wiphy.software_iftypes))
   goto nla_put_failure;

  if (nl80211_put_iface_combinations(&rdev->wiphy, msg,
         state->split))
   goto nla_put_failure;

  state->split_start++;
  if (state->split)
   break;

 case 8:
  if ((rdev->wiphy.flags & WIPHY_FLAG_HAVE_AP_SME) &&
      nla_put_u32(msg, NL80211_ATTR_DEVICE_AP_SME,
    rdev->wiphy.ap_sme_capa))
   goto nla_put_failure;

  features = rdev->wiphy.features;





  if (state->split)
   features |= NL80211_FEATURE_ADVERTISE_CHAN_LIMITS;
  if (nla_put_u32(msg, NL80211_ATTR_FEATURE_FLAGS, features))
   goto nla_put_failure;

  if (rdev->wiphy.ht_capa_mod_mask &&
      nla_put(msg, NL80211_ATTR_HT_CAPABILITY_MASK,
       sizeof(*rdev->wiphy.ht_capa_mod_mask),
       rdev->wiphy.ht_capa_mod_mask))
   goto nla_put_failure;

  if (rdev->wiphy.flags & WIPHY_FLAG_HAVE_AP_SME &&
      rdev->wiphy.max_acl_mac_addrs &&
      nla_put_u32(msg, NL80211_ATTR_MAC_ACL_MAX,
    rdev->wiphy.max_acl_mac_addrs))
   goto nla_put_failure;
  state->split_start++;
  break;
 case 9:
  if (rdev->wiphy.extended_capabilities &&
      (nla_put(msg, NL80211_ATTR_EXT_CAPA,
        rdev->wiphy.extended_capabilities_len,
        rdev->wiphy.extended_capabilities) ||
       nla_put(msg, NL80211_ATTR_EXT_CAPA_MASK,
        rdev->wiphy.extended_capabilities_len,
        rdev->wiphy.extended_capabilities_mask)))
   goto nla_put_failure;

  if (rdev->wiphy.vht_capa_mod_mask &&
      nla_put(msg, NL80211_ATTR_VHT_CAPABILITY_MASK,
       sizeof(*rdev->wiphy.vht_capa_mod_mask),
       rdev->wiphy.vht_capa_mod_mask))
   goto nla_put_failure;

  if (nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN,
       rdev->wiphy.perm_addr))
   goto nla_put_failure;

  if (!is_zero_ether_addr(rdev->wiphy.addr_mask) &&
      nla_put(msg, NL80211_ATTR_MAC_MASK, ETH_ALEN,
       rdev->wiphy.addr_mask))
   goto nla_put_failure;

  if (rdev->wiphy.n_addresses > 1) {
   void *attr;

   attr = nla_nest_start(msg, NL80211_ATTR_MAC_ADDRS);
   if (!attr)
    goto nla_put_failure;

   for (i = 0; i < rdev->wiphy.n_addresses; i++)
    if (nla_put(msg, i + 1, ETH_ALEN,
         rdev->wiphy.addresses[i].addr))
     goto nla_put_failure;

   nla_nest_end(msg, attr);
  }

  state->split_start++;
  break;
 case 10:
  if (nl80211_send_coalesce(msg, rdev))
   goto nla_put_failure;

  if ((rdev->wiphy.flags & WIPHY_FLAG_SUPPORTS_5_10_MHZ) &&
      (nla_put_flag(msg, NL80211_ATTR_SUPPORT_5_MHZ) ||
       nla_put_flag(msg, NL80211_ATTR_SUPPORT_10_MHZ)))
   goto nla_put_failure;

  if (rdev->wiphy.max_ap_assoc_sta &&
      nla_put_u32(msg, NL80211_ATTR_MAX_AP_ASSOC_STA,
    rdev->wiphy.max_ap_assoc_sta))
   goto nla_put_failure;

  state->split_start++;
  break;
 case 11:
  if (rdev->wiphy.n_vendor_commands) {
   const struct nl80211_vendor_cmd_info *info;
   struct nlattr *nested;

   nested = nla_nest_start_noflag(msg,
             NL80211_ATTR_VENDOR_DATA);
   if (!nested)
    goto nla_put_failure;

   for (i = 0; i < rdev->wiphy.n_vendor_commands; i++) {
    info = &rdev->wiphy.vendor_commands[i].info;
    if (nla_put(msg, i + 1, sizeof(*info), info))
     goto nla_put_failure;
   }
   nla_nest_end(msg, nested);
  }

  if (rdev->wiphy.n_vendor_events) {
   const struct nl80211_vendor_cmd_info *info;
   struct nlattr *nested;

   nested = nla_nest_start_noflag(msg,
             NL80211_ATTR_VENDOR_EVENTS);
   if (!nested)
    goto nla_put_failure;

   for (i = 0; i < rdev->wiphy.n_vendor_events; i++) {
    info = &rdev->wiphy.vendor_events[i];
    if (nla_put(msg, i + 1, sizeof(*info), info))
     goto nla_put_failure;
   }
   nla_nest_end(msg, nested);
  }
  state->split_start++;
  break;
 case 12:
  if (rdev->wiphy.flags & WIPHY_FLAG_HAS_CHANNEL_SWITCH &&
      nla_put_u8(msg, NL80211_ATTR_MAX_CSA_COUNTERS,
          rdev->wiphy.max_num_csa_counters))
   goto nla_put_failure;

  if (rdev->wiphy.regulatory_flags & REGULATORY_WIPHY_SELF_MANAGED &&
      nla_put_flag(msg, NL80211_ATTR_WIPHY_SELF_MANAGED_REG))
   goto nla_put_failure;

  if (rdev->wiphy.max_sched_scan_reqs &&
      nla_put_u32(msg, NL80211_ATTR_SCHED_SCAN_MAX_REQS,
    rdev->wiphy.max_sched_scan_reqs))
   goto nla_put_failure;

  if (nla_put(msg, NL80211_ATTR_EXT_FEATURES,
       sizeof(rdev->wiphy.ext_features),
       rdev->wiphy.ext_features))
   goto nla_put_failure;

  if (rdev->wiphy.bss_select_support) {
   struct nlattr *nested;
   u32 bss_select_support = rdev->wiphy.bss_select_support;

   nested = nla_nest_start_noflag(msg,
             NL80211_ATTR_BSS_SELECT);
   if (!nested)
    goto nla_put_failure;

   i = 0;
   while (bss_select_support) {
    if ((bss_select_support & 1) &&
        nla_put_flag(msg, i))
     goto nla_put_failure;
    i++;
    bss_select_support >>= 1;
   }
   nla_nest_end(msg, nested);
  }

  state->split_start++;
  break;
 case 13:
  if (rdev->wiphy.num_iftype_ext_capab &&
      rdev->wiphy.iftype_ext_capab) {
   struct nlattr *nested_ext_capab, *nested;

   nested = nla_nest_start_noflag(msg,
             NL80211_ATTR_IFTYPE_EXT_CAPA);
   if (!nested)
    goto nla_put_failure;

   for (i = state->capa_start;
        i < rdev->wiphy.num_iftype_ext_capab; i++) {
    const struct wiphy_iftype_ext_capab *capab;

    capab = &rdev->wiphy.iftype_ext_capab[i];

    nested_ext_capab = nla_nest_start_noflag(msg,
          i);
    if (!nested_ext_capab ||
        nla_put_u32(msg, NL80211_ATTR_IFTYPE,
      capab->iftype) ||
        nla_put(msg, NL80211_ATTR_EXT_CAPA,
         capab->extended_capabilities_len,
         capab->extended_capabilities) ||
        nla_put(msg, NL80211_ATTR_EXT_CAPA_MASK,
         capab->extended_capabilities_len,
         capab->extended_capabilities_mask))
     goto nla_put_failure;

    nla_nest_end(msg, nested_ext_capab);
    if (state->split)
     break;
   }
   nla_nest_end(msg, nested);
   if (i < rdev->wiphy.num_iftype_ext_capab) {
    state->capa_start = i + 1;
    break;
   }
  }

  if (nla_put_u32(msg, NL80211_ATTR_BANDS,
    rdev->wiphy.nan_supported_bands))
   goto nla_put_failure;

  if (wiphy_ext_feature_isset(&rdev->wiphy,
         NL80211_EXT_FEATURE_TXQS)) {
   struct cfg80211_txq_stats txqstats = {};
   int res;

   res = rdev_get_txq_stats(rdev, ((void*)0), &txqstats);
   if (!res &&
       !nl80211_put_txq_stats(msg, &txqstats,
         NL80211_ATTR_TXQ_STATS))
    goto nla_put_failure;

   if (nla_put_u32(msg, NL80211_ATTR_TXQ_LIMIT,
     rdev->wiphy.txq_limit))
    goto nla_put_failure;
   if (nla_put_u32(msg, NL80211_ATTR_TXQ_MEMORY_LIMIT,
     rdev->wiphy.txq_memory_limit))
    goto nla_put_failure;
   if (nla_put_u32(msg, NL80211_ATTR_TXQ_QUANTUM,
     rdev->wiphy.txq_quantum))
    goto nla_put_failure;
  }

  state->split_start++;
  break;
 case 14:
  if (nl80211_send_pmsr_capa(rdev, msg))
   goto nla_put_failure;

  state->split_start++;
  break;
 case 15:
  if (rdev->wiphy.akm_suites &&
      nla_put(msg, NL80211_ATTR_AKM_SUITES,
       sizeof(u32) * rdev->wiphy.n_akm_suites,
       rdev->wiphy.akm_suites))
   goto nla_put_failure;


  state->split_start = 0;
  break;
 }
 finish:
 genlmsg_end(msg, hdr);
 return 0;

 nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
