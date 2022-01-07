; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_send_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_send_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_15__, %struct.TYPE_19__, %struct.ieee80211_local* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_19__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32, i32, i32, i32, %struct.ieee80211_mgd_assoc_data* }
%struct.ieee80211_mgd_assoc_data = type { i32, i64, i32, i64, i64, i64, i64, i32, i32, i64, i64, %struct.TYPE_21__*, i64, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.ieee80211_local = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_25__, i64, %struct.TYPE_20__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_20__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, i32, i64, %struct.TYPE_27__*, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_mgmt = type { i32*, i32*, i32*, %struct.TYPE_24__, i8* }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i8*, i8* }
%struct.TYPE_22__ = type { i32*, i8*, i8* }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }
%struct.element = type { i32, i32* }
%struct.TYPE_18__ = type { i32 }

@IEEE80211_HE_PPE_THRES_MAX_LEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_SHORT_SLOT_TIME = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SPECTRUM_MGMT = common dso_local global i32 0, align 4
@SPECTRUM_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STA_ENABLE_RRM = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_RADIO_MEASURE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_REASSOC_REQ = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ASSOC_REQ = common dso_local global i32 0, align 4
@SUPPORTS_ONLY_HE_MULTI_BSSID = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_HE = common dso_local global i32 0, align 4
@WLAN_EXT_CAPA3_MULTI_BSSID_SUPPORT = common dso_local global i32 0, align 4
@ieee80211_send_assoc.before_ht = internal constant [12 x i32] [i32 133, i32 130, i32 145, i32 139, i32 132, i32 134, i32 138, i32 135, i32 141, i32 144, i32 136, i32 131], align 16
@ieee80211_send_assoc.after_ric = internal constant [9 x i32] [i32 131, i32 143, i32 154, i32 152, i32 137, i32 129, i32 142, i32 128, i32 140], align 16
@IEEE80211_STA_DISABLE_HT = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_VHT = common dso_local global i32 0, align 4
@ieee80211_send_assoc.before_vht = internal constant [5 x i32] [i32 154, i32 152, i32 137, i32 129, i32 142], align 16
@ieee80211_send_assoc.before_he = internal constant [13 x i32] [i32 140, i32 153, i32 146, i32 153, i32 147, i32 153, i32 148, i32 153, i32 149, i32 153, i32 151, i32 153, i32 150], align 16
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IEEE80211_WMM_IE_STA_QOSINFO_SP_SHIFT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_DONT_ENCRYPT = common dso_local global i32 0, align 4
@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_MLME_CONN_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*)* @ieee80211_send_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_send_assoc(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_if_managed*, align 8
  %5 = alloca %struct.ieee80211_mgd_assoc_data*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_mgmt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ieee80211_supported_band*, align 8
  %20 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %21 = alloca %struct.ieee80211_channel*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.element*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %26, i32 0, i32 3
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %27, align 8
  store %struct.ieee80211_local* %28, %struct.ieee80211_local** %3, align 8
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  store %struct.ieee80211_if_managed* %31, %struct.ieee80211_if_managed** %4, align 8
  %32 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %32, i32 0, i32 5
  %34 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %33, align 8
  store %struct.ieee80211_mgd_assoc_data* %34, %struct.ieee80211_mgd_assoc_data** %5, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %22, align 4
  %35 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %36 = call i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data* %35)
  %37 = call i32 (...) @rcu_read_lock()
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %41)
  store %struct.ieee80211_chanctx_conf* %42, %struct.ieee80211_chanctx_conf** %20, align 8
  %43 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %20, align 8
  %44 = icmp ne %struct.ieee80211_chanctx_conf* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %1
  %50 = call i32 (...) @rcu_read_unlock()
  br label %874

51:                                               ; preds = %1
  %52 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %20, align 8
  %53 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %54, align 8
  store %struct.ieee80211_channel* %55, %struct.ieee80211_channel** %21, align 8
  %56 = call i32 (...) @rcu_read_unlock()
  %57 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %58 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %61, align 8
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %21, align 8
  %64 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %62, i64 %65
  %67 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %66, align 8
  store %struct.ieee80211_supported_band* %67, %struct.ieee80211_supported_band** %19, align 8
  %68 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %69 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %68, i32 0, i32 1
  %70 = call i32 @ieee80211_vif_get_shift(%struct.TYPE_15__* %69)
  store i32 %70, i32* %17, align 4
  %71 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %72 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %71, i32 0, i32 12
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %51
  %76 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %20, align 8
  %77 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %76, i32 0, i32 0
  %78 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %79 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %80 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %79, i32 0, i32 13
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %83 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %82, i32 0, i32 12
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @ieee80211_parse_bitrates(%struct.TYPE_16__* %77, %struct.ieee80211_supported_band* %78, i32 %81, i64 %84, i32* %22)
  store i32 %85, i32* %15, align 4
  br label %104

86:                                               ; preds = %51
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %100, %86
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %90 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %87
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @BIT(i32 %94)
  %96 = load i32, i32* %22, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %22, align 4
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %87

