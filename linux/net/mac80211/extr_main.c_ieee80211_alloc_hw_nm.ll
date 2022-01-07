; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_main.c_ieee80211_alloc_hw_nm.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_main.c_ieee80211_alloc_hw_nm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i8*, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__, i32, i8*, i8*, i64, %struct.wiphy* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wiphy = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32 }
%struct.ieee80211_ops = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_local = type { i32, i32, %struct.ieee80211_hw, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.ieee80211_ops* }

@NETDEV_ALIGN = common dso_local global i32 0, align 4
@mac80211_config_ops = common dso_local global i32 0, align 4
@ieee80211_default_mgmt_stypes = common dso_local global i32 0, align 4
@mac80211_wiphy_privid = common dso_local global i32 0, align 4
@WIPHY_FLAG_NETNS_OK = common dso_local global i32 0, align 4
@WIPHY_FLAG_4ADDR_AP = common dso_local global i32 0, align 4
@WIPHY_FLAG_4ADDR_STATION = common dso_local global i32 0, align 4
@WIPHY_FLAG_REPORTS_OBSS = common dso_local global i32 0, align 4
@WIPHY_FLAG_OFFCHAN_TX = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@NL80211_FEATURE_SK_TX_STATUS = common dso_local global i32 0, align 4
@NL80211_FEATURE_SAE = common dso_local global i32 0, align 4
@NL80211_FEATURE_HT_IBSS = common dso_local global i32 0, align 4
@NL80211_FEATURE_VIF_TXPOWER = common dso_local global i32 0, align 4
@NL80211_FEATURE_MAC_ON_CREATE = common dso_local global i32 0, align 4
@NL80211_FEATURE_USERSPACE_MPM = common dso_local global i32 0, align 4
@NL80211_FEATURE_FULL_AP_CLIENT_STATE = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_FILS_STA = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_CONTROL_PORT_OVER_NL80211 = common dso_local global i32 0, align 4
@NL80211_FEATURE_LOW_PRIORITY_SCAN = common dso_local global i32 0, align 4
@NL80211_FEATURE_AP_SCAN = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_SCAN_RANDOM_SN = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_SCAN_MIN_PREQ_CONTENT = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_TXQS = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_RRM = common dso_local global i32 0, align 4
@IEEE80211_MAX_AMPDU_BUF_HT = common dso_local global i8* null, align 8
@IEEE80211_INVAL_HW_QUEUE = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_MCS_HAVE_MCS = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_MCS_HAVE_GI = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_MCS_HAVE_BW = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_VHT_KNOWN_GI = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_VHT_KNOWN_BANDWIDTH = common dso_local global i32 0, align 4
@IEEE80211_DEFAULT_UAPSD_QUEUES = common dso_local global i32 0, align 4
@IEEE80211_DEFAULT_MAX_SP_LEN = common dso_local global i32 0, align 4
@IEEE80211_MAX_DATA_LEN = common dso_local global i32 0, align 4
@IEEE80211_UNSET_POWER_LEVEL = common dso_local global i32 0, align 4
@mac80211_ht_capa_mod_mask = common dso_local global i32 0, align 4
@mac80211_vht_capa_mod_mask = common dso_local global i32 0, align 4
@WLAN_EXT_CAPA8_OPMODE_NOTIF = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@AIRTIME_USE_TX = common dso_local global i32 0, align 4
@AIRTIME_USE_RX = common dso_local global i32 0, align 4
@ieee80211_scan_work = common dso_local global i32 0, align 4
@ieee80211_restart_work = common dso_local global i32 0, align 4
@ieee80211_dfs_radar_detected_work = common dso_local global i32 0, align 4
@ieee80211_reconfig_filter = common dso_local global i32 0, align 4
@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4
@ieee80211_dynamic_ps_enable_work = common dso_local global i32 0, align 4
@ieee80211_dynamic_ps_disable_work = common dso_local global i32 0, align 4
@ieee80211_dynamic_ps_timer = common dso_local global i32 0, align 4
@ieee80211_sched_scan_stopped_work = common dso_local global i32 0, align 4
@ieee80211_tdls_chsw_work = common dso_local global i32 0, align 4
@IEEE80211_MAX_QUEUES = common dso_local global i32 0, align 4
@ieee80211_tx_pending = common dso_local global i32 0, align 4
@ieee80211_wake_txqs = common dso_local global i32 0, align 4
@ieee80211_tasklet_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw_nm(i64 %0, %struct.ieee80211_ops* %1, i8* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211_ops*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wiphy*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.ieee80211_ops* %1, %struct.ieee80211_ops** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %13, i32 0, i32 18
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %3
  %18 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %18, i32 0, i32 17
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %17
  %23 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %23, i32 0, i32 16
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %28, i32 0, i32 15
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %33, i32 0, i32 14
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %38, i32 0, i32 13
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %43, i32 0, i32 12
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %42, %37, %32, %27, %22, %17, %3
  %49 = phi i1 [ true, %37 ], [ true, %32 ], [ true, %27 ], [ true, %22 ], [ true, %17 ], [ true, %3 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store %struct.ieee80211_hw* null, %struct.ieee80211_hw** %4, align 8
  br label %539

54:                                               ; preds = %48
  %55 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %56 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %55, i32 0, i32 11
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %61 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %60, i32 0, i32 10
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %66 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %65, i32 0, i32 9
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br label %69

69:                                               ; preds = %64, %59
  %70 = phi i1 [ true, %59 ], [ %68, %64 ]
  br label %71

71:                                               ; preds = %69, %54
  %72 = phi i1 [ false, %54 ], [ %70, %69 ]
  %73 = zext i1 %72 to i32
  %74 = call i64 @WARN_ON(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store %struct.ieee80211_hw* null, %struct.ieee80211_hw** %4, align 8
  br label %539

77:                                               ; preds = %71
  %78 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %79 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %86 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = add nsw i32 %84, %91
  %93 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %94 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = add nsw i32 %92, %99
  %101 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %102 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = add nsw i32 %100, %107
  %109 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %110 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = add nsw i32 %108, %115
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %77
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 5
  br label %122

122:                                              ; preds = %119, %77
  %123 = phi i1 [ false, %77 ], [ %121, %119 ]
  %124 = zext i1 %123 to i32
  %125 = call i64 @WARN_ON(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  store %struct.ieee80211_hw* null, %struct.ieee80211_hw** %4, align 8
  br label %539

128:                                              ; preds = %122
  %129 = load i32, i32* %10, align 4
  %130 = icmp eq i32 %129, 5
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* @NETDEV_ALIGN, align 4
  %133 = call i32 @ALIGN(i32 280, i32 %132)
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* %5, align 8
  %136 = add i64 %134, %135
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i8*, i8** %7, align 8
  %140 = call %struct.wiphy* @wiphy_new_nm(i32* @mac80211_config_ops, i32 %138, i8* %139)
  store %struct.wiphy* %140, %struct.wiphy** %11, align 8
  %141 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %142 = icmp ne %struct.wiphy* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %128
  store %struct.ieee80211_hw* null, %struct.ieee80211_hw** %4, align 8
  br label %539

144:                                              ; preds = %128
  %145 = load i32, i32* @ieee80211_default_mgmt_stypes, align 4
  %146 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %147 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %146, i32 0, i32 11
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @mac80211_wiphy_privid, align 4
  %149 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %150 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %149, i32 0, i32 10
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* @WIPHY_FLAG_NETNS_OK, align 4
  %152 = load i32, i32* @WIPHY_FLAG_4ADDR_AP, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @WIPHY_FLAG_4ADDR_STATION, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @WIPHY_FLAG_REPORTS_OBSS, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @WIPHY_FLAG_OFFCHAN_TX, align 4
  %159 = or i32 %157, %158
  %160 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %161 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %165 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %144
  %169 = load i32, i32* @WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL, align 4
  %170 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %171 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %168, %144
  %175 = load i32, i32* @NL80211_FEATURE_SK_TX_STATUS, align 4
  %176 = load i32, i32* @NL80211_FEATURE_SAE, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @NL80211_FEATURE_HT_IBSS, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @NL80211_FEATURE_VIF_TXPOWER, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @NL80211_FEATURE_MAC_ON_CREATE, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @NL80211_FEATURE_USERSPACE_MPM, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @NL80211_FEATURE_FULL_AP_CLIENT_STATE, align 4
  %187 = or i32 %185, %186
  %188 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %189 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %193 = load i32, i32* @NL80211_EXT_FEATURE_FILS_STA, align 4
  %194 = call i32 @wiphy_ext_feature_set(%struct.wiphy* %192, i32 %193)
  %195 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %196 = load i32, i32* @NL80211_EXT_FEATURE_CONTROL_PORT_OVER_NL80211, align 4
  %197 = call i32 @wiphy_ext_feature_set(%struct.wiphy* %195, i32 %196)
  %198 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %199 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %216, label %202

202:                                              ; preds = %174
  %203 = load i32, i32* @NL80211_FEATURE_LOW_PRIORITY_SCAN, align 4
  %204 = load i32, i32* @NL80211_FEATURE_AP_SCAN, align 4
  %205 = or i32 %203, %204
  %206 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %207 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %211 = load i32, i32* @NL80211_EXT_FEATURE_SCAN_RANDOM_SN, align 4
  %212 = call i32 @wiphy_ext_feature_set(%struct.wiphy* %210, i32 %211)
  %213 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %214 = load i32, i32* @NL80211_EXT_FEATURE_SCAN_MIN_PREQ_CONTENT, align 4
  %215 = call i32 @wiphy_ext_feature_set(%struct.wiphy* %213, i32 %214)
  br label %216

216:                                              ; preds = %202, %174
  %217 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %218 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %227, label %221

221:                                              ; preds = %216
  %222 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %223 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %224 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %221, %216
  %228 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %229 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %234 = load i32, i32* @NL80211_EXT_FEATURE_TXQS, align 4
  %235 = call i32 @wiphy_ext_feature_set(%struct.wiphy* %233, i32 %234)
  br label %236

236:                                              ; preds = %232, %227
  %237 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %238 = load i32, i32* @NL80211_EXT_FEATURE_RRM, align 4
  %239 = call i32 @wiphy_ext_feature_set(%struct.wiphy* %237, i32 %238)
  %240 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %241 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %240, i32 0, i32 2
  store i32 4, i32* %241, align 8
  %242 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %243 = call %struct.ieee80211_local* @wiphy_priv(%struct.wiphy* %242)
  store %struct.ieee80211_local* %243, %struct.ieee80211_local** %8, align 8
  %244 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %245 = call i64 @sta_info_init(%struct.ieee80211_local* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %236
  br label %536

248:                                              ; preds = %236
  %249 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %250 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %251 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %251, i32 0, i32 15
  store %struct.wiphy* %249, %struct.wiphy** %252, align 8
  %253 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %254 = bitcast %struct.ieee80211_local* %253 to i8*
  %255 = load i32, i32* @NETDEV_ALIGN, align 4
  %256 = call i32 @ALIGN(i32 280, i32 %255)
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %254, i64 %257
  %259 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %260 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %260, i32 0, i32 0
  store i8* %258, i8** %261, align 8
  %262 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %263 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %264 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %263, i32 0, i32 38
  store %struct.ieee80211_ops* %262, %struct.ieee80211_ops** %264, align 8
  %265 = load i32, i32* %12, align 4
  %266 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %267 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 8
  %268 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %269 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %269, i32 0, i32 1
  store i32 7, i32* %270, align 8
  %271 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %272 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %272, i32 0, i32 2
  store i32 1, i32* %273, align 4
  %274 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %275 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %275, i32 0, i32 3
  store i32 1, i32* %276, align 8
  %277 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %278 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %278, i32 0, i32 14
  store i64 0, i64* %279, align 8
  %280 = load i8*, i8** @IEEE80211_MAX_AMPDU_BUF_HT, align 8
  %281 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %282 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %282, i32 0, i32 13
  store i8* %280, i8** %283, align 8
  %284 = load i8*, i8** @IEEE80211_MAX_AMPDU_BUF_HT, align 8
  %285 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %286 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %286, i32 0, i32 12
  store i8* %284, i8** %287, align 8
  %288 = load i32, i32* @IEEE80211_INVAL_HW_QUEUE, align 4
  %289 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %290 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %290, i32 0, i32 11
  store i32 %288, i32* %291, align 8
  %292 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %293 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %292, i32 0, i32 9
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %296 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %296, i32 0, i32 10
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 1
  store i32 %294, i32* %298, align 4
  %299 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %300 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %299, i32 0, i32 8
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %303 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %303, i32 0, i32 10
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 0
  store i32 %301, i32* %305, align 8
  %306 = load i32, i32* @IEEE80211_RADIOTAP_MCS_HAVE_MCS, align 4
  %307 = load i32, i32* @IEEE80211_RADIOTAP_MCS_HAVE_GI, align 4
  %308 = or i32 %306, %307
  %309 = load i32, i32* @IEEE80211_RADIOTAP_MCS_HAVE_BW, align 4
  %310 = or i32 %308, %309
  %311 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %312 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %312, i32 0, i32 4
  store i32 %310, i32* %313, align 4
  %314 = load i32, i32* @IEEE80211_RADIOTAP_VHT_KNOWN_GI, align 4
  %315 = load i32, i32* @IEEE80211_RADIOTAP_VHT_KNOWN_BANDWIDTH, align 4
  %316 = or i32 %314, %315
  %317 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %318 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %318, i32 0, i32 5
  store i32 %316, i32* %319, align 8
  %320 = load i32, i32* @IEEE80211_DEFAULT_UAPSD_QUEUES, align 4
  %321 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %322 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %322, i32 0, i32 9
  store i32 %320, i32* %323, align 4
  %324 = load i32, i32* @IEEE80211_DEFAULT_MAX_SP_LEN, align 4
  %325 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %326 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %326, i32 0, i32 8
  store i32 %324, i32* %327, align 8
  %328 = load i32, i32* @IEEE80211_MAX_DATA_LEN, align 4
  %329 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %330 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %330, i32 0, i32 7
  store i32 %328, i32* %331, align 4
  %332 = load i32, i32* @IEEE80211_UNSET_POWER_LEVEL, align 4
  %333 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %334 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %333, i32 0, i32 37
  store i32 %332, i32* %334, align 8
  %335 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %336 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %335, i32 0, i32 7
  store i32* @mac80211_ht_capa_mod_mask, i32** %336, align 8
  %337 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %338 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %337, i32 0, i32 6
  store i32* @mac80211_vht_capa_mod_mask, i32** %338, align 8
  %339 = load i32, i32* @WLAN_EXT_CAPA8_OPMODE_NOTIF, align 4
  %340 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %341 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %340, i32 0, i32 36
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 7
  store i32 %339, i32* %343, align 4
  %344 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %345 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %344, i32 0, i32 36
  %346 = load i32*, i32** %345, align 8
  %347 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %348 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %347, i32 0, i32 5
  store i32* %346, i32** %348, align 8
  %349 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %350 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %349, i32 0, i32 36
  %351 = load i32*, i32** %350, align 8
  %352 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %353 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %352, i32 0, i32 4
  store i32* %351, i32** %353, align 8
  %354 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %355 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %354, i32 0, i32 36
  %356 = load i32*, i32** %355, align 8
  %357 = call i32 @ARRAY_SIZE(i32* %356)
  %358 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %359 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %358, i32 0, i32 3
  store i32 %357, i32* %359, align 4
  %360 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %361 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %360, i32 0, i32 35
  %362 = call i32 @INIT_LIST_HEAD(i32* %361)
  %363 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %364 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %363, i32 0, i32 34
  %365 = call i32 @INIT_LIST_HEAD(i32* %364)
  %366 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %367 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %366, i32 0, i32 33
  %368 = call i32 @__hw_addr_init(i32* %367)
  %369 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %370 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %369, i32 0, i32 32
  %371 = call i32 @mutex_init(i32* %370)
  %372 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %373 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %372, i32 0, i32 31
  %374 = call i32 @mutex_init(i32* %373)
  %375 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %376 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %375, i32 0, i32 30
  %377 = call i32 @mutex_init(i32* %376)
  %378 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %379 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %378, i32 0, i32 29
  %380 = call i32 @spin_lock_init(i32* %379)
  %381 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %382 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %381, i32 0, i32 28
  %383 = call i32 @spin_lock_init(i32* %382)
  %384 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %385 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %384, i32 0, i32 27
  %386 = call i32 @spin_lock_init(i32* %385)
  store i32 0, i32* %10, align 4
  br label %387

387:                                              ; preds = %406, %248
  %388 = load i32, i32* %10, align 4
  %389 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %390 = icmp slt i32 %388, %389
  br i1 %390, label %391, label %409

391:                                              ; preds = %387
  %392 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %393 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %392, i32 0, i32 26
  %394 = load i32*, i32** %393, align 8
  %395 = load i32, i32* %10, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  %398 = call i32 @INIT_LIST_HEAD(i32* %397)
  %399 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %400 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %399, i32 0, i32 25
  %401 = load i32*, i32** %400, align 8
  %402 = load i32, i32* %10, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = call i32 @spin_lock_init(i32* %404)
  br label %406

406:                                              ; preds = %391
  %407 = load i32, i32* %10, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %10, align 4
  br label %387

409:                                              ; preds = %387
  %410 = load i32, i32* @AIRTIME_USE_TX, align 4
  %411 = load i32, i32* @AIRTIME_USE_RX, align 4
  %412 = or i32 %410, %411
  %413 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %414 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %413, i32 0, i32 1
  store i32 %412, i32* %414, align 4
  %415 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %416 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %415, i32 0, i32 24
  %417 = call i32 @INIT_LIST_HEAD(i32* %416)
  %418 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %419 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %418, i32 0, i32 23
  %420 = call i32 @mutex_init(i32* %419)
  %421 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %422 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %421, i32 0, i32 22
  %423 = load i32, i32* @ieee80211_scan_work, align 4
  %424 = call i32 @INIT_DELAYED_WORK(i32* %422, i32 %423)
  %425 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %426 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %425, i32 0, i32 21
  %427 = load i32, i32* @ieee80211_restart_work, align 4
  %428 = call i32 @INIT_WORK(i32* %426, i32 %427)
  %429 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %430 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %429, i32 0, i32 20
  %431 = load i32, i32* @ieee80211_dfs_radar_detected_work, align 4
  %432 = call i32 @INIT_WORK(i32* %430, i32 %431)
  %433 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %434 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %433, i32 0, i32 19
  %435 = load i32, i32* @ieee80211_reconfig_filter, align 4
  %436 = call i32 @INIT_WORK(i32* %434, i32 %435)
  %437 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  %438 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %439 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %438, i32 0, i32 18
  store i32 %437, i32* %439, align 4
  %440 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %441 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %440, i32 0, i32 17
  %442 = load i32, i32* @ieee80211_dynamic_ps_enable_work, align 4
  %443 = call i32 @INIT_WORK(i32* %441, i32 %442)
  %444 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %445 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %444, i32 0, i32 16
  %446 = load i32, i32* @ieee80211_dynamic_ps_disable_work, align 4
  %447 = call i32 @INIT_WORK(i32* %445, i32 %446)
  %448 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %449 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %448, i32 0, i32 15
  %450 = load i32, i32* @ieee80211_dynamic_ps_timer, align 4
  %451 = call i32 @timer_setup(i32* %449, i32 %450, i32 0)
  %452 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %453 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %452, i32 0, i32 14
  %454 = load i32, i32* @ieee80211_sched_scan_stopped_work, align 4
  %455 = call i32 @INIT_WORK(i32* %453, i32 %454)
  %456 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %457 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %456, i32 0, i32 13
  %458 = load i32, i32* @ieee80211_tdls_chsw_work, align 4
  %459 = call i32 @INIT_WORK(i32* %457, i32 %458)
  %460 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %461 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %460, i32 0, i32 12
  %462 = call i32 @spin_lock_init(i32* %461)
  %463 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %464 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %463, i32 0, i32 11
  %465 = call i32 @idr_init(i32* %464)
  store i32 0, i32* %10, align 4
  br label %466

466:                                              ; preds = %485, %409
  %467 = load i32, i32* %10, align 4
  %468 = load i32, i32* @IEEE80211_MAX_QUEUES, align 4
  %469 = icmp slt i32 %467, %468
  br i1 %469, label %470, label %488

470:                                              ; preds = %466
  %471 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %472 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %471, i32 0, i32 10
  %473 = load i32*, i32** %472, align 8
  %474 = load i32, i32* %10, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32, i32* %473, i64 %475
  %477 = call i32 @skb_queue_head_init(i32* %476)
  %478 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %479 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %478, i32 0, i32 9
  %480 = load i32*, i32** %479, align 8
  %481 = load i32, i32* %10, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  %484 = call i32 @atomic_set(i32* %483, i32 0)
  br label %485

485:                                              ; preds = %470
  %486 = load i32, i32* %10, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %10, align 4
  br label %466

488:                                              ; preds = %466
  %489 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %490 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %489, i32 0, i32 8
  %491 = load i32, i32* @ieee80211_tx_pending, align 4
  %492 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %493 = ptrtoint %struct.ieee80211_local* %492 to i64
  %494 = call i32 @tasklet_init(i32* %490, i32 %491, i64 %493)
  %495 = load %struct.ieee80211_ops*, %struct.ieee80211_ops** %6, align 8
  %496 = getelementptr inbounds %struct.ieee80211_ops, %struct.ieee80211_ops* %495, i32 0, i32 0
  %497 = load i64, i64* %496, align 8
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %506

499:                                              ; preds = %488
  %500 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %501 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %500, i32 0, i32 7
  %502 = load i32, i32* @ieee80211_wake_txqs, align 4
  %503 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %504 = ptrtoint %struct.ieee80211_local* %503 to i64
  %505 = call i32 @tasklet_init(i32* %501, i32 %502, i64 %504)
  br label %506

506:                                              ; preds = %499, %488
  %507 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %508 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %507, i32 0, i32 6
  %509 = load i32, i32* @ieee80211_tasklet_handler, align 4
  %510 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %511 = ptrtoint %struct.ieee80211_local* %510 to i64
  %512 = call i32 @tasklet_init(i32* %508, i32 %509, i64 %511)
  %513 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %514 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %513, i32 0, i32 5
  %515 = call i32 @skb_queue_head_init(i32* %514)
  %516 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %517 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %516, i32 0, i32 4
  %518 = call i32 @skb_queue_head_init(i32* %517)
  %519 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %520 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %519, i32 0, i32 3
  %521 = call i32 @skb_queue_head_init(i32* %520)
  %522 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %523 = call i32 @ieee80211_alloc_led_names(%struct.ieee80211_local* %522)
  %524 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %525 = call i32 @ieee80211_roc_setup(%struct.ieee80211_local* %524)
  %526 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %527 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %526, i32 0, i32 2
  %528 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %527, i32 0, i32 6
  %529 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %528, i32 0, i32 0
  store i32 -1, i32* %529, align 4
  %530 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %531 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %530, i32 0, i32 2
  %532 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %531, i32 0, i32 6
  %533 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %532, i32 0, i32 1
  store i32 -1, i32* %533, align 4
  %534 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %535 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %534, i32 0, i32 2
  store %struct.ieee80211_hw* %535, %struct.ieee80211_hw** %4, align 8
  br label %539

536:                                              ; preds = %247
  %537 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %538 = call i32 @wiphy_free(%struct.wiphy* %537)
  store %struct.ieee80211_hw* null, %struct.ieee80211_hw** %4, align 8
  br label %539

539:                                              ; preds = %536, %506, %143, %127, %76, %53
  %540 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  ret %struct.ieee80211_hw* %540
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local %struct.wiphy* @wiphy_new_nm(i32*, i32, i8*) #1

declare dso_local i32 @wiphy_ext_feature_set(%struct.wiphy*, i32) #1

declare dso_local %struct.ieee80211_local* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i64 @sta_info_init(%struct.ieee80211_local*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @__hw_addr_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @ieee80211_alloc_led_names(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_roc_setup(%struct.ieee80211_local*) #1

declare dso_local i32 @wiphy_free(%struct.wiphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
