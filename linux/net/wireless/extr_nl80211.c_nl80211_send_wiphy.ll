; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_wiphy.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_wiphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, %struct.TYPE_11__, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nl80211_vendor_cmd_info*, %struct.wiphy_iftype_ext_capab*, %struct.nl80211_vendor_cmd_info*, i32, %struct.nl80211_vendor_cmd_info*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info*, i32, %struct.ieee80211_supported_band**, i32, i32, %struct.nl80211_vendor_cmd_info*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211_txrx_stypes* }
%struct.wiphy_iftype_ext_capab = type { i32, i32, %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info* }
%struct.TYPE_10__ = type { %struct.nl80211_vendor_cmd_info }
%struct.nl80211_vendor_cmd_info = type { i32 }
%struct.TYPE_9__ = type { %struct.nl80211_vendor_cmd_info* }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_txrx_stypes = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nl80211_dump_wiphy_state = type { i32, i32, i32, i32, i32 }
%struct.nlattr = type opaque
%struct.cfg80211_txq_stats = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_NAME = common dso_local global i32 0, align 4
@NL80211_ATTR_GENERATION = common dso_local global i32 0, align 4
@cfg80211_rdev_list_generation = common dso_local global i32 0, align 4
@NL80211_CMD_NEW_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_RETRY_SHORT = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_RETRY_LONG = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_RTS_THRESHOLD = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_COVERAGE_CLASS = common dso_local global i32 0, align 4
@NL80211_ATTR_MAX_NUM_SCAN_SSIDS = common dso_local global i32 0, align 4
@NL80211_ATTR_MAX_NUM_SCHED_SCAN_SSIDS = common dso_local global i32 0, align 4
@NL80211_ATTR_MAX_SCAN_IE_LEN = common dso_local global i32 0, align 4
@NL80211_ATTR_MAX_SCHED_SCAN_IE_LEN = common dso_local global i32 0, align 4
@NL80211_ATTR_MAX_MATCH_SETS = common dso_local global i32 0, align 4
@NL80211_ATTR_MAX_NUM_SCHED_SCAN_PLANS = common dso_local global i32 0, align 4
@NL80211_ATTR_MAX_SCAN_PLAN_INTERVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_MAX_SCAN_PLAN_ITERATIONS = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@NL80211_ATTR_SUPPORT_IBSS_RSN = common dso_local global i32 0, align 4
@WIPHY_FLAG_MESH_AUTH = common dso_local global i32 0, align 4
@NL80211_ATTR_SUPPORT_MESH_AUTH = common dso_local global i32 0, align 4
@WIPHY_FLAG_AP_UAPSD = common dso_local global i32 0, align 4
@NL80211_ATTR_SUPPORT_AP_UAPSD = common dso_local global i32 0, align 4
@WIPHY_FLAG_SUPPORTS_FW_ROAM = common dso_local global i32 0, align 4
@NL80211_ATTR_ROAM_SUPPORT = common dso_local global i32 0, align 4
@WIPHY_FLAG_SUPPORTS_TDLS = common dso_local global i32 0, align 4
@NL80211_ATTR_TDLS_SUPPORT = common dso_local global i32 0, align 4
@WIPHY_FLAG_TDLS_EXTERNAL_SETUP = common dso_local global i32 0, align 4
@NL80211_ATTR_TDLS_EXTERNAL_SETUP = common dso_local global i32 0, align 4
@NL80211_ATTR_CIPHER_SUITES = common dso_local global i32 0, align 4
@NL80211_ATTR_MAX_NUM_PMKIDS = common dso_local global i32 0, align 4
@WIPHY_FLAG_CONTROL_PORT_PROTOCOL = common dso_local global i32 0, align 4
@NL80211_ATTR_CONTROL_PORT_ETHERTYPE = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_ANTENNA_AVAIL_TX = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_ANTENNA_AVAIL_RX = common dso_local global i32 0, align 4
@WIPHY_FLAG_AP_PROBE_RESP_OFFLOAD = common dso_local global i32 0, align 4
@NL80211_ATTR_PROBE_RESP_OFFLOAD = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_ANTENNA_TX = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_ANTENNA_RX = common dso_local global i32 0, align 4
@NL80211_ATTR_SUPPORTED_IFTYPES = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_BANDS = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@NL80211_BAND_ATTR_FREQS = common dso_local global i32 0, align 4
@NL80211_ATTR_SUPPORTED_COMMANDS = common dso_local global i32 0, align 4
@crit_proto_start = common dso_local global i32 0, align 4
@CRIT_PROTOCOL_START = common dso_local global i32 0, align 4
@crit_proto_stop = common dso_local global i32 0, align 4
@CRIT_PROTOCOL_STOP = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAS_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@channel_switch = common dso_local global i32 0, align 4
@CHANNEL_SWITCH = common dso_local global i32 0, align 4
@set_qos_map = common dso_local global i32 0, align 4
@SET_QOS_MAP = common dso_local global i32 0, align 4
@NL80211_FEATURE_SUPPORTS_WMM_ADMISSION = common dso_local global i32 0, align 4
@add_tx_ts = common dso_local global i32 0, align 4
@ADD_TX_TS = common dso_local global i32 0, align 4
@set_multicast_to_unicast = common dso_local global i32 0, align 4
@SET_MULTICAST_TO_UNICAST = common dso_local global i32 0, align 4
@update_connect_params = common dso_local global i32 0, align 4
@UPDATE_CONNECT_PARAMS = common dso_local global i32 0, align 4
@update_ft_ies = common dso_local global i32 0, align 4
@UPDATE_FT_IES = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@NL80211_ATTR_MAX_REMAIN_ON_CHANNEL_DURATION = common dso_local global i32 0, align 4
@WIPHY_FLAG_OFFCHAN_TX = common dso_local global i32 0, align 4
@NL80211_ATTR_OFFCHANNEL_TX_OK = common dso_local global i32 0, align 4
@NL80211_ATTR_SOFTWARE_IFTYPES = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAVE_AP_SME = common dso_local global i32 0, align 4
@NL80211_ATTR_DEVICE_AP_SME = common dso_local global i32 0, align 4
@NL80211_FEATURE_ADVERTISE_CHAN_LIMITS = common dso_local global i32 0, align 4
@NL80211_ATTR_FEATURE_FLAGS = common dso_local global i32 0, align 4
@NL80211_ATTR_HT_CAPABILITY_MASK = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC_ACL_MAX = common dso_local global i32 0, align 4
@NL80211_ATTR_EXT_CAPA = common dso_local global i32 0, align 4
@NL80211_ATTR_EXT_CAPA_MASK = common dso_local global i32 0, align 4
@NL80211_ATTR_VHT_CAPABILITY_MASK = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC_MASK = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC_ADDRS = common dso_local global i32 0, align 4
@WIPHY_FLAG_SUPPORTS_5_10_MHZ = common dso_local global i32 0, align 4
@NL80211_ATTR_SUPPORT_5_MHZ = common dso_local global i32 0, align 4
@NL80211_ATTR_SUPPORT_10_MHZ = common dso_local global i32 0, align 4
@NL80211_ATTR_MAX_AP_ASSOC_STA = common dso_local global i32 0, align 4
@NL80211_ATTR_VENDOR_DATA = common dso_local global i32 0, align 4
@NL80211_ATTR_VENDOR_EVENTS = common dso_local global i32 0, align 4
@NL80211_ATTR_MAX_CSA_COUNTERS = common dso_local global i32 0, align 4
@REGULATORY_WIPHY_SELF_MANAGED = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_SELF_MANAGED_REG = common dso_local global i32 0, align 4
@NL80211_ATTR_SCHED_SCAN_MAX_REQS = common dso_local global i32 0, align 4
@NL80211_ATTR_EXT_FEATURES = common dso_local global i32 0, align 4
@NL80211_ATTR_BSS_SELECT = common dso_local global i32 0, align 4
@NL80211_ATTR_IFTYPE_EXT_CAPA = common dso_local global i32 0, align 4
@NL80211_ATTR_IFTYPE = common dso_local global i32 0, align 4
@NL80211_ATTR_BANDS = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_TXQS = common dso_local global i32 0, align 4
@NL80211_ATTR_TXQ_STATS = common dso_local global i32 0, align 4
@NL80211_ATTR_TXQ_LIMIT = common dso_local global i32 0, align 4
@NL80211_ATTR_TXQ_MEMORY_LIMIT = common dso_local global i32 0, align 4
@NL80211_ATTR_TXQ_QUANTUM = common dso_local global i32 0, align 4
@NL80211_ATTR_AKM_SUITES = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, i32, %struct.sk_buff*, i32, i32, i32, %struct.nl80211_dump_wiphy_state*)* @nl80211_send_wiphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_wiphy(%struct.cfg80211_registered_device* %0, i32 %1, %struct.sk_buff* %2, i32 %3, i32 %4, i32 %5, %struct.nl80211_dump_wiphy_state* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cfg80211_registered_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nl80211_dump_wiphy_state*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca %struct.nlattr*, align 8
  %19 = alloca %struct.nlattr*, align 8
  %20 = alloca %struct.nlattr*, align 8
  %21 = alloca %struct.nlattr*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.ieee80211_channel*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.ieee80211_txrx_stypes*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.ieee80211_supported_band*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %struct.nl80211_vendor_cmd_info*, align 8
  %33 = alloca %struct.nlattr*, align 8
  %34 = alloca %struct.nl80211_vendor_cmd_info*, align 8
  %35 = alloca %struct.nlattr*, align 8
  %36 = alloca %struct.nlattr*, align 8
  %37 = alloca i32, align 4
  %38 = alloca %struct.nlattr*, align 8
  %39 = alloca %struct.nlattr*, align 8
  %40 = alloca %struct.wiphy_iftype_ext_capab*, align 8
  %41 = alloca %struct.cfg80211_txq_stats, align 4
  %42 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.nl80211_dump_wiphy_state* %6, %struct.nl80211_dump_wiphy_state** %15, align 8
  %43 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %44 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 54
  %46 = load %struct.ieee80211_txrx_stypes*, %struct.ieee80211_txrx_stypes** %45, align 8
  store %struct.ieee80211_txrx_stypes* %46, %struct.ieee80211_txrx_stypes** %25, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i8* @nl80211hdr_put(%struct.sk_buff* %47, i32 %48, i32 %49, i32 %50, i32 %51)
  store i8* %52, i8** %16, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %7
  %56 = load i32, i32* @ENOBUFS, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %1506

58:                                               ; preds = %7
  %59 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %60 = icmp ne %struct.nl80211_dump_wiphy_state* %59, null
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @WARN_ON(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  br label %1506

68:                                               ; preds = %58
  %69 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %70 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %71 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %72 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @nla_put_u32(%struct.sk_buff* %69, i32 %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %68
  %77 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %78 = load i32, i32* @NL80211_ATTR_WIPHY_NAME, align 4
  %79 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %80 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %79, i32 0, i32 1
  %81 = call i32 @wiphy_name(%struct.TYPE_11__* %80)
  %82 = call i64 @nla_put_string(%struct.sk_buff* %77, i32 %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %76
  %85 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %86 = load i32, i32* @NL80211_ATTR_GENERATION, align 4
  %87 = load i32, i32* @cfg80211_rdev_list_generation, align 4
  %88 = call i64 @nla_put_u32(%struct.sk_buff* %85, i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84, %76, %68
  br label %1500

91:                                               ; preds = %84
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @NL80211_CMD_NEW_WIPHY, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %1496

96:                                               ; preds = %91
  %97 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %98 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  switch i32 %99, label %1495 [
    i32 0, label %100
    i32 1, label %313
    i32 2, label %441
    i32 3, label %462
    i32 4, label %656
    i32 5, label %734
    i32 6, label %790
    i32 7, label %795
    i32 8, label %826
    i32 9, label %909
    i32 10, label %1038
    i32 11, label %1084
    i32 12, label %1182
    i32 13, label %1287
    i32 14, label %1458
    i32 15, label %1469
  ]

100:                                              ; preds = %96
  %101 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %102 = load i32, i32* @NL80211_ATTR_WIPHY_RETRY_SHORT, align 4
  %103 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %104 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 53
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @nla_put_u8(%struct.sk_buff* %101, i32 %102, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %217, label %109

109:                                              ; preds = %100
  %110 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %111 = load i32, i32* @NL80211_ATTR_WIPHY_RETRY_LONG, align 4
  %112 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %113 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 52
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @nla_put_u8(%struct.sk_buff* %110, i32 %111, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %217, label %118

118:                                              ; preds = %109
  %119 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %120 = load i32, i32* @NL80211_ATTR_WIPHY_FRAG_THRESHOLD, align 4
  %121 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %122 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @nla_put_u32(%struct.sk_buff* %119, i32 %120, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %217, label %127

127:                                              ; preds = %118
  %128 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %129 = load i32, i32* @NL80211_ATTR_WIPHY_RTS_THRESHOLD, align 4
  %130 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %131 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @nla_put_u32(%struct.sk_buff* %128, i32 %129, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %217, label %136

136:                                              ; preds = %127
  %137 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %138 = load i32, i32* @NL80211_ATTR_WIPHY_COVERAGE_CLASS, align 4
  %139 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %140 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 51
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @nla_put_u8(%struct.sk_buff* %137, i32 %138, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %217, label %145

145:                                              ; preds = %136
  %146 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %147 = load i32, i32* @NL80211_ATTR_MAX_NUM_SCAN_SSIDS, align 4
  %148 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %149 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 50
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @nla_put_u8(%struct.sk_buff* %146, i32 %147, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %217, label %154

154:                                              ; preds = %145
  %155 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %156 = load i32, i32* @NL80211_ATTR_MAX_NUM_SCHED_SCAN_SSIDS, align 4
  %157 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %158 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 49
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @nla_put_u8(%struct.sk_buff* %155, i32 %156, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %217, label %163

163:                                              ; preds = %154
  %164 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %165 = load i32, i32* @NL80211_ATTR_MAX_SCAN_IE_LEN, align 4
  %166 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %167 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 48
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @nla_put_u16(%struct.sk_buff* %164, i32 %165, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %217, label %172

172:                                              ; preds = %163
  %173 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %174 = load i32, i32* @NL80211_ATTR_MAX_SCHED_SCAN_IE_LEN, align 4
  %175 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %176 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 47
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @nla_put_u16(%struct.sk_buff* %173, i32 %174, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %217, label %181

181:                                              ; preds = %172
  %182 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %183 = load i32, i32* @NL80211_ATTR_MAX_MATCH_SETS, align 4
  %184 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %185 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 46
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @nla_put_u8(%struct.sk_buff* %182, i32 %183, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %217, label %190

190:                                              ; preds = %181
  %191 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %192 = load i32, i32* @NL80211_ATTR_MAX_NUM_SCHED_SCAN_PLANS, align 4
  %193 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %194 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = call i64 @nla_put_u32(%struct.sk_buff* %191, i32 %192, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %217, label %199

199:                                              ; preds = %190
  %200 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %201 = load i32, i32* @NL80211_ATTR_MAX_SCAN_PLAN_INTERVAL, align 4
  %202 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %203 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @nla_put_u32(%struct.sk_buff* %200, i32 %201, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %217, label %208

208:                                              ; preds = %199
  %209 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %210 = load i32, i32* @NL80211_ATTR_MAX_SCAN_PLAN_ITERATIONS, align 4
  %211 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %212 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = call i64 @nla_put_u32(%struct.sk_buff* %209, i32 %210, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %208, %199, %190, %181, %172, %163, %154, %145, %136, %127, %118, %109, %100
  br label %1500

218:                                              ; preds = %208
  %219 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %220 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %218
  %227 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %228 = load i32, i32* @NL80211_ATTR_SUPPORT_IBSS_RSN, align 4
  %229 = call i32 @nla_put_flag(%struct.sk_buff* %227, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  br label %1500

232:                                              ; preds = %226, %218
  %233 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %234 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @WIPHY_FLAG_MESH_AUTH, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %232
  %241 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %242 = load i32, i32* @NL80211_ATTR_SUPPORT_MESH_AUTH, align 4
  %243 = call i32 @nla_put_flag(%struct.sk_buff* %241, i32 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  br label %1500

246:                                              ; preds = %240, %232
  %247 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %248 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @WIPHY_FLAG_AP_UAPSD, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %246
  %255 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %256 = load i32, i32* @NL80211_ATTR_SUPPORT_AP_UAPSD, align 4
  %257 = call i32 @nla_put_flag(%struct.sk_buff* %255, i32 %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %254
  br label %1500

260:                                              ; preds = %254, %246
  %261 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %262 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @WIPHY_FLAG_SUPPORTS_FW_ROAM, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %260
  %269 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %270 = load i32, i32* @NL80211_ATTR_ROAM_SUPPORT, align 4
  %271 = call i32 @nla_put_flag(%struct.sk_buff* %269, i32 %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %268
  br label %1500

274:                                              ; preds = %268, %260
  %275 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %276 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @WIPHY_FLAG_SUPPORTS_TDLS, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %274
  %283 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %284 = load i32, i32* @NL80211_ATTR_TDLS_SUPPORT, align 4
  %285 = call i32 @nla_put_flag(%struct.sk_buff* %283, i32 %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %282
  br label %1500

288:                                              ; preds = %282, %274
  %289 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %290 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @WIPHY_FLAG_TDLS_EXTERNAL_SETUP, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %288
  %297 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %298 = load i32, i32* @NL80211_ATTR_TDLS_EXTERNAL_SETUP, align 4
  %299 = call i32 @nla_put_flag(%struct.sk_buff* %297, i32 %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %296
  br label %1500

302:                                              ; preds = %296, %288
  %303 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %304 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %304, align 4
  %307 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %308 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %302
  br label %1495

312:                                              ; preds = %302
  br label %313

313:                                              ; preds = %96, %312
  %314 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %315 = load i32, i32* @NL80211_ATTR_CIPHER_SUITES, align 4
  %316 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %317 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 6
  %319 = load i32, i32* %318, align 8
  %320 = sext i32 %319 to i64
  %321 = mul i64 4, %320
  %322 = trunc i64 %321 to i32
  %323 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %324 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 45
  %326 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %325, align 8
  %327 = call i32 @nla_put(%struct.sk_buff* %314, i32 %315, i32 %322, %struct.nl80211_vendor_cmd_info* %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %313
  br label %1500

330:                                              ; preds = %313
  %331 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %332 = load i32, i32* @NL80211_ATTR_MAX_NUM_PMKIDS, align 4
  %333 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %334 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 44
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @nla_put_u8(%struct.sk_buff* %331, i32 %332, i32 %336)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %330
  br label %1500

340:                                              ; preds = %330
  %341 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %342 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 5
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @WIPHY_FLAG_CONTROL_PORT_PROTOCOL, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %340
  %349 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %350 = load i32, i32* @NL80211_ATTR_CONTROL_PORT_ETHERTYPE, align 4
  %351 = call i32 @nla_put_flag(%struct.sk_buff* %349, i32 %350)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %348
  br label %1500

354:                                              ; preds = %348, %340
  %355 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %356 = load i32, i32* @NL80211_ATTR_WIPHY_ANTENNA_AVAIL_TX, align 4
  %357 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %358 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 7
  %360 = load i32, i32* %359, align 4
  %361 = call i64 @nla_put_u32(%struct.sk_buff* %355, i32 %356, i32 %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %372, label %363

363:                                              ; preds = %354
  %364 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %365 = load i32, i32* @NL80211_ATTR_WIPHY_ANTENNA_AVAIL_RX, align 4
  %366 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %367 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i32 0, i32 8
  %369 = load i32, i32* %368, align 8
  %370 = call i64 @nla_put_u32(%struct.sk_buff* %364, i32 %365, i32 %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %363, %354
  br label %1500

373:                                              ; preds = %363
  %374 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %375 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 5
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @WIPHY_FLAG_AP_PROBE_RESP_OFFLOAD, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %391

381:                                              ; preds = %373
  %382 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %383 = load i32, i32* @NL80211_ATTR_PROBE_RESP_OFFLOAD, align 4
  %384 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %385 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 9
  %387 = load i32, i32* %386, align 4
  %388 = call i64 @nla_put_u32(%struct.sk_buff* %382, i32 %383, i32 %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %381
  br label %1500

391:                                              ; preds = %381, %373
  %392 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %393 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 7
  %395 = load i32, i32* %394, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %403, label %397

397:                                              ; preds = %391
  %398 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %399 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %399, i32 0, i32 8
  %401 = load i32, i32* %400, align 8
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %430

403:                                              ; preds = %397, %391
  %404 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %405 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %404, i32 0, i32 2
  %406 = load %struct.TYPE_8__*, %struct.TYPE_8__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %430

410:                                              ; preds = %403
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %411 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %412 = call i32 @rdev_get_antenna(%struct.cfg80211_registered_device* %411, i32* %27, i32* %28)
  store i32 %412, i32* %29, align 4
  %413 = load i32, i32* %29, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %429, label %415

415:                                              ; preds = %410
  %416 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %417 = load i32, i32* @NL80211_ATTR_WIPHY_ANTENNA_TX, align 4
  %418 = load i32, i32* %27, align 4
  %419 = call i64 @nla_put_u32(%struct.sk_buff* %416, i32 %417, i32 %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %427, label %421

421:                                              ; preds = %415
  %422 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %423 = load i32, i32* @NL80211_ATTR_WIPHY_ANTENNA_RX, align 4
  %424 = load i32, i32* %28, align 4
  %425 = call i64 @nla_put_u32(%struct.sk_buff* %422, i32 %423, i32 %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %421, %415
  br label %1500

428:                                              ; preds = %421
  br label %429

429:                                              ; preds = %428, %410
  br label %430

430:                                              ; preds = %429, %403, %397
  %431 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %432 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %432, align 4
  %435 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %436 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %435, i32 0, i32 4
  %437 = load i32, i32* %436, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %430
  br label %1495

440:                                              ; preds = %430
  br label %441

441:                                              ; preds = %96, %440
  %442 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %443 = load i32, i32* @NL80211_ATTR_SUPPORTED_IFTYPES, align 4
  %444 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %445 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 43
  %447 = load i32, i32* %446, align 8
  %448 = call i32 @nl80211_put_iftypes(%struct.sk_buff* %442, i32 %443, i32 %447)
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %451

450:                                              ; preds = %441
  br label %1500

451:                                              ; preds = %441
  %452 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %453 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %453, align 4
  %456 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %457 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %456, i32 0, i32 4
  %458 = load i32, i32* %457, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %461

460:                                              ; preds = %451
  br label %1495

461:                                              ; preds = %451
  br label %462

462:                                              ; preds = %96, %461
  %463 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %464 = load i32, i32* @NL80211_ATTR_WIPHY_BANDS, align 4
  %465 = call i8* @nla_nest_start_noflag(%struct.sk_buff* %463, i32 %464)
  %466 = bitcast i8* %465 to %struct.nlattr*
  store %struct.nlattr* %466, %struct.nlattr** %17, align 8
  %467 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %468 = icmp ne %struct.nlattr* %467, null
  br i1 %468, label %470, label %469

469:                                              ; preds = %462
  br label %1500

470:                                              ; preds = %462
  %471 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %472 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  store i32 %473, i32* %22, align 4
  br label %474

474:                                              ; preds = %615, %470
  %475 = load i32, i32* %22, align 4
  %476 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %477 = icmp ult i32 %475, %476
  br i1 %477, label %478, label %618

478:                                              ; preds = %474
  %479 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %480 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %479, i32 0, i32 1
  %481 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %480, i32 0, i32 42
  %482 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %481, align 8
  %483 = load i32, i32* %22, align 4
  %484 = zext i32 %483 to i64
  %485 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %482, i64 %484
  %486 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %485, align 8
  store %struct.ieee80211_supported_band* %486, %struct.ieee80211_supported_band** %30, align 8
  %487 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %30, align 8
  %488 = icmp ne %struct.ieee80211_supported_band* %487, null
  br i1 %488, label %490, label %489

489:                                              ; preds = %478
  br label %615

490:                                              ; preds = %478
  %491 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %492 = load i32, i32* %22, align 4
  %493 = call i8* @nla_nest_start_noflag(%struct.sk_buff* %491, i32 %492)
  %494 = bitcast i8* %493 to %struct.nlattr*
  store %struct.nlattr* %494, %struct.nlattr** %18, align 8
  %495 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %496 = icmp ne %struct.nlattr* %495, null
  br i1 %496, label %498, label %497

497:                                              ; preds = %490
  br label %1500

498:                                              ; preds = %490
  %499 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %500 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %499, i32 0, i32 2
  %501 = load i32, i32* %500, align 4
  switch i32 %501, label %519 [
    i32 0, label %502
  ]

502:                                              ; preds = %498
  %503 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %504 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %30, align 8
  %505 = call i32 @nl80211_send_band_rateinfo(%struct.sk_buff* %503, %struct.ieee80211_supported_band* %504)
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %508

507:                                              ; preds = %502
  br label %1500

508:                                              ; preds = %502
  %509 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %510 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %509, i32 0, i32 2
  %511 = load i32, i32* %510, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %510, align 4
  %513 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %514 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %513, i32 0, i32 4
  %515 = load i32, i32* %514, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %518

517:                                              ; preds = %508
  br label %596

518:                                              ; preds = %508
  br label %519

519:                                              ; preds = %498, %518
  %520 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %521 = load i32, i32* @NL80211_BAND_ATTR_FREQS, align 4
  %522 = call i8* @nla_nest_start_noflag(%struct.sk_buff* %520, i32 %521)
  %523 = bitcast i8* %522 to %struct.nlattr*
  store %struct.nlattr* %523, %struct.nlattr** %19, align 8
  %524 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %525 = icmp ne %struct.nlattr* %524, null
  br i1 %525, label %527, label %526

526:                                              ; preds = %519
  br label %1500

527:                                              ; preds = %519
  %528 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %529 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %528, i32 0, i32 2
  %530 = load i32, i32* %529, align 4
  %531 = sub nsw i32 %530, 1
  store i32 %531, i32* %24, align 4
  br label %532

532:                                              ; preds = %574, %527
  %533 = load i32, i32* %24, align 4
  %534 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %30, align 8
  %535 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = icmp slt i32 %533, %536
  br i1 %537, label %538, label %577

538:                                              ; preds = %532
  %539 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %540 = load i32, i32* %24, align 4
  %541 = call i8* @nla_nest_start_noflag(%struct.sk_buff* %539, i32 %540)
  %542 = bitcast i8* %541 to %struct.nlattr*
  store %struct.nlattr* %542, %struct.nlattr** %20, align 8
  %543 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %544 = icmp ne %struct.nlattr* %543, null
  br i1 %544, label %546, label %545

545:                                              ; preds = %538
  br label %1500

546:                                              ; preds = %538
  %547 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %30, align 8
  %548 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %547, i32 0, i32 1
  %549 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %548, align 8
  %550 = load i32, i32* %24, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %549, i64 %551
  store %struct.ieee80211_channel* %552, %struct.ieee80211_channel** %23, align 8
  %553 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %554 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %555 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %554, i32 0, i32 1
  %556 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %23, align 8
  %557 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %558 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %557, i32 0, i32 4
  %559 = load i32, i32* %558, align 4
  %560 = call i32 @nl80211_msg_put_channel(%struct.sk_buff* %553, %struct.TYPE_11__* %555, %struct.ieee80211_channel* %556, i32 %559)
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %563

562:                                              ; preds = %546
  br label %1500

563:                                              ; preds = %546
  %564 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %565 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %566 = bitcast %struct.nlattr* %565 to i8*
  %567 = call i32 @nla_nest_end(%struct.sk_buff* %564, i8* %566)
  %568 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %569 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %568, i32 0, i32 4
  %570 = load i32, i32* %569, align 4
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %573

572:                                              ; preds = %563
  br label %577

573:                                              ; preds = %563
  br label %574

574:                                              ; preds = %573
  %575 = load i32, i32* %24, align 4
  %576 = add nsw i32 %575, 1
  store i32 %576, i32* %24, align 4
  br label %532

577:                                              ; preds = %572, %532
  %578 = load i32, i32* %24, align 4
  %579 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %30, align 8
  %580 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %579, i32 0, i32 0
  %581 = load i32, i32* %580, align 8
  %582 = icmp slt i32 %578, %581
  br i1 %582, label %583, label %588

583:                                              ; preds = %577
  %584 = load i32, i32* %24, align 4
  %585 = add nsw i32 %584, 2
  %586 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %587 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %586, i32 0, i32 2
  store i32 %585, i32* %587, align 4
  br label %591

588:                                              ; preds = %577
  %589 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %590 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %589, i32 0, i32 2
  store i32 0, i32* %590, align 4
  br label %591

591:                                              ; preds = %588, %583
  %592 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %593 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %594 = bitcast %struct.nlattr* %593 to i8*
  %595 = call i32 @nla_nest_end(%struct.sk_buff* %592, i8* %594)
  br label %596

596:                                              ; preds = %591, %517
  %597 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %598 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %599 = bitcast %struct.nlattr* %598 to i8*
  %600 = call i32 @nla_nest_end(%struct.sk_buff* %597, i8* %599)
  %601 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %602 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %601, i32 0, i32 4
  %603 = load i32, i32* %602, align 4
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %614

605:                                              ; preds = %596
  %606 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %607 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %606, i32 0, i32 2
  %608 = load i32, i32* %607, align 4
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %613

610:                                              ; preds = %605
  %611 = load i32, i32* %22, align 4
  %612 = add i32 %611, -1
  store i32 %612, i32* %22, align 4
  br label %613

613:                                              ; preds = %610, %605
  br label %618

614:                                              ; preds = %596
  br label %615

615:                                              ; preds = %614, %489
  %616 = load i32, i32* %22, align 4
  %617 = add i32 %616, 1
  store i32 %617, i32* %22, align 4
  br label %474

618:                                              ; preds = %613, %474
  %619 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %620 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %621 = bitcast %struct.nlattr* %620 to i8*
  %622 = call i32 @nla_nest_end(%struct.sk_buff* %619, i8* %621)
  %623 = load i32, i32* %22, align 4
  %624 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %625 = icmp ult i32 %623, %624
  br i1 %625, label %626, label %631

626:                                              ; preds = %618
  %627 = load i32, i32* %22, align 4
  %628 = add i32 %627, 1
  %629 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %630 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %629, i32 0, i32 1
  store i32 %628, i32* %630, align 4
  br label %634

631:                                              ; preds = %618
  %632 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %633 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %632, i32 0, i32 1
  store i32 0, i32* %633, align 4
  br label %634

634:                                              ; preds = %631, %626
  %635 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %636 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %635, i32 0, i32 1
  %637 = load i32, i32* %636, align 4
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %649

639:                                              ; preds = %634
  %640 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %641 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %640, i32 0, i32 2
  %642 = load i32, i32* %641, align 4
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %644, label %649

644:                                              ; preds = %639
  %645 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %646 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %645, i32 0, i32 0
  %647 = load i32, i32* %646, align 4
  %648 = add nsw i32 %647, 1
  store i32 %648, i32* %646, align 4
  br label %649

649:                                              ; preds = %644, %639, %634
  %650 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %651 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %650, i32 0, i32 4
  %652 = load i32, i32* %651, align 4
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %654, label %655

654:                                              ; preds = %649
  br label %1495

655:                                              ; preds = %649
  br label %656

656:                                              ; preds = %96, %655
  %657 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %658 = load i32, i32* @NL80211_ATTR_SUPPORTED_COMMANDS, align 4
  %659 = call i8* @nla_nest_start_noflag(%struct.sk_buff* %657, i32 %658)
  %660 = bitcast i8* %659 to %struct.nlattr*
  store %struct.nlattr* %660, %struct.nlattr** %21, align 8
  %661 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %662 = icmp ne %struct.nlattr* %661, null
  br i1 %662, label %664, label %663

663:                                              ; preds = %656
  br label %1500

664:                                              ; preds = %656
  %665 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %666 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %667 = call i32 @nl80211_add_commands_unsplit(%struct.cfg80211_registered_device* %665, %struct.sk_buff* %666)
  store i32 %667, i32* %24, align 4
  %668 = load i32, i32* %24, align 4
  %669 = icmp slt i32 %668, 0
  br i1 %669, label %670, label %671

670:                                              ; preds = %664
  br label %1500

671:                                              ; preds = %664
  %672 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %673 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %672, i32 0, i32 4
  %674 = load i32, i32* %673, align 4
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %676, label %719

676:                                              ; preds = %671
  %677 = load i32, i32* @crit_proto_start, align 4
  %678 = load i32, i32* @CRIT_PROTOCOL_START, align 4
  %679 = call i32 @CMD(i32 %677, i32 %678)
  %680 = load i32, i32* @crit_proto_stop, align 4
  %681 = load i32, i32* @CRIT_PROTOCOL_STOP, align 4
  %682 = call i32 @CMD(i32 %680, i32 %681)
  %683 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %684 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %683, i32 0, i32 1
  %685 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %684, i32 0, i32 5
  %686 = load i32, i32* %685, align 4
  %687 = load i32, i32* @WIPHY_FLAG_HAS_CHANNEL_SWITCH, align 4
  %688 = and i32 %686, %687
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %694

690:                                              ; preds = %676
  %691 = load i32, i32* @channel_switch, align 4
  %692 = load i32, i32* @CHANNEL_SWITCH, align 4
  %693 = call i32 @CMD(i32 %691, i32 %692)
  br label %694

694:                                              ; preds = %690, %676
  %695 = load i32, i32* @set_qos_map, align 4
  %696 = load i32, i32* @SET_QOS_MAP, align 4
  %697 = call i32 @CMD(i32 %695, i32 %696)
  %698 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %699 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %698, i32 0, i32 1
  %700 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %699, i32 0, i32 10
  %701 = load i32, i32* %700, align 8
  %702 = load i32, i32* @NL80211_FEATURE_SUPPORTS_WMM_ADMISSION, align 4
  %703 = and i32 %701, %702
  %704 = icmp ne i32 %703, 0
  br i1 %704, label %705, label %709

705:                                              ; preds = %694
  %706 = load i32, i32* @add_tx_ts, align 4
  %707 = load i32, i32* @ADD_TX_TS, align 4
  %708 = call i32 @CMD(i32 %706, i32 %707)
  br label %709

709:                                              ; preds = %705, %694
  %710 = load i32, i32* @set_multicast_to_unicast, align 4
  %711 = load i32, i32* @SET_MULTICAST_TO_UNICAST, align 4
  %712 = call i32 @CMD(i32 %710, i32 %711)
  %713 = load i32, i32* @update_connect_params, align 4
  %714 = load i32, i32* @UPDATE_CONNECT_PARAMS, align 4
  %715 = call i32 @CMD(i32 %713, i32 %714)
  %716 = load i32, i32* @update_ft_ies, align 4
  %717 = load i32, i32* @UPDATE_FT_IES, align 4
  %718 = call i32 @CMD(i32 %716, i32 %717)
  br label %719

719:                                              ; preds = %709, %671
  %720 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %721 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %722 = bitcast %struct.nlattr* %721 to i8*
  %723 = call i32 @nla_nest_end(%struct.sk_buff* %720, i8* %722)
  %724 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %725 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %724, i32 0, i32 0
  %726 = load i32, i32* %725, align 4
  %727 = add nsw i32 %726, 1
  store i32 %727, i32* %725, align 4
  %728 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %729 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %728, i32 0, i32 4
  %730 = load i32, i32* %729, align 4
  %731 = icmp ne i32 %730, 0
  br i1 %731, label %732, label %733

732:                                              ; preds = %719
  br label %1495

733:                                              ; preds = %719
  br label %734

734:                                              ; preds = %96, %733
  %735 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %736 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %735, i32 0, i32 2
  %737 = load %struct.TYPE_8__*, %struct.TYPE_8__** %736, align 8
  %738 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %737, i32 0, i32 0
  %739 = load i32, i32* %738, align 4
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %741, label %759

741:                                              ; preds = %734
  %742 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %743 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %742, i32 0, i32 1
  %744 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %743, i32 0, i32 5
  %745 = load i32, i32* %744, align 4
  %746 = load i32, i32* @WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL, align 4
  %747 = and i32 %745, %746
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %749, label %759

749:                                              ; preds = %741
  %750 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %751 = load i32, i32* @NL80211_ATTR_MAX_REMAIN_ON_CHANNEL_DURATION, align 4
  %752 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %753 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %752, i32 0, i32 1
  %754 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %753, i32 0, i32 11
  %755 = load i32, i32* %754, align 4
  %756 = call i64 @nla_put_u32(%struct.sk_buff* %750, i32 %751, i32 %755)
  %757 = icmp ne i64 %756, 0
  br i1 %757, label %758, label %759

758:                                              ; preds = %749
  br label %1500

759:                                              ; preds = %749, %741, %734
  %760 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %761 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %760, i32 0, i32 1
  %762 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %761, i32 0, i32 5
  %763 = load i32, i32* %762, align 4
  %764 = load i32, i32* @WIPHY_FLAG_OFFCHAN_TX, align 4
  %765 = and i32 %763, %764
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %767, label %773

767:                                              ; preds = %759
  %768 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %769 = load i32, i32* @NL80211_ATTR_OFFCHANNEL_TX_OK, align 4
  %770 = call i32 @nla_put_flag(%struct.sk_buff* %768, i32 %769)
  %771 = icmp ne i32 %770, 0
  br i1 %771, label %772, label %773

772:                                              ; preds = %767
  br label %1500

773:                                              ; preds = %767, %759
  %774 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %775 = load %struct.ieee80211_txrx_stypes*, %struct.ieee80211_txrx_stypes** %25, align 8
  %776 = call i32 @nl80211_send_mgmt_stypes(%struct.sk_buff* %774, %struct.ieee80211_txrx_stypes* %775)
  %777 = icmp ne i32 %776, 0
  br i1 %777, label %778, label %779

778:                                              ; preds = %773
  br label %1500

779:                                              ; preds = %773
  %780 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %781 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %780, i32 0, i32 0
  %782 = load i32, i32* %781, align 4
  %783 = add nsw i32 %782, 1
  store i32 %783, i32* %781, align 4
  %784 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %785 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %784, i32 0, i32 4
  %786 = load i32, i32* %785, align 4
  %787 = icmp ne i32 %786, 0
  br i1 %787, label %788, label %789

788:                                              ; preds = %779
  br label %1495

789:                                              ; preds = %779
  br label %790

790:                                              ; preds = %96, %789
  %791 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %792 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %791, i32 0, i32 0
  %793 = load i32, i32* %792, align 4
  %794 = add nsw i32 %793, 1
  store i32 %794, i32* %792, align 4
  br label %795

795:                                              ; preds = %96, %790
  %796 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %797 = load i32, i32* @NL80211_ATTR_SOFTWARE_IFTYPES, align 4
  %798 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %799 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %798, i32 0, i32 1
  %800 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %799, i32 0, i32 41
  %801 = load i32, i32* %800, align 8
  %802 = call i32 @nl80211_put_iftypes(%struct.sk_buff* %796, i32 %797, i32 %801)
  %803 = icmp ne i32 %802, 0
  br i1 %803, label %804, label %805

804:                                              ; preds = %795
  br label %1500

805:                                              ; preds = %795
  %806 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %807 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %806, i32 0, i32 1
  %808 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %809 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %810 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %809, i32 0, i32 4
  %811 = load i32, i32* %810, align 4
  %812 = call i32 @nl80211_put_iface_combinations(%struct.TYPE_11__* %807, %struct.sk_buff* %808, i32 %811)
  %813 = icmp ne i32 %812, 0
  br i1 %813, label %814, label %815

814:                                              ; preds = %805
  br label %1500

815:                                              ; preds = %805
  %816 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %817 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %816, i32 0, i32 0
  %818 = load i32, i32* %817, align 4
  %819 = add nsw i32 %818, 1
  store i32 %819, i32* %817, align 4
  %820 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %821 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %820, i32 0, i32 4
  %822 = load i32, i32* %821, align 4
  %823 = icmp ne i32 %822, 0
  br i1 %823, label %824, label %825

824:                                              ; preds = %815
  br label %1495

825:                                              ; preds = %815
  br label %826

826:                                              ; preds = %96, %825
  %827 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %828 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %827, i32 0, i32 1
  %829 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %828, i32 0, i32 5
  %830 = load i32, i32* %829, align 4
  %831 = load i32, i32* @WIPHY_FLAG_HAVE_AP_SME, align 4
  %832 = and i32 %830, %831
  %833 = icmp ne i32 %832, 0
  br i1 %833, label %834, label %844

834:                                              ; preds = %826
  %835 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %836 = load i32, i32* @NL80211_ATTR_DEVICE_AP_SME, align 4
  %837 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %838 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %837, i32 0, i32 1
  %839 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %838, i32 0, i32 12
  %840 = load i32, i32* %839, align 8
  %841 = call i64 @nla_put_u32(%struct.sk_buff* %835, i32 %836, i32 %840)
  %842 = icmp ne i64 %841, 0
  br i1 %842, label %843, label %844

843:                                              ; preds = %834
  br label %1500

844:                                              ; preds = %834, %826
  %845 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %846 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %845, i32 0, i32 1
  %847 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %846, i32 0, i32 10
  %848 = load i32, i32* %847, align 8
  store i32 %848, i32* %26, align 4
  %849 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %850 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %849, i32 0, i32 4
  %851 = load i32, i32* %850, align 4
  %852 = icmp ne i32 %851, 0
  br i1 %852, label %853, label %857

853:                                              ; preds = %844
  %854 = load i32, i32* @NL80211_FEATURE_ADVERTISE_CHAN_LIMITS, align 4
  %855 = load i32, i32* %26, align 4
  %856 = or i32 %855, %854
  store i32 %856, i32* %26, align 4
  br label %857

857:                                              ; preds = %853, %844
  %858 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %859 = load i32, i32* @NL80211_ATTR_FEATURE_FLAGS, align 4
  %860 = load i32, i32* %26, align 4
  %861 = call i64 @nla_put_u32(%struct.sk_buff* %858, i32 %859, i32 %860)
  %862 = icmp ne i64 %861, 0
  br i1 %862, label %863, label %864

863:                                              ; preds = %857
  br label %1500

864:                                              ; preds = %857
  %865 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %866 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %865, i32 0, i32 1
  %867 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %866, i32 0, i32 40
  %868 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %867, align 8
  %869 = icmp ne %struct.nl80211_vendor_cmd_info* %868, null
  br i1 %869, label %870, label %880

870:                                              ; preds = %864
  %871 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %872 = load i32, i32* @NL80211_ATTR_HT_CAPABILITY_MASK, align 4
  %873 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %874 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %873, i32 0, i32 1
  %875 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %874, i32 0, i32 40
  %876 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %875, align 8
  %877 = call i32 @nla_put(%struct.sk_buff* %871, i32 %872, i32 4, %struct.nl80211_vendor_cmd_info* %876)
  %878 = icmp ne i32 %877, 0
  br i1 %878, label %879, label %880

879:                                              ; preds = %870
  br label %1500

880:                                              ; preds = %870, %864
  %881 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %882 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %881, i32 0, i32 1
  %883 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %882, i32 0, i32 5
  %884 = load i32, i32* %883, align 4
  %885 = load i32, i32* @WIPHY_FLAG_HAVE_AP_SME, align 4
  %886 = and i32 %884, %885
  %887 = icmp ne i32 %886, 0
  br i1 %887, label %888, label %904

888:                                              ; preds = %880
  %889 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %890 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %889, i32 0, i32 1
  %891 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %890, i32 0, i32 13
  %892 = load i32, i32* %891, align 4
  %893 = icmp ne i32 %892, 0
  br i1 %893, label %894, label %904

894:                                              ; preds = %888
  %895 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %896 = load i32, i32* @NL80211_ATTR_MAC_ACL_MAX, align 4
  %897 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %898 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %897, i32 0, i32 1
  %899 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %898, i32 0, i32 13
  %900 = load i32, i32* %899, align 4
  %901 = call i64 @nla_put_u32(%struct.sk_buff* %895, i32 %896, i32 %900)
  %902 = icmp ne i64 %901, 0
  br i1 %902, label %903, label %904

903:                                              ; preds = %894
  br label %1500

904:                                              ; preds = %894, %888, %880
  %905 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %906 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %905, i32 0, i32 0
  %907 = load i32, i32* %906, align 4
  %908 = add nsw i32 %907, 1
  store i32 %908, i32* %906, align 4
  br label %1495

909:                                              ; preds = %96
  %910 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %911 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %910, i32 0, i32 1
  %912 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %911, i32 0, i32 39
  %913 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %912, align 8
  %914 = icmp ne %struct.nl80211_vendor_cmd_info* %913, null
  br i1 %914, label %915, label %942

915:                                              ; preds = %909
  %916 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %917 = load i32, i32* @NL80211_ATTR_EXT_CAPA, align 4
  %918 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %919 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %918, i32 0, i32 1
  %920 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %919, i32 0, i32 14
  %921 = load i32, i32* %920, align 8
  %922 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %923 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %922, i32 0, i32 1
  %924 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %923, i32 0, i32 39
  %925 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %924, align 8
  %926 = call i32 @nla_put(%struct.sk_buff* %916, i32 %917, i32 %921, %struct.nl80211_vendor_cmd_info* %925)
  %927 = icmp ne i32 %926, 0
  br i1 %927, label %941, label %928

928:                                              ; preds = %915
  %929 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %930 = load i32, i32* @NL80211_ATTR_EXT_CAPA_MASK, align 4
  %931 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %932 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %931, i32 0, i32 1
  %933 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %932, i32 0, i32 14
  %934 = load i32, i32* %933, align 8
  %935 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %936 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %935, i32 0, i32 1
  %937 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %936, i32 0, i32 38
  %938 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %937, align 8
  %939 = call i32 @nla_put(%struct.sk_buff* %929, i32 %930, i32 %934, %struct.nl80211_vendor_cmd_info* %938)
  %940 = icmp ne i32 %939, 0
  br i1 %940, label %941, label %942

941:                                              ; preds = %928, %915
  br label %1500

942:                                              ; preds = %928, %909
  %943 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %944 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %943, i32 0, i32 1
  %945 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %944, i32 0, i32 37
  %946 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %945, align 8
  %947 = icmp ne %struct.nl80211_vendor_cmd_info* %946, null
  br i1 %947, label %948, label %958

948:                                              ; preds = %942
  %949 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %950 = load i32, i32* @NL80211_ATTR_VHT_CAPABILITY_MASK, align 4
  %951 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %952 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %951, i32 0, i32 1
  %953 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %952, i32 0, i32 37
  %954 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %953, align 8
  %955 = call i32 @nla_put(%struct.sk_buff* %949, i32 %950, i32 4, %struct.nl80211_vendor_cmd_info* %954)
  %956 = icmp ne i32 %955, 0
  br i1 %956, label %957, label %958

957:                                              ; preds = %948
  br label %1500

958:                                              ; preds = %948, %942
  %959 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %960 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %961 = load i32, i32* @ETH_ALEN, align 4
  %962 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %963 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %962, i32 0, i32 1
  %964 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %963, i32 0, i32 36
  %965 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %964, align 8
  %966 = call i32 @nla_put(%struct.sk_buff* %959, i32 %960, i32 %961, %struct.nl80211_vendor_cmd_info* %965)
  %967 = icmp ne i32 %966, 0
  br i1 %967, label %968, label %969

968:                                              ; preds = %958
  br label %1500

969:                                              ; preds = %958
  %970 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %971 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %970, i32 0, i32 1
  %972 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %971, i32 0, i32 35
  %973 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %972, align 8
  %974 = call i32 @is_zero_ether_addr(%struct.nl80211_vendor_cmd_info* %973)
  %975 = icmp ne i32 %974, 0
  br i1 %975, label %987, label %976

976:                                              ; preds = %969
  %977 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %978 = load i32, i32* @NL80211_ATTR_MAC_MASK, align 4
  %979 = load i32, i32* @ETH_ALEN, align 4
  %980 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %981 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %980, i32 0, i32 1
  %982 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %981, i32 0, i32 35
  %983 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %982, align 8
  %984 = call i32 @nla_put(%struct.sk_buff* %977, i32 %978, i32 %979, %struct.nl80211_vendor_cmd_info* %983)
  %985 = icmp ne i32 %984, 0
  br i1 %985, label %986, label %987

986:                                              ; preds = %976
  br label %1500

987:                                              ; preds = %976, %969
  %988 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %989 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %988, i32 0, i32 1
  %990 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %989, i32 0, i32 15
  %991 = load i32, i32* %990, align 4
  %992 = icmp sgt i32 %991, 1
  br i1 %992, label %993, label %1033

993:                                              ; preds = %987
  %994 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %995 = load i32, i32* @NL80211_ATTR_MAC_ADDRS, align 4
  %996 = call i8* @nla_nest_start(%struct.sk_buff* %994, i32 %995)
  store i8* %996, i8** %31, align 8
  %997 = load i8*, i8** %31, align 8
  %998 = icmp ne i8* %997, null
  br i1 %998, label %1000, label %999

999:                                              ; preds = %993
  br label %1500

1000:                                             ; preds = %993
  store i32 0, i32* %24, align 4
  br label %1001

1001:                                             ; preds = %1026, %1000
  %1002 = load i32, i32* %24, align 4
  %1003 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1004 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1003, i32 0, i32 1
  %1005 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1004, i32 0, i32 15
  %1006 = load i32, i32* %1005, align 4
  %1007 = icmp slt i32 %1002, %1006
  br i1 %1007, label %1008, label %1029

1008:                                             ; preds = %1001
  %1009 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1010 = load i32, i32* %24, align 4
  %1011 = add nsw i32 %1010, 1
  %1012 = load i32, i32* @ETH_ALEN, align 4
  %1013 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1014 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1013, i32 0, i32 1
  %1015 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1014, i32 0, i32 34
  %1016 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1015, align 8
  %1017 = load i32, i32* %24, align 4
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1016, i64 %1018
  %1020 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1019, i32 0, i32 0
  %1021 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %1020, align 8
  %1022 = call i32 @nla_put(%struct.sk_buff* %1009, i32 %1011, i32 %1012, %struct.nl80211_vendor_cmd_info* %1021)
  %1023 = icmp ne i32 %1022, 0
  br i1 %1023, label %1024, label %1025

1024:                                             ; preds = %1008
  br label %1500

1025:                                             ; preds = %1008
  br label %1026

1026:                                             ; preds = %1025
  %1027 = load i32, i32* %24, align 4
  %1028 = add nsw i32 %1027, 1
  store i32 %1028, i32* %24, align 4
  br label %1001

1029:                                             ; preds = %1001
  %1030 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1031 = load i8*, i8** %31, align 8
  %1032 = call i32 @nla_nest_end(%struct.sk_buff* %1030, i8* %1031)
  br label %1033

1033:                                             ; preds = %1029, %987
  %1034 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %1035 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %1034, i32 0, i32 0
  %1036 = load i32, i32* %1035, align 4
  %1037 = add nsw i32 %1036, 1
  store i32 %1037, i32* %1035, align 4
  br label %1495

1038:                                             ; preds = %96
  %1039 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1040 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1041 = call i32 @nl80211_send_coalesce(%struct.sk_buff* %1039, %struct.cfg80211_registered_device* %1040)
  %1042 = icmp ne i32 %1041, 0
  br i1 %1042, label %1043, label %1044

1043:                                             ; preds = %1038
  br label %1500

1044:                                             ; preds = %1038
  %1045 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1046 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1045, i32 0, i32 1
  %1047 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1046, i32 0, i32 5
  %1048 = load i32, i32* %1047, align 4
  %1049 = load i32, i32* @WIPHY_FLAG_SUPPORTS_5_10_MHZ, align 4
  %1050 = and i32 %1048, %1049
  %1051 = icmp ne i32 %1050, 0
  br i1 %1051, label %1052, label %1063

1052:                                             ; preds = %1044
  %1053 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1054 = load i32, i32* @NL80211_ATTR_SUPPORT_5_MHZ, align 4
  %1055 = call i32 @nla_put_flag(%struct.sk_buff* %1053, i32 %1054)
  %1056 = icmp ne i32 %1055, 0
  br i1 %1056, label %1062, label %1057

1057:                                             ; preds = %1052
  %1058 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1059 = load i32, i32* @NL80211_ATTR_SUPPORT_10_MHZ, align 4
  %1060 = call i32 @nla_put_flag(%struct.sk_buff* %1058, i32 %1059)
  %1061 = icmp ne i32 %1060, 0
  br i1 %1061, label %1062, label %1063

1062:                                             ; preds = %1057, %1052
  br label %1500

1063:                                             ; preds = %1057, %1044
  %1064 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1065 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1064, i32 0, i32 1
  %1066 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1065, i32 0, i32 16
  %1067 = load i32, i32* %1066, align 8
  %1068 = icmp ne i32 %1067, 0
  br i1 %1068, label %1069, label %1079

1069:                                             ; preds = %1063
  %1070 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1071 = load i32, i32* @NL80211_ATTR_MAX_AP_ASSOC_STA, align 4
  %1072 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1073 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1072, i32 0, i32 1
  %1074 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1073, i32 0, i32 16
  %1075 = load i32, i32* %1074, align 8
  %1076 = call i64 @nla_put_u32(%struct.sk_buff* %1070, i32 %1071, i32 %1075)
  %1077 = icmp ne i64 %1076, 0
  br i1 %1077, label %1078, label %1079

1078:                                             ; preds = %1069
  br label %1500

1079:                                             ; preds = %1069, %1063
  %1080 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %1081 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %1080, i32 0, i32 0
  %1082 = load i32, i32* %1081, align 4
  %1083 = add nsw i32 %1082, 1
  store i32 %1083, i32* %1081, align 4
  br label %1495

1084:                                             ; preds = %96
  %1085 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1086 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1085, i32 0, i32 1
  %1087 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1086, i32 0, i32 17
  %1088 = load i32, i32* %1087, align 4
  %1089 = icmp ne i32 %1088, 0
  br i1 %1089, label %1090, label %1131

1090:                                             ; preds = %1084
  %1091 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1092 = load i32, i32* @NL80211_ATTR_VENDOR_DATA, align 4
  %1093 = call i8* @nla_nest_start_noflag(%struct.sk_buff* %1091, i32 %1092)
  %1094 = bitcast i8* %1093 to %struct.nlattr*
  store %struct.nlattr* %1094, %struct.nlattr** %33, align 8
  %1095 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %1096 = icmp ne %struct.nlattr* %1095, null
  br i1 %1096, label %1098, label %1097

1097:                                             ; preds = %1090
  br label %1500

1098:                                             ; preds = %1090
  store i32 0, i32* %24, align 4
  br label %1099

1099:                                             ; preds = %1123, %1098
  %1100 = load i32, i32* %24, align 4
  %1101 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1102 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1101, i32 0, i32 1
  %1103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1102, i32 0, i32 17
  %1104 = load i32, i32* %1103, align 4
  %1105 = icmp slt i32 %1100, %1104
  br i1 %1105, label %1106, label %1126

1106:                                             ; preds = %1099
  %1107 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1108 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1107, i32 0, i32 1
  %1109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1108, i32 0, i32 33
  %1110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1109, align 8
  %1111 = load i32, i32* %24, align 4
  %1112 = sext i32 %1111 to i64
  %1113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1110, i64 %1112
  %1114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1113, i32 0, i32 0
  store %struct.nl80211_vendor_cmd_info* %1114, %struct.nl80211_vendor_cmd_info** %32, align 8
  %1115 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1116 = load i32, i32* %24, align 4
  %1117 = add nsw i32 %1116, 1
  %1118 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %32, align 8
  %1119 = call i32 @nla_put(%struct.sk_buff* %1115, i32 %1117, i32 4, %struct.nl80211_vendor_cmd_info* %1118)
  %1120 = icmp ne i32 %1119, 0
  br i1 %1120, label %1121, label %1122

1121:                                             ; preds = %1106
  br label %1500

1122:                                             ; preds = %1106
  br label %1123

1123:                                             ; preds = %1122
  %1124 = load i32, i32* %24, align 4
  %1125 = add nsw i32 %1124, 1
  store i32 %1125, i32* %24, align 4
  br label %1099

1126:                                             ; preds = %1099
  %1127 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1128 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %1129 = bitcast %struct.nlattr* %1128 to i8*
  %1130 = call i32 @nla_nest_end(%struct.sk_buff* %1127, i8* %1129)
  br label %1131

1131:                                             ; preds = %1126, %1084
  %1132 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1133 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1132, i32 0, i32 1
  %1134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1133, i32 0, i32 18
  %1135 = load i32, i32* %1134, align 8
  %1136 = icmp ne i32 %1135, 0
  br i1 %1136, label %1137, label %1177

1137:                                             ; preds = %1131
  %1138 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1139 = load i32, i32* @NL80211_ATTR_VENDOR_EVENTS, align 4
  %1140 = call i8* @nla_nest_start_noflag(%struct.sk_buff* %1138, i32 %1139)
  %1141 = bitcast i8* %1140 to %struct.nlattr*
  store %struct.nlattr* %1141, %struct.nlattr** %35, align 8
  %1142 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %1143 = icmp ne %struct.nlattr* %1142, null
  br i1 %1143, label %1145, label %1144

1144:                                             ; preds = %1137
  br label %1500

1145:                                             ; preds = %1137
  store i32 0, i32* %24, align 4
  br label %1146

1146:                                             ; preds = %1169, %1145
  %1147 = load i32, i32* %24, align 4
  %1148 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1149 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1148, i32 0, i32 1
  %1150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1149, i32 0, i32 18
  %1151 = load i32, i32* %1150, align 8
  %1152 = icmp slt i32 %1147, %1151
  br i1 %1152, label %1153, label %1172

1153:                                             ; preds = %1146
  %1154 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1155 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1154, i32 0, i32 1
  %1156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1155, i32 0, i32 32
  %1157 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %1156, align 8
  %1158 = load i32, i32* %24, align 4
  %1159 = sext i32 %1158 to i64
  %1160 = getelementptr inbounds %struct.nl80211_vendor_cmd_info, %struct.nl80211_vendor_cmd_info* %1157, i64 %1159
  store %struct.nl80211_vendor_cmd_info* %1160, %struct.nl80211_vendor_cmd_info** %34, align 8
  %1161 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1162 = load i32, i32* %24, align 4
  %1163 = add nsw i32 %1162, 1
  %1164 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %34, align 8
  %1165 = call i32 @nla_put(%struct.sk_buff* %1161, i32 %1163, i32 4, %struct.nl80211_vendor_cmd_info* %1164)
  %1166 = icmp ne i32 %1165, 0
  br i1 %1166, label %1167, label %1168

1167:                                             ; preds = %1153
  br label %1500

1168:                                             ; preds = %1153
  br label %1169

1169:                                             ; preds = %1168
  %1170 = load i32, i32* %24, align 4
  %1171 = add nsw i32 %1170, 1
  store i32 %1171, i32* %24, align 4
  br label %1146

1172:                                             ; preds = %1146
  %1173 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1174 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %1175 = bitcast %struct.nlattr* %1174 to i8*
  %1176 = call i32 @nla_nest_end(%struct.sk_buff* %1173, i8* %1175)
  br label %1177

1177:                                             ; preds = %1172, %1131
  %1178 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %1179 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %1178, i32 0, i32 0
  %1180 = load i32, i32* %1179, align 4
  %1181 = add nsw i32 %1180, 1
  store i32 %1181, i32* %1179, align 4
  br label %1495

1182:                                             ; preds = %96
  %1183 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1184 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1183, i32 0, i32 1
  %1185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1184, i32 0, i32 5
  %1186 = load i32, i32* %1185, align 4
  %1187 = load i32, i32* @WIPHY_FLAG_HAS_CHANNEL_SWITCH, align 4
  %1188 = and i32 %1186, %1187
  %1189 = icmp ne i32 %1188, 0
  br i1 %1189, label %1190, label %1200

1190:                                             ; preds = %1182
  %1191 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1192 = load i32, i32* @NL80211_ATTR_MAX_CSA_COUNTERS, align 4
  %1193 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1194 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1193, i32 0, i32 1
  %1195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1194, i32 0, i32 31
  %1196 = load i32, i32* %1195, align 8
  %1197 = call i32 @nla_put_u8(%struct.sk_buff* %1191, i32 %1192, i32 %1196)
  %1198 = icmp ne i32 %1197, 0
  br i1 %1198, label %1199, label %1200

1199:                                             ; preds = %1190
  br label %1500

1200:                                             ; preds = %1190, %1182
  %1201 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1202 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1201, i32 0, i32 1
  %1203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1202, i32 0, i32 19
  %1204 = load i32, i32* %1203, align 4
  %1205 = load i32, i32* @REGULATORY_WIPHY_SELF_MANAGED, align 4
  %1206 = and i32 %1204, %1205
  %1207 = icmp ne i32 %1206, 0
  br i1 %1207, label %1208, label %1214

1208:                                             ; preds = %1200
  %1209 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1210 = load i32, i32* @NL80211_ATTR_WIPHY_SELF_MANAGED_REG, align 4
  %1211 = call i32 @nla_put_flag(%struct.sk_buff* %1209, i32 %1210)
  %1212 = icmp ne i32 %1211, 0
  br i1 %1212, label %1213, label %1214

1213:                                             ; preds = %1208
  br label %1500

1214:                                             ; preds = %1208, %1200
  %1215 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1216 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1215, i32 0, i32 1
  %1217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1216, i32 0, i32 20
  %1218 = load i32, i32* %1217, align 8
  %1219 = icmp ne i32 %1218, 0
  br i1 %1219, label %1220, label %1230

1220:                                             ; preds = %1214
  %1221 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1222 = load i32, i32* @NL80211_ATTR_SCHED_SCAN_MAX_REQS, align 4
  %1223 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1224 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1223, i32 0, i32 1
  %1225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1224, i32 0, i32 20
  %1226 = load i32, i32* %1225, align 8
  %1227 = call i64 @nla_put_u32(%struct.sk_buff* %1221, i32 %1222, i32 %1226)
  %1228 = icmp ne i64 %1227, 0
  br i1 %1228, label %1229, label %1230

1229:                                             ; preds = %1220
  br label %1500

1230:                                             ; preds = %1220, %1214
  %1231 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1232 = load i32, i32* @NL80211_ATTR_EXT_FEATURES, align 4
  %1233 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1234 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1233, i32 0, i32 1
  %1235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1234, i32 0, i32 30
  %1236 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %1235, align 8
  %1237 = call i32 @nla_put(%struct.sk_buff* %1231, i32 %1232, i32 8, %struct.nl80211_vendor_cmd_info* %1236)
  %1238 = icmp ne i32 %1237, 0
  br i1 %1238, label %1239, label %1240

1239:                                             ; preds = %1230
  br label %1500

1240:                                             ; preds = %1230
  %1241 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1242 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1241, i32 0, i32 1
  %1243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1242, i32 0, i32 21
  %1244 = load i32, i32* %1243, align 4
  %1245 = icmp ne i32 %1244, 0
  br i1 %1245, label %1246, label %1282

1246:                                             ; preds = %1240
  %1247 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1248 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1247, i32 0, i32 1
  %1249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1248, i32 0, i32 21
  %1250 = load i32, i32* %1249, align 4
  store i32 %1250, i32* %37, align 4
  %1251 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1252 = load i32, i32* @NL80211_ATTR_BSS_SELECT, align 4
  %1253 = call i8* @nla_nest_start_noflag(%struct.sk_buff* %1251, i32 %1252)
  %1254 = bitcast i8* %1253 to %struct.nlattr*
  store %struct.nlattr* %1254, %struct.nlattr** %36, align 8
  %1255 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %1256 = icmp ne %struct.nlattr* %1255, null
  br i1 %1256, label %1258, label %1257

1257:                                             ; preds = %1246
  br label %1500

1258:                                             ; preds = %1246
  store i32 0, i32* %24, align 4
  br label %1259

1259:                                             ; preds = %1272, %1258
  %1260 = load i32, i32* %37, align 4
  %1261 = icmp ne i32 %1260, 0
  br i1 %1261, label %1262, label %1277

1262:                                             ; preds = %1259
  %1263 = load i32, i32* %37, align 4
  %1264 = and i32 %1263, 1
  %1265 = icmp ne i32 %1264, 0
  br i1 %1265, label %1266, label %1272

1266:                                             ; preds = %1262
  %1267 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1268 = load i32, i32* %24, align 4
  %1269 = call i32 @nla_put_flag(%struct.sk_buff* %1267, i32 %1268)
  %1270 = icmp ne i32 %1269, 0
  br i1 %1270, label %1271, label %1272

1271:                                             ; preds = %1266
  br label %1500

1272:                                             ; preds = %1266, %1262
  %1273 = load i32, i32* %24, align 4
  %1274 = add nsw i32 %1273, 1
  store i32 %1274, i32* %24, align 4
  %1275 = load i32, i32* %37, align 4
  %1276 = ashr i32 %1275, 1
  store i32 %1276, i32* %37, align 4
  br label %1259

1277:                                             ; preds = %1259
  %1278 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1279 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %1280 = bitcast %struct.nlattr* %1279 to i8*
  %1281 = call i32 @nla_nest_end(%struct.sk_buff* %1278, i8* %1280)
  br label %1282

1282:                                             ; preds = %1277, %1240
  %1283 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %1284 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %1283, i32 0, i32 0
  %1285 = load i32, i32* %1284, align 4
  %1286 = add nsw i32 %1285, 1
  store i32 %1286, i32* %1284, align 4
  br label %1495

1287:                                             ; preds = %96
  %1288 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1289 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1288, i32 0, i32 1
  %1290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1289, i32 0, i32 22
  %1291 = load i32, i32* %1290, align 8
  %1292 = icmp ne i32 %1291, 0
  br i1 %1292, label %1293, label %1394

1293:                                             ; preds = %1287
  %1294 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1295 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1294, i32 0, i32 1
  %1296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1295, i32 0, i32 29
  %1297 = load %struct.wiphy_iftype_ext_capab*, %struct.wiphy_iftype_ext_capab** %1296, align 8
  %1298 = icmp ne %struct.wiphy_iftype_ext_capab* %1297, null
  br i1 %1298, label %1299, label %1394

1299:                                             ; preds = %1293
  %1300 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1301 = load i32, i32* @NL80211_ATTR_IFTYPE_EXT_CAPA, align 4
  %1302 = call i8* @nla_nest_start_noflag(%struct.sk_buff* %1300, i32 %1301)
  %1303 = bitcast i8* %1302 to %struct.nlattr*
  store %struct.nlattr* %1303, %struct.nlattr** %39, align 8
  %1304 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %1305 = icmp ne %struct.nlattr* %1304, null
  br i1 %1305, label %1307, label %1306

1306:                                             ; preds = %1299
  br label %1500

1307:                                             ; preds = %1299
  %1308 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %1309 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %1308, i32 0, i32 3
  %1310 = load i32, i32* %1309, align 4
  store i32 %1310, i32* %24, align 4
  br label %1311

1311:                                             ; preds = %1374, %1307
  %1312 = load i32, i32* %24, align 4
  %1313 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1314 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1313, i32 0, i32 1
  %1315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1314, i32 0, i32 22
  %1316 = load i32, i32* %1315, align 8
  %1317 = icmp slt i32 %1312, %1316
  br i1 %1317, label %1318, label %1377

1318:                                             ; preds = %1311
  %1319 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1320 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1319, i32 0, i32 1
  %1321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1320, i32 0, i32 29
  %1322 = load %struct.wiphy_iftype_ext_capab*, %struct.wiphy_iftype_ext_capab** %1321, align 8
  %1323 = load i32, i32* %24, align 4
  %1324 = sext i32 %1323 to i64
  %1325 = getelementptr inbounds %struct.wiphy_iftype_ext_capab, %struct.wiphy_iftype_ext_capab* %1322, i64 %1324
  store %struct.wiphy_iftype_ext_capab* %1325, %struct.wiphy_iftype_ext_capab** %40, align 8
  %1326 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1327 = load i32, i32* %24, align 4
  %1328 = call i8* @nla_nest_start_noflag(%struct.sk_buff* %1326, i32 %1327)
  %1329 = bitcast i8* %1328 to %struct.nlattr*
  store %struct.nlattr* %1329, %struct.nlattr** %38, align 8
  %1330 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %1331 = icmp ne %struct.nlattr* %1330, null
  br i1 %1331, label %1332, label %1362

1332:                                             ; preds = %1318
  %1333 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1334 = load i32, i32* @NL80211_ATTR_IFTYPE, align 4
  %1335 = load %struct.wiphy_iftype_ext_capab*, %struct.wiphy_iftype_ext_capab** %40, align 8
  %1336 = getelementptr inbounds %struct.wiphy_iftype_ext_capab, %struct.wiphy_iftype_ext_capab* %1335, i32 0, i32 0
  %1337 = load i32, i32* %1336, align 8
  %1338 = call i64 @nla_put_u32(%struct.sk_buff* %1333, i32 %1334, i32 %1337)
  %1339 = icmp ne i64 %1338, 0
  br i1 %1339, label %1362, label %1340

1340:                                             ; preds = %1332
  %1341 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1342 = load i32, i32* @NL80211_ATTR_EXT_CAPA, align 4
  %1343 = load %struct.wiphy_iftype_ext_capab*, %struct.wiphy_iftype_ext_capab** %40, align 8
  %1344 = getelementptr inbounds %struct.wiphy_iftype_ext_capab, %struct.wiphy_iftype_ext_capab* %1343, i32 0, i32 1
  %1345 = load i32, i32* %1344, align 4
  %1346 = load %struct.wiphy_iftype_ext_capab*, %struct.wiphy_iftype_ext_capab** %40, align 8
  %1347 = getelementptr inbounds %struct.wiphy_iftype_ext_capab, %struct.wiphy_iftype_ext_capab* %1346, i32 0, i32 3
  %1348 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %1347, align 8
  %1349 = call i32 @nla_put(%struct.sk_buff* %1341, i32 %1342, i32 %1345, %struct.nl80211_vendor_cmd_info* %1348)
  %1350 = icmp ne i32 %1349, 0
  br i1 %1350, label %1362, label %1351

1351:                                             ; preds = %1340
  %1352 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1353 = load i32, i32* @NL80211_ATTR_EXT_CAPA_MASK, align 4
  %1354 = load %struct.wiphy_iftype_ext_capab*, %struct.wiphy_iftype_ext_capab** %40, align 8
  %1355 = getelementptr inbounds %struct.wiphy_iftype_ext_capab, %struct.wiphy_iftype_ext_capab* %1354, i32 0, i32 1
  %1356 = load i32, i32* %1355, align 4
  %1357 = load %struct.wiphy_iftype_ext_capab*, %struct.wiphy_iftype_ext_capab** %40, align 8
  %1358 = getelementptr inbounds %struct.wiphy_iftype_ext_capab, %struct.wiphy_iftype_ext_capab* %1357, i32 0, i32 2
  %1359 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %1358, align 8
  %1360 = call i32 @nla_put(%struct.sk_buff* %1352, i32 %1353, i32 %1356, %struct.nl80211_vendor_cmd_info* %1359)
  %1361 = icmp ne i32 %1360, 0
  br i1 %1361, label %1362, label %1363

1362:                                             ; preds = %1351, %1340, %1332, %1318
  br label %1500

1363:                                             ; preds = %1351
  %1364 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1365 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %1366 = bitcast %struct.nlattr* %1365 to i8*
  %1367 = call i32 @nla_nest_end(%struct.sk_buff* %1364, i8* %1366)
  %1368 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %1369 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %1368, i32 0, i32 4
  %1370 = load i32, i32* %1369, align 4
  %1371 = icmp ne i32 %1370, 0
  br i1 %1371, label %1372, label %1373

1372:                                             ; preds = %1363
  br label %1377

1373:                                             ; preds = %1363
  br label %1374

1374:                                             ; preds = %1373
  %1375 = load i32, i32* %24, align 4
  %1376 = add nsw i32 %1375, 1
  store i32 %1376, i32* %24, align 4
  br label %1311

1377:                                             ; preds = %1372, %1311
  %1378 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1379 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %1380 = bitcast %struct.nlattr* %1379 to i8*
  %1381 = call i32 @nla_nest_end(%struct.sk_buff* %1378, i8* %1380)
  %1382 = load i32, i32* %24, align 4
  %1383 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1384 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1383, i32 0, i32 1
  %1385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1384, i32 0, i32 22
  %1386 = load i32, i32* %1385, align 8
  %1387 = icmp slt i32 %1382, %1386
  br i1 %1387, label %1388, label %1393

1388:                                             ; preds = %1377
  %1389 = load i32, i32* %24, align 4
  %1390 = add nsw i32 %1389, 1
  %1391 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %1392 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %1391, i32 0, i32 3
  store i32 %1390, i32* %1392, align 4
  br label %1495

1393:                                             ; preds = %1377
  br label %1394

1394:                                             ; preds = %1393, %1293, %1287
  %1395 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1396 = load i32, i32* @NL80211_ATTR_BANDS, align 4
  %1397 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1398 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1397, i32 0, i32 1
  %1399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1398, i32 0, i32 23
  %1400 = load i32, i32* %1399, align 4
  %1401 = call i64 @nla_put_u32(%struct.sk_buff* %1395, i32 %1396, i32 %1400)
  %1402 = icmp ne i64 %1401, 0
  br i1 %1402, label %1403, label %1404

1403:                                             ; preds = %1394
  br label %1500

1404:                                             ; preds = %1394
  %1405 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1406 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1405, i32 0, i32 1
  %1407 = load i32, i32* @NL80211_EXT_FEATURE_TXQS, align 4
  %1408 = call i32 @wiphy_ext_feature_isset(%struct.TYPE_11__* %1406, i32 %1407)
  %1409 = icmp ne i32 %1408, 0
  br i1 %1409, label %1410, label %1453

1410:                                             ; preds = %1404
  %1411 = bitcast %struct.cfg80211_txq_stats* %41 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %1411, i8 0, i64 4, i1 false)
  %1412 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1413 = call i32 @rdev_get_txq_stats(%struct.cfg80211_registered_device* %1412, i32* null, %struct.cfg80211_txq_stats* %41)
  store i32 %1413, i32* %42, align 4
  %1414 = load i32, i32* %42, align 4
  %1415 = icmp ne i32 %1414, 0
  br i1 %1415, label %1422, label %1416

1416:                                             ; preds = %1410
  %1417 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1418 = load i32, i32* @NL80211_ATTR_TXQ_STATS, align 4
  %1419 = call i32 @nl80211_put_txq_stats(%struct.sk_buff* %1417, %struct.cfg80211_txq_stats* %41, i32 %1418)
  %1420 = icmp ne i32 %1419, 0
  br i1 %1420, label %1422, label %1421

1421:                                             ; preds = %1416
  br label %1500

1422:                                             ; preds = %1416, %1410
  %1423 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1424 = load i32, i32* @NL80211_ATTR_TXQ_LIMIT, align 4
  %1425 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1426 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1425, i32 0, i32 1
  %1427 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1426, i32 0, i32 24
  %1428 = load i32, i32* %1427, align 8
  %1429 = call i64 @nla_put_u32(%struct.sk_buff* %1423, i32 %1424, i32 %1428)
  %1430 = icmp ne i64 %1429, 0
  br i1 %1430, label %1431, label %1432

1431:                                             ; preds = %1422
  br label %1500

1432:                                             ; preds = %1422
  %1433 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1434 = load i32, i32* @NL80211_ATTR_TXQ_MEMORY_LIMIT, align 4
  %1435 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1436 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1435, i32 0, i32 1
  %1437 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1436, i32 0, i32 25
  %1438 = load i32, i32* %1437, align 4
  %1439 = call i64 @nla_put_u32(%struct.sk_buff* %1433, i32 %1434, i32 %1438)
  %1440 = icmp ne i64 %1439, 0
  br i1 %1440, label %1441, label %1442

1441:                                             ; preds = %1432
  br label %1500

1442:                                             ; preds = %1432
  %1443 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1444 = load i32, i32* @NL80211_ATTR_TXQ_QUANTUM, align 4
  %1445 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1446 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1445, i32 0, i32 1
  %1447 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1446, i32 0, i32 26
  %1448 = load i32, i32* %1447, align 8
  %1449 = call i64 @nla_put_u32(%struct.sk_buff* %1443, i32 %1444, i32 %1448)
  %1450 = icmp ne i64 %1449, 0
  br i1 %1450, label %1451, label %1452

1451:                                             ; preds = %1442
  br label %1500

1452:                                             ; preds = %1442
  br label %1453

1453:                                             ; preds = %1452, %1404
  %1454 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %1455 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %1454, i32 0, i32 0
  %1456 = load i32, i32* %1455, align 4
  %1457 = add nsw i32 %1456, 1
  store i32 %1457, i32* %1455, align 4
  br label %1495

1458:                                             ; preds = %96
  %1459 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1460 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1461 = call i32 @nl80211_send_pmsr_capa(%struct.cfg80211_registered_device* %1459, %struct.sk_buff* %1460)
  %1462 = icmp ne i32 %1461, 0
  br i1 %1462, label %1463, label %1464

1463:                                             ; preds = %1458
  br label %1500

1464:                                             ; preds = %1458
  %1465 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %1466 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %1465, i32 0, i32 0
  %1467 = load i32, i32* %1466, align 4
  %1468 = add nsw i32 %1467, 1
  store i32 %1468, i32* %1466, align 4
  br label %1495

1469:                                             ; preds = %96
  %1470 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1471 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1470, i32 0, i32 1
  %1472 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1471, i32 0, i32 28
  %1473 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %1472, align 8
  %1474 = icmp ne %struct.nl80211_vendor_cmd_info* %1473, null
  br i1 %1474, label %1475, label %1492

1475:                                             ; preds = %1469
  %1476 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1477 = load i32, i32* @NL80211_ATTR_AKM_SUITES, align 4
  %1478 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1479 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1478, i32 0, i32 1
  %1480 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1479, i32 0, i32 27
  %1481 = load i32, i32* %1480, align 4
  %1482 = sext i32 %1481 to i64
  %1483 = mul i64 4, %1482
  %1484 = trunc i64 %1483 to i32
  %1485 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %1486 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1485, i32 0, i32 1
  %1487 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1486, i32 0, i32 28
  %1488 = load %struct.nl80211_vendor_cmd_info*, %struct.nl80211_vendor_cmd_info** %1487, align 8
  %1489 = call i32 @nla_put(%struct.sk_buff* %1476, i32 %1477, i32 %1484, %struct.nl80211_vendor_cmd_info* %1488)
  %1490 = icmp ne i32 %1489, 0
  br i1 %1490, label %1491, label %1492

1491:                                             ; preds = %1475
  br label %1500

1492:                                             ; preds = %1475, %1469
  %1493 = load %struct.nl80211_dump_wiphy_state*, %struct.nl80211_dump_wiphy_state** %15, align 8
  %1494 = getelementptr inbounds %struct.nl80211_dump_wiphy_state, %struct.nl80211_dump_wiphy_state* %1493, i32 0, i32 0
  store i32 0, i32* %1494, align 4
  br label %1495

1495:                                             ; preds = %96, %1492, %1464, %1453, %1388, %1282, %1177, %1079, %1033, %904, %824, %788, %732, %654, %460, %439, %311
  br label %1496

1496:                                             ; preds = %1495, %95
  %1497 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1498 = load i8*, i8** %16, align 8
  %1499 = call i32 @genlmsg_end(%struct.sk_buff* %1497, i8* %1498)
  store i32 0, i32* %8, align 4
  br label %1506

1500:                                             ; preds = %1491, %1463, %1451, %1441, %1431, %1421, %1403, %1362, %1306, %1271, %1257, %1239, %1229, %1213, %1199, %1167, %1144, %1121, %1097, %1078, %1062, %1043, %1024, %999, %986, %968, %957, %941, %903, %879, %863, %843, %814, %804, %778, %772, %758, %670, %663, %562, %545, %526, %507, %497, %469, %450, %427, %390, %372, %353, %339, %329, %301, %287, %273, %259, %245, %231, %217, %90
  %1501 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %1502 = load i8*, i8** %16, align 8
  %1503 = call i32 @genlmsg_cancel(%struct.sk_buff* %1501, i8* %1502)
  %1504 = load i32, i32* @EMSGSIZE, align 4
  %1505 = sub nsw i32 0, %1504
  store i32 %1505, i32* %8, align 4
  br label %1506

1506:                                             ; preds = %1500, %1496, %65, %55
  %1507 = load i32, i32* %8, align 4
  ret i32 %1507
}

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @wiphy_name(%struct.TYPE_11__*) #1

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, %struct.nl80211_vendor_cmd_info*) #1

declare dso_local i32 @rdev_get_antenna(%struct.cfg80211_registered_device*, i32*, i32*) #1

declare dso_local i32 @nl80211_put_iftypes(%struct.sk_buff*, i32, i32) #1

declare dso_local i8* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nl80211_send_band_rateinfo(%struct.sk_buff*, %struct.ieee80211_supported_band*) #1

declare dso_local i32 @nl80211_msg_put_channel(%struct.sk_buff*, %struct.TYPE_11__*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @nl80211_add_commands_unsplit(%struct.cfg80211_registered_device*, %struct.sk_buff*) #1

declare dso_local i32 @CMD(i32, i32) #1

declare dso_local i32 @nl80211_send_mgmt_stypes(%struct.sk_buff*, %struct.ieee80211_txrx_stypes*) #1

declare dso_local i32 @nl80211_put_iface_combinations(%struct.TYPE_11__*, %struct.sk_buff*, i32) #1

declare dso_local i32 @is_zero_ether_addr(%struct.nl80211_vendor_cmd_info*) #1

declare dso_local i8* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @nl80211_send_coalesce(%struct.sk_buff*, %struct.cfg80211_registered_device*) #1

declare dso_local i32 @wiphy_ext_feature_isset(%struct.TYPE_11__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rdev_get_txq_stats(%struct.cfg80211_registered_device*, i32*, %struct.cfg80211_txq_stats*) #1

declare dso_local i32 @nl80211_put_txq_stats(%struct.sk_buff*, %struct.cfg80211_txq_stats*, i32) #1

declare dso_local i32 @nl80211_send_pmsr_capa(%struct.cfg80211_registered_device*, %struct.sk_buff*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