103:                                              ; preds = %87
  br label %104

104:                                              ; preds = %103, %75
  %105 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %106 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, 72
  %110 = add i64 %109, 2
  %111 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %112 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = add i64 %110, %114
  %116 = add i64 %115, 4
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = add i64 %116, %118
  %120 = add i64 %119, 4
  %121 = add i64 %120, 2
  %122 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %123 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 2, %124
  %126 = sext i32 %125 to i64
  %127 = add i64 %121, %126
  %128 = add i64 %127, 2
  %129 = add i64 %128, 4
  %130 = add i64 %129, 2
  %131 = add i64 %130, 4
  %132 = add i64 %131, 2
  %133 = add i64 %132, 1
  %134 = add i64 %133, 4
  %135 = add i64 %134, 4
  %136 = load i64, i64* @IEEE80211_HE_PPE_THRES_MAX_LEN, align 8
  %137 = add i64 %135, %136
  %138 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %139 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %137, %140
  %142 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %143 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 16, i32 0
  %148 = sext i32 %147 to i64
  %149 = add i64 %141, %148
  %150 = add i64 %149, 9
  %151 = load i32, i32* @GFP_KERNEL, align 4
  %152 = call %struct.sk_buff* @alloc_skb(i64 %150, i32 %151)
  store %struct.sk_buff* %152, %struct.sk_buff** %6, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %154 = icmp ne %struct.sk_buff* %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %104
  br label %874

156:                                              ; preds = %104
  %157 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %158 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %159 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @skb_reserve(%struct.sk_buff* %157, i64 %161)
  %163 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  store i32 %163, i32* %18, align 4
  %164 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %165 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %156
  %170 = load i32, i32* @WLAN_CAPABILITY_SHORT_SLOT_TIME, align 4
  %171 = load i32, i32* %18, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %18, align 4
  %173 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %174 = load i32, i32* %18, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %18, align 4
  br label %176

176:                                              ; preds = %169, %156
  %177 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %178 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %176
  %184 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %185 = load i32, i32* %18, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %18, align 4
  br label %187

187:                                              ; preds = %183, %176
  %188 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %189 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @WLAN_CAPABILITY_SPECTRUM_MGMT, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %187
  %195 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %196 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %195, i32 0, i32 0
  %197 = load i32, i32* @SPECTRUM_MGMT, align 4
  %198 = call i64 @ieee80211_hw_check(%struct.TYPE_17__* %196, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load i32, i32* @WLAN_CAPABILITY_SPECTRUM_MGMT, align 4
  %202 = load i32, i32* %18, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %18, align 4
  br label %204

204:                                              ; preds = %200, %194, %187
  %205 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %206 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @IEEE80211_STA_ENABLE_RRM, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %204
  %212 = load i32, i32* @WLAN_CAPABILITY_RADIO_MEASURE, align 4
  %213 = load i32, i32* %18, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %18, align 4
  br label %215

215:                                              ; preds = %211, %204
  %216 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %217 = call %struct.ieee80211_mgmt* @skb_put_zero(%struct.sk_buff* %216, i32 24)
  store %struct.ieee80211_mgmt* %217, %struct.ieee80211_mgmt** %7, align 8
  %218 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %219 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %222 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %221, i32 0, i32 11
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @ETH_ALEN, align 8
  %227 = call i32 @memcpy(i32* %220, i64 %225, i64 %226)
  %228 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %229 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %232 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @ETH_ALEN, align 8
  %236 = call i32 @memcpy(i32* %230, i64 %234, i64 %235)
  %237 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %238 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %241 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %240, i32 0, i32 11
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @ETH_ALEN, align 8
  %246 = call i32 @memcpy(i32* %239, i64 %244, i64 %245)
  %247 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %248 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %247, i32 0, i32 10
  %249 = load i64, i64* %248, align 8
  %250 = call i32 @is_zero_ether_addr(i64 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %287, label %252

252:                                              ; preds = %215
  %253 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %254 = call i32* @skb_put(%struct.sk_buff* %253, i32 10)
  %255 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %256 = load i32, i32* @IEEE80211_STYPE_REASSOC_REQ, align 4
  %257 = or i32 %255, %256
  %258 = call i8* @cpu_to_le16(i32 %257)
  %259 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %260 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %259, i32 0, i32 4
  store i8* %258, i8** %260, align 8
  %261 = load i32, i32* %18, align 4
  %262 = call i8* @cpu_to_le16(i32 %261)
  %263 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %264 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 2
  store i8* %262, i8** %266, align 8
  %267 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %268 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i8* @cpu_to_le16(i32 %271)
  %273 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %274 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 1
  store i8* %272, i8** %276, align 8
  %277 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %278 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %283 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %282, i32 0, i32 10
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @ETH_ALEN, align 8
  %286 = call i32 @memcpy(i32* %281, i64 %284, i64 %285)
  br label %312

287:                                              ; preds = %215
  %288 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %289 = call i32* @skb_put(%struct.sk_buff* %288, i32 4)
  %290 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %291 = load i32, i32* @IEEE80211_STYPE_ASSOC_REQ, align 4
  %292 = or i32 %290, %291
  %293 = call i8* @cpu_to_le16(i32 %292)
  %294 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %295 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %294, i32 0, i32 4
  store i8* %293, i8** %295, align 8
  %296 = load i32, i32* %18, align 4
  %297 = call i8* @cpu_to_le16(i32 %296)
  %298 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %299 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 1
  store i8* %297, i8** %301, align 8
  %302 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %303 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = call i8* @cpu_to_le16(i32 %306)
  %308 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %309 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %310, i32 0, i32 0
  store i8* %307, i8** %311, align 8
  br label %312

312:                                              ; preds = %287, %252
  %313 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %314 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %315 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = add nsw i32 2, %316
  %318 = call i32* @skb_put(%struct.sk_buff* %313, i32 %317)
  store i32* %318, i32** %8, align 8
  %319 = load i32*, i32** %8, align 8
  store i32* %319, i32** %10, align 8
  %320 = load i32*, i32** %8, align 8
  %321 = getelementptr inbounds i32, i32* %320, i32 1
  store i32* %321, i32** %8, align 8
  store i32 133, i32* %320, align 4
  %322 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %323 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32*, i32** %8, align 8
  %326 = getelementptr inbounds i32, i32* %325, i32 1
  store i32* %326, i32** %8, align 8
  store i32 %324, i32* %325, align 4
  %327 = load i32*, i32** %8, align 8
  %328 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %329 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %328, i32 0, i32 9
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %332 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = sext i32 %333 to i64
  %335 = call i32 @memcpy(i32* %327, i64 %330, i64 %334)
  %336 = load i32, i32* %15, align 4
  store i32 %336, i32* %16, align 4
  %337 = load i32, i32* %16, align 4
  %338 = icmp sgt i32 %337, 8
  br i1 %338, label %339, label %340

339:                                              ; preds = %312
  store i32 8, i32* %16, align 4
  br label %340

340:                                              ; preds = %339, %312
  %341 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %342 = load i32, i32* %16, align 4
  %343 = add nsw i32 %342, 2
  %344 = call i32* @skb_put(%struct.sk_buff* %341, i32 %343)
  store i32* %344, i32** %8, align 8
  %345 = load i32*, i32** %8, align 8
  %346 = getelementptr inbounds i32, i32* %345, i32 1
  store i32* %346, i32** %8, align 8
  store i32 130, i32* %345, align 4
  %347 = load i32, i32* %16, align 4
  %348 = load i32*, i32** %8, align 8
  %349 = getelementptr inbounds i32, i32* %348, i32 1
  store i32* %349, i32** %8, align 8
  store i32 %347, i32* %348, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %350

350:                                              ; preds = %384, %340
  %351 = load i32, i32* %13, align 4
  %352 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %353 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp slt i32 %351, %354
  br i1 %355, label %356, label %387

356:                                              ; preds = %350
  %357 = load i32, i32* %13, align 4
  %358 = call i32 @BIT(i32 %357)
  %359 = load i32, i32* %22, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %383

362:                                              ; preds = %356
  %363 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %364 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %363, i32 0, i32 4
  %365 = load %struct.TYPE_26__*, %struct.TYPE_26__** %364, align 8
  %366 = load i32, i32* %13, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %17, align 4
  %372 = shl i32 1, %371
  %373 = mul nsw i32 5, %372
  %374 = call i32 @DIV_ROUND_UP(i32 %370, i32 %373)
  store i32 %374, i32* %23, align 4
  %375 = load i32, i32* %23, align 4
  %376 = load i32*, i32** %8, align 8
  %377 = getelementptr inbounds i32, i32* %376, i32 1
  store i32* %377, i32** %8, align 8
  store i32 %375, i32* %376, align 4
  %378 = load i32, i32* %14, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %14, align 4
  %380 = icmp eq i32 %379, 8
  br i1 %380, label %381, label %382

381:                                              ; preds = %362
  br label %387

382:                                              ; preds = %362
  br label %383

383:                                              ; preds = %382, %356
  br label %384

384:                                              ; preds = %383
  %385 = load i32, i32* %13, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %13, align 4
  br label %350

387:                                              ; preds = %381, %350
  %388 = load i32, i32* %15, align 4
  %389 = load i32, i32* %14, align 4
  %390 = icmp sgt i32 %388, %389
  br i1 %390, label %391, label %440

391:                                              ; preds = %387
  %392 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %393 = load i32, i32* %15, align 4
  %394 = load i32, i32* %14, align 4
  %395 = sub nsw i32 %393, %394
  %396 = add nsw i32 %395, 2
  %397 = call i32* @skb_put(%struct.sk_buff* %392, i32 %396)
  store i32* %397, i32** %8, align 8
  %398 = load i32*, i32** %8, align 8
  %399 = getelementptr inbounds i32, i32* %398, i32 1
  store i32* %399, i32** %8, align 8
  store i32 145, i32* %398, align 4
  %400 = load i32, i32* %15, align 4
  %401 = load i32, i32* %14, align 4
  %402 = sub nsw i32 %400, %401
  %403 = load i32*, i32** %8, align 8
  %404 = getelementptr inbounds i32, i32* %403, i32 1
  store i32* %404, i32** %8, align 8
  store i32 %402, i32* %403, align 4
  %405 = load i32, i32* %13, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %13, align 4
  br label %407

407:                                              ; preds = %436, %391
  %408 = load i32, i32* %13, align 4
  %409 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %410 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = icmp slt i32 %408, %411
  br i1 %412, label %413, label %439

413:                                              ; preds = %407
  %414 = load i32, i32* %13, align 4
  %415 = call i32 @BIT(i32 %414)
  %416 = load i32, i32* %22, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %435

419:                                              ; preds = %413
  %420 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %421 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %420, i32 0, i32 4
  %422 = load %struct.TYPE_26__*, %struct.TYPE_26__** %421, align 8
  %423 = load i32, i32* %13, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %422, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* %17, align 4
  %429 = shl i32 1, %428
  %430 = mul nsw i32 5, %429
  %431 = call i32 @DIV_ROUND_UP(i32 %427, i32 %430)
  store i32 %431, i32* %24, align 4
  %432 = load i32, i32* %24, align 4
  %433 = load i32*, i32** %8, align 8
  %434 = getelementptr inbounds i32, i32* %433, i32 1
  store i32* %434, i32** %8, align 8
  store i32 %432, i32* %433, align 4
  br label %435

435:                                              ; preds = %419, %413
  br label %436

436:                                              ; preds = %435
  %437 = load i32, i32* %13, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %13, align 4
  br label %407

439:                                              ; preds = %407
  br label %440

440:                                              ; preds = %439, %387
  %441 = load i32, i32* %18, align 4
  %442 = load i32, i32* @WLAN_CAPABILITY_SPECTRUM_MGMT, align 4
  %443 = and i32 %441, %442
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %450, label %445

445:                                              ; preds = %440
  %446 = load i32, i32* %18, align 4
  %447 = load i32, i32* @WLAN_CAPABILITY_RADIO_MEASURE, align 4
  %448 = and i32 %446, %447
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %464

450:                                              ; preds = %445, %440
  %451 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %452 = call i32* @skb_put(%struct.sk_buff* %451, i32 4)
  store i32* %452, i32** %8, align 8
  %453 = load i32*, i32** %8, align 8
  %454 = getelementptr inbounds i32, i32* %453, i32 1
  store i32* %454, i32** %8, align 8
  store i32 139, i32* %453, align 4
  %455 = load i32*, i32** %8, align 8
  %456 = getelementptr inbounds i32, i32* %455, i32 1
  store i32* %456, i32** %8, align 8
  store i32 2, i32* %455, align 4
  %457 = load i32*, i32** %8, align 8
  %458 = getelementptr inbounds i32, i32* %457, i32 1
  store i32* %458, i32** %8, align 8
  store i32 0, i32* %457, align 4
  %459 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %20, align 8
  %460 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %459, i32 0, i32 0
  %461 = call i32 @ieee80211_chandef_max_power(%struct.TYPE_16__* %460)
  %462 = load i32*, i32** %8, align 8
  %463 = getelementptr inbounds i32, i32* %462, i32 1
  store i32* %463, i32** %8, align 8
  store i32 %461, i32* %462, align 4
  br label %464

464:                                              ; preds = %450, %445
  %465 = load i32, i32* %18, align 4
  %466 = load i32, i32* @WLAN_CAPABILITY_SPECTRUM_MGMT, align 4
  %467 = and i32 %465, %466
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %509

469:                                              ; preds = %464
  %470 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %471 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %472 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = mul nsw i32 2, %473
  %475 = add nsw i32 %474, 2
  %476 = call i32* @skb_put(%struct.sk_buff* %470, i32 %475)
  store i32* %476, i32** %8, align 8
  %477 = load i32*, i32** %8, align 8
  %478 = getelementptr inbounds i32, i32* %477, i32 1
  store i32* %478, i32** %8, align 8
  store i32 132, i32* %477, align 4
  %479 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %480 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = mul nsw i32 2, %481
  %483 = load i32*, i32** %8, align 8
  %484 = getelementptr inbounds i32, i32* %483, i32 1
  store i32* %484, i32** %8, align 8
  store i32 %482, i32* %483, align 4
  store i32 0, i32* %13, align 4
  br label %485

485:                                              ; preds = %505, %469
  %486 = load i32, i32* %13, align 4
  %487 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %488 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 4
  %490 = icmp slt i32 %486, %489
  br i1 %490, label %491, label %508

491:                                              ; preds = %485
  %492 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %493 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %492, i32 0, i32 3
  %494 = load %struct.TYPE_27__*, %struct.TYPE_27__** %493, align 8
  %495 = load i32, i32* %13, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %494, i64 %496
  %498 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 4
  %500 = call i32 @ieee80211_frequency_to_channel(i32 %499)
  %501 = load i32*, i32** %8, align 8
  %502 = getelementptr inbounds i32, i32* %501, i32 1
  store i32* %502, i32** %8, align 8
  store i32 %500, i32* %501, align 4
  %503 = load i32*, i32** %8, align 8
  %504 = getelementptr inbounds i32, i32* %503, i32 1
  store i32* %504, i32** %8, align 8
  store i32 1, i32* %503, align 4
  br label %505

505:                                              ; preds = %491
  %506 = load i32, i32* %13, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %13, align 4
  br label %485

508:                                              ; preds = %485
  br label %509

509:                                              ; preds = %508, %464
  %510 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %511 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %510, i32 0, i32 0
  %512 = load i32, i32* @SUPPORTS_ONLY_HE_MULTI_BSSID, align 4
  %513 = call i64 @ieee80211_hw_check(%struct.TYPE_17__* %511, i32 %512)
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %553

515:                                              ; preds = %509
  %516 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %517 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = load i32, i32* @IEEE80211_STA_DISABLE_HE, align 4
  %520 = and i32 %518, %519
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %553, label %522

522:                                              ; preds = %515
  %523 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %524 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %523, i32 0, i32 1
  %525 = load i64, i64* %524, align 8
  %526 = icmp ne i64 %525, 0
  br i1 %526, label %527, label %553

527:                                              ; preds = %522
  %528 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %529 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %528, i32 0, i32 4
  %530 = load i64, i64* %529, align 8
  %531 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %532 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %531, i32 0, i32 1
  %533 = load i64, i64* %532, align 8
  %534 = call i64 @cfg80211_find_elem(i32 152, i64 %530, i64 %533)
  %535 = inttoptr i64 %534 to i8*
  %536 = bitcast i8* %535 to %struct.element*
  store %struct.element* %536, %struct.element** %25, align 8
  %537 = load %struct.element*, %struct.element** %25, align 8
  %538 = icmp ne %struct.element* %537, null
  br i1 %538, label %539, label %552

539:                                              ; preds = %527
  %540 = load %struct.element*, %struct.element** %25, align 8
  %541 = getelementptr inbounds %struct.element, %struct.element* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = icmp sge i32 %542, 3
  br i1 %543, label %544, label %552

544:                                              ; preds = %539
  %545 = load i32, i32* @WLAN_EXT_CAPA3_MULTI_BSSID_SUPPORT, align 4
  %546 = load %struct.element*, %struct.element** %25, align 8
  %547 = getelementptr inbounds %struct.element, %struct.element* %546, i32 0, i32 1
  %548 = load i32*, i32** %547, align 8
  %549 = getelementptr inbounds i32, i32* %548, i64 2
  %550 = load i32, i32* %549, align 4
  %551 = or i32 %550, %545
  store i32 %551, i32* %549, align 4
  br label %552

552:                                              ; preds = %544, %539, %527
  br label %553

553:                                              ; preds = %552, %522, %515, %509
  %554 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %555 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %554, i32 0, i32 1
  %556 = load i64, i64* %555, align 8
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %558, label %580

558:                                              ; preds = %553
  %559 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %560 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %559, i32 0, i32 4
  %561 = load i64, i64* %560, align 8
  %562 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %563 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %562, i32 0, i32 1
  %564 = load i64, i64* %563, align 8
  %565 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([12 x i32], [12 x i32]* @ieee80211_send_assoc.before_ht, i64 0, i64 0))
  %566 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @ieee80211_send_assoc.after_ric, i64 0, i64 0))
  %567 = load i64, i64* %11, align 8
  %568 = call i64 @ieee80211_ie_split_ric(i64 %561, i64 %564, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @ieee80211_send_assoc.before_ht, i64 0, i64 0), i32 %565, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @ieee80211_send_assoc.after_ric, i64 0, i64 0), i32 %566, i64 %567)
  store i64 %568, i64* %12, align 8
  %569 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %570 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %571 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %570, i32 0, i32 4
  %572 = load i64, i64* %571, align 8
  %573 = load i64, i64* %11, align 8
  %574 = add i64 %572, %573
  %575 = load i64, i64* %12, align 8
  %576 = load i64, i64* %11, align 8
  %577 = sub i64 %575, %576
  %578 = call i32 @skb_put_data(%struct.sk_buff* %569, i64 %574, i64 %577)
  %579 = load i64, i64* %12, align 8
  store i64 %579, i64* %11, align 8
  br label %580

580:                                              ; preds = %558, %553
  %581 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %582 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 8
  %584 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %585 = and i32 %583, %584
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %595

587:                                              ; preds = %580
  %588 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %589 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 8
  %591 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %592 = and i32 %590, %591
  %593 = icmp ne i32 %592, 0
  %594 = xor i1 %593, true
  br label %595

595:                                              ; preds = %587, %580
  %596 = phi i1 [ false, %580 ], [ %594, %587 ]
  %597 = zext i1 %596 to i32
  %598 = call i64 @WARN_ON_ONCE(i32 %597)
  %599 = icmp ne i64 %598, 0
  br i1 %599, label %600, label %606

600:                                              ; preds = %595
  %601 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %602 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %603 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %602, i32 0, i32 0
  %604 = load i32, i32* %603, align 8
  %605 = or i32 %604, %601
  store i32 %605, i32* %603, align 8
  br label %606

606:                                              ; preds = %600, %595
  %607 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %608 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %607, i32 0, i32 0
  %609 = load i32, i32* %608, align 8
  %610 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %611 = and i32 %609, %610
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %625, label %613

613:                                              ; preds = %606
  %614 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %615 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %616 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %617 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %616, i32 0, i32 8
  %618 = load i32, i32* %617, align 4
  %619 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %620 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %21, align 8
  %621 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %622 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 8
  %624 = call i32 @ieee80211_add_ht_ie(%struct.ieee80211_sub_if_data* %614, %struct.sk_buff* %615, i32 %618, %struct.ieee80211_supported_band* %619, %struct.ieee80211_channel* %620, i32 %623)
  br label %625

625:                                              ; preds = %613, %606
  %626 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %627 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %626, i32 0, i32 1
  %628 = load i64, i64* %627, align 8
  %629 = icmp ne i64 %628, 0
  br i1 %629, label %630, label %651

630:                                              ; preds = %625
  %631 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %632 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %631, i32 0, i32 4
  %633 = load i64, i64* %632, align 8
  %634 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %635 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %634, i32 0, i32 1
  %636 = load i64, i64* %635, align 8
  %637 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @ieee80211_send_assoc.before_vht, i64 0, i64 0))
  %638 = load i64, i64* %11, align 8
  %639 = call i64 @ieee80211_ie_split(i64 %633, i64 %636, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @ieee80211_send_assoc.before_vht, i64 0, i64 0), i32 %637, i64 %638)
  store i64 %639, i64* %12, align 8
  %640 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %641 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %642 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %641, i32 0, i32 4
  %643 = load i64, i64* %642, align 8
  %644 = load i64, i64* %11, align 8
  %645 = add i64 %643, %644
  %646 = load i64, i64* %12, align 8
  %647 = load i64, i64* %11, align 8
  %648 = sub i64 %646, %647
  %649 = call i32 @skb_put_data(%struct.sk_buff* %640, i64 %645, i64 %648)
  %650 = load i64, i64* %12, align 8
  store i64 %650, i64* %11, align 8
  br label %651

651:                                              ; preds = %630, %625
  %652 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %653 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %652, i32 0, i32 1
  %654 = load i64, i64* %653, align 8
  %655 = icmp ne i64 %654, 0
  br i1 %655, label %656, label %683

656:                                              ; preds = %651
  %657 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %658 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %657, i32 0, i32 4
  %659 = load i64, i64* %658, align 8
  %660 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %661 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %660, i32 0, i32 1
  %662 = load i64, i64* %661, align 8
  %663 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([13 x i32], [13 x i32]* @ieee80211_send_assoc.before_he, i64 0, i64 0))
  %664 = load i64, i64* %11, align 8
  %665 = call i64 @ieee80211_ie_split(i64 %659, i64 %662, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @ieee80211_send_assoc.before_he, i64 0, i64 0), i32 %663, i64 %664)
  store i64 %665, i64* %12, align 8
  %666 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %667 = load i64, i64* %12, align 8
  %668 = load i64, i64* %11, align 8
  %669 = sub i64 %667, %668
  %670 = trunc i64 %669 to i32
  %671 = call i32* @skb_put(%struct.sk_buff* %666, i32 %670)
  store i32* %671, i32** %8, align 8
  %672 = load i32*, i32** %8, align 8
  %673 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %674 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %673, i32 0, i32 4
  %675 = load i64, i64* %674, align 8
  %676 = load i64, i64* %11, align 8
  %677 = add i64 %675, %676
  %678 = load i64, i64* %12, align 8
  %679 = load i64, i64* %11, align 8
  %680 = sub i64 %678, %679
  %681 = call i32 @memcpy(i32* %672, i64 %677, i64 %680)
  %682 = load i64, i64* %12, align 8
  store i64 %682, i64* %11, align 8
  br label %683

683:                                              ; preds = %656, %651
  %684 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %685 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %684, i32 0, i32 0
  %686 = load i32, i32* %685, align 8
  %687 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %688 = and i32 %686, %687
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %697, label %690

690:                                              ; preds = %683
  %691 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %692 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %693 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %694 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %695 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %694, i32 0, i32 7
  %696 = call i32 @ieee80211_add_vht_ie(%struct.ieee80211_sub_if_data* %691, %struct.sk_buff* %692, %struct.ieee80211_supported_band* %693, i32* %695)
  br label %697

697:                                              ; preds = %690, %683
  %698 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %699 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %698, i32 0, i32 0
  %700 = load i32, i32* %699, align 8
  %701 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %702 = and i32 %700, %701
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %717, label %704

704:                                              ; preds = %697
  %705 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %706 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %705, i32 0, i32 2
  %707 = load i64, i64* %706, align 8
  %708 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %709 = icmp eq i64 %707, %708
  br i1 %709, label %710, label %723

710:                                              ; preds = %704
  %711 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %712 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %711, i32 0, i32 0
  %713 = load i32, i32* %712, align 8
  %714 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %715 = and i32 %713, %714
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %717, label %723

717:                                              ; preds = %710, %697
  %718 = load i32, i32* @IEEE80211_STA_DISABLE_HE, align 4
  %719 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %720 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %719, i32 0, i32 0
  %721 = load i32, i32* %720, align 8
  %722 = or i32 %721, %718
  store i32 %722, i32* %720, align 8
  br label %723

723:                                              ; preds = %717, %710, %704
  %724 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %725 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %724, i32 0, i32 0
  %726 = load i32, i32* %725, align 8
  %727 = load i32, i32* @IEEE80211_STA_DISABLE_HE, align 4
  %728 = and i32 %726, %727
  %729 = icmp ne i32 %728, 0
  br i1 %729, label %735, label %730

730:                                              ; preds = %723
  %731 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %732 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %733 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  %734 = call i32 @ieee80211_add_he_ie(%struct.ieee80211_sub_if_data* %731, %struct.sk_buff* %732, %struct.ieee80211_supported_band* %733)
  br label %735

735:                                              ; preds = %730, %723
  %736 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %737 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %736, i32 0, i32 1
  %738 = load i64, i64* %737, align 8
  %739 = icmp ne i64 %738, 0
  br i1 %739, label %740, label %760

740:                                              ; preds = %735
  %741 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %742 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %741, i32 0, i32 4
  %743 = load i64, i64* %742, align 8
  %744 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %745 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %744, i32 0, i32 1
  %746 = load i64, i64* %745, align 8
  %747 = load i64, i64* %11, align 8
  %748 = call i64 @ieee80211_ie_split_vendor(i64 %743, i64 %746, i64 %747)
  store i64 %748, i64* %12, align 8
  %749 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %750 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %751 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %750, i32 0, i32 4
  %752 = load i64, i64* %751, align 8
  %753 = load i64, i64* %11, align 8
  %754 = add i64 %752, %753
  %755 = load i64, i64* %12, align 8
  %756 = load i64, i64* %11, align 8
  %757 = sub i64 %755, %756
  %758 = call i32 @skb_put_data(%struct.sk_buff* %749, i64 %754, i64 %757)
  %759 = load i64, i64* %12, align 8
  store i64 %759, i64* %11, align 8
  br label %760

760:                                              ; preds = %740, %735
  %761 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %762 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %761, i32 0, i32 6
  %763 = load i64, i64* %762, align 8
  %764 = icmp ne i64 %763, 0
  br i1 %764, label %765, label %787

765:                                              ; preds = %760
  %766 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %767 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %766, i32 0, i32 5
  %768 = load i64, i64* %767, align 8
  %769 = icmp ne i64 %768, 0
  br i1 %769, label %770, label %781

770:                                              ; preds = %765
  %771 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %772 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %771, i32 0, i32 1
  %773 = load i32, i32* %772, align 4
  store i32 %773, i32* %9, align 4
  %774 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %775 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %774, i32 0, i32 2
  %776 = load i32, i32* %775, align 8
  %777 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_SP_SHIFT, align 4
  %778 = shl i32 %776, %777
  %779 = load i32, i32* %9, align 4
  %780 = or i32 %779, %778
  store i32 %780, i32* %9, align 4
  br label %782

781:                                              ; preds = %765
  store i32 0, i32* %9, align 4
  br label %782

782:                                              ; preds = %781, %770
  %783 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %784 = call i32* @skb_put(%struct.sk_buff* %783, i32 9)
  %785 = load i32, i32* %9, align 4
  %786 = call i32* @ieee80211_add_wmm_info_ie(i32* %784, i32 %785)
  store i32* %786, i32** %8, align 8
  br label %787

787:                                              ; preds = %782, %760
  %788 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %789 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %788, i32 0, i32 1
  %790 = load i64, i64* %789, align 8
  %791 = icmp ne i64 %790, 0
  br i1 %791, label %792, label %806

792:                                              ; preds = %787
  %793 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %794 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %793, i32 0, i32 1
  %795 = load i64, i64* %794, align 8
  store i64 %795, i64* %12, align 8
  %796 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %797 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %798 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %797, i32 0, i32 4
  %799 = load i64, i64* %798, align 8
  %800 = load i64, i64* %11, align 8
  %801 = add i64 %799, %800
  %802 = load i64, i64* %12, align 8
  %803 = load i64, i64* %11, align 8
  %804 = sub i64 %802, %803
  %805 = call i32 @skb_put_data(%struct.sk_buff* %796, i64 %801, i64 %804)
  br label %806

806:                                              ; preds = %792, %787
  %807 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %808 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %807, i32 0, i32 3
  %809 = load i64, i64* %808, align 8
  %810 = icmp ne i64 %809, 0
  br i1 %810, label %811, label %819

811:                                              ; preds = %806
  %812 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %813 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %5, align 8
  %814 = call i64 @fils_encrypt_assoc_req(%struct.sk_buff* %812, %struct.ieee80211_mgd_assoc_data* %813)
  %815 = icmp slt i64 %814, 0
  br i1 %815, label %816, label %819

816:                                              ; preds = %811
  %817 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %818 = call i32 @dev_kfree_skb(%struct.sk_buff* %817)
  br label %874

819:                                              ; preds = %811, %806
  %820 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %821 = call i32* @skb_tail_pointer(%struct.sk_buff* %820)
  store i32* %821, i32** %8, align 8
  %822 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %823 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %822, i32 0, i32 4
  %824 = load i32, i32* %823, align 8
  %825 = call i32 @kfree(i32 %824)
  %826 = load i32*, i32** %10, align 8
  %827 = load i32*, i32** %8, align 8
  %828 = load i32*, i32** %10, align 8
  %829 = ptrtoint i32* %827 to i64
  %830 = ptrtoint i32* %828 to i64
  %831 = sub i64 %829, %830
  %832 = sdiv exact i64 %831, 4
  %833 = trunc i64 %832 to i32
  %834 = load i32, i32* @GFP_ATOMIC, align 4
  %835 = call i32 @kmemdup(i32* %826, i32 %833, i32 %834)
  %836 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %837 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %836, i32 0, i32 4
  store i32 %835, i32* %837, align 8
  %838 = load i32*, i32** %8, align 8
  %839 = load i32*, i32** %10, align 8
  %840 = ptrtoint i32* %838 to i64
  %841 = ptrtoint i32* %839 to i64
  %842 = sub i64 %840, %841
  %843 = sdiv exact i64 %842, 4
  %844 = trunc i64 %843 to i32
  %845 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %846 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %845, i32 0, i32 3
  store i32 %844, i32* %846, align 4
  %847 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %848 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %849 = call i32 @drv_mgd_prepare_tx(%struct.ieee80211_local* %847, %struct.ieee80211_sub_if_data* %848, i32 0)
  %850 = load i32, i32* @IEEE80211_TX_INTFL_DONT_ENCRYPT, align 4
  %851 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %852 = call %struct.TYPE_18__* @IEEE80211_SKB_CB(%struct.sk_buff* %851)
  %853 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %852, i32 0, i32 0
  %854 = load i32, i32* %853, align 4
  %855 = or i32 %854, %850
  store i32 %855, i32* %853, align 4
  %856 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %857 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %856, i32 0, i32 0
  %858 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %859 = call i64 @ieee80211_hw_check(%struct.TYPE_17__* %857, i32 %858)
  %860 = icmp ne i64 %859, 0
  br i1 %860, label %861, label %870

861:                                              ; preds = %819
  %862 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %863 = load i32, i32* @IEEE80211_TX_INTFL_MLME_CONN_TX, align 4
  %864 = or i32 %862, %863
  %865 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %866 = call %struct.TYPE_18__* @IEEE80211_SKB_CB(%struct.sk_buff* %865)
  %867 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %866, i32 0, i32 0
  %868 = load i32, i32* %867, align 4
  %869 = or i32 %868, %864
  store i32 %869, i32* %867, align 4
  br label %870

870:                                              ; preds = %861, %819
  %871 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %872 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %873 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %871, %struct.sk_buff* %872)
  br label %874

874:                                              ; preds = %870, %816, %155, %49
  ret void
}

declare dso_local i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_vif_get_shift(%struct.TYPE_15__*) #1

declare dso_local i32 @ieee80211_parse_bitrates(%struct.TYPE_16__*, %struct.ieee80211_supported_band*, i32, i64, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @ieee80211_hw_check(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.ieee80211_mgmt* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i32 @is_zero_ether_addr(i64) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ieee80211_chandef_max_power(%struct.TYPE_16__*) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i64 @cfg80211_find_elem(i32, i64, i64) #1

declare dso_local i64 @ieee80211_ie_split_ric(i64, i64, i32*, i32, i32*, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ieee80211_add_ht_ie(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32, %struct.ieee80211_supported_band*, %struct.ieee80211_channel*, i32) #1

declare dso_local i64 @ieee80211_ie_split(i64, i64, i32*, i32, i64) #1

declare dso_local i32 @ieee80211_add_vht_ie(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, %struct.ieee80211_supported_band*, i32*) #1

declare dso_local i32 @ieee80211_add_he_ie(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, %struct.ieee80211_supported_band*) #1

declare dso_local i64 @ieee80211_ie_split_vendor(i64, i64, i64) #1

declare dso_local i32* @ieee80211_add_wmm_info_ie(i32*, i32) #1

declare dso_local i64 @fils_encrypt_assoc_req(%struct.sk_buff*, %struct.ieee80211_mgd_assoc_data*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @drv_mgd_prepare_tx(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local %struct.TYPE_18__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
