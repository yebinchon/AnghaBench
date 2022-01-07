; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_core.c_wiphy_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_core.c_wiphy_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, i32, i32, i32, i32, i32, i64, i32, i64*, %struct.wiphy_iftype_ext_capab*, %struct.ieee80211_supported_band**, %struct.TYPE_23__*, i32, i64, i32, i64, %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_18__* }
%struct.wiphy_iftype_ext_capab = type { i64, i64* }
%struct.ieee80211_supported_band = type { i32, i32, i32, i32, %struct.ieee80211_sband_iftype_data*, %struct.TYPE_25__*, %struct.TYPE_24__ }
%struct.ieee80211_sband_iftype_data = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i64, i64, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i64, i32, i32, i64 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_17__, i32*, i32, %struct.TYPE_22__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regulatory_request = type { i8*, i32, i32 }

@NL80211_FEATURE_TDLS_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_NAN = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_IFTYPE_WDS = common dso_local global i32 0, align 4
@NL80211_PREAMBLE_LEGACY = common dso_local global i32 0, align 4
@NL80211_PREAMBLE_HT = common dso_local global i32 0, align 4
@NL80211_PREAMBLE_VHT = common dso_local global i32 0, align 4
@NL80211_PREAMBLE_DMG = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_40 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_80 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_80P80 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_160 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_5 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_10 = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_GO = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP_VLAN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@REGULATORY_IGNORE_STALE_KICKOFF = common dso_local global i32 0, align 4
@REGULATORY_WIPHY_SELF_MANAGED = common dso_local global i32 0, align 4
@REGULATORY_CUSTOM_REG = common dso_local global i32 0, align 4
@REGULATORY_STRICT_REG = common dso_local global i32 0, align 4
@REGULATORY_COUNTRY_IE_FOLLOW_POWER = common dso_local global i32 0, align 4
@REGULATORY_COUNTRY_IE_IGNORE = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAVE_AP_SME = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@__NL80211_BSS_SELECT_ATTR_AFTER_LAST = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_4WAY_HANDSHAKE_STA_1X = common dso_local global i32 0, align 4
@WIPHY_FLAG_SUPPORTS_FW_ROAM = common dso_local global i32 0, align 4
@NUM_NL80211_IFTYPES = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@NL80211_BAND_60GHZ = common dso_local global i32 0, align 4
@cfg80211_disable_40mhz_24ghz = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@NL80211_FEATURE_SCAN_FLUSH = common dso_local global i32 0, align 4
@cfg80211_rdev_list = common dso_local global i32 0, align 4
@cfg80211_rdev_list_generation = common dso_local global i32 0, align 4
@ieee80211_debugfs_dir = common dso_local global i32 0, align 4
@NL80211_CMD_NEW_WIPHY = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_DRIVER = common dso_local global i32 0, align 4
@WIPHY_WOWLAN_GTK_REKEY_FAILURE = common dso_local global i32 0, align 4
@WIPHY_WOWLAN_SUPPORTS_GTK_REKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wiphy_register(%struct.wiphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_sband_iftype_data*, align 8
  %13 = alloca %struct.regulatory_request, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.wiphy_iftype_ext_capab*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  %17 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %18 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %17)
  store %struct.cfg80211_registered_device* %18, %struct.cfg80211_registered_device** %4, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %20 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %23 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NL80211_FEATURE_TDLS_CHANNEL_SWITCH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %1
  %29 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %30 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %29, i32 0, i32 3
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %37 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %36, i32 0, i32 3
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %35, %28
  %44 = phi i1 [ true, %28 ], [ %42, %35 ]
  br label %45

45:                                               ; preds = %43, %1
  %46 = phi i1 [ false, %1 ], [ %44, %43 ]
  %47 = zext i1 %46 to i32
  %48 = sext i32 %47 to i64
  %49 = call i64 @WARN_ON(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %1085

54:                                               ; preds = %45
  %55 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %56 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NL80211_IFTYPE_NAN, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %101

62:                                               ; preds = %54
  %63 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %64 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %63, i32 0, i32 3
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %62
  %70 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %71 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %70, i32 0, i32 3
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %69
  %77 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %78 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %77, i32 0, i32 3
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %76
  %84 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %85 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %84, i32 0, i32 3
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %83
  %91 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %92 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %95 = call i32 @BIT(i32 %94)
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br label %99

99:                                               ; preds = %90, %83, %76, %69, %62
  %100 = phi i1 [ true, %83 ], [ true, %76 ], [ true, %69 ], [ true, %62 ], [ %98, %90 ]
  br label %101

101:                                              ; preds = %99, %54
  %102 = phi i1 [ false, %54 ], [ %100, %99 ]
  %103 = zext i1 %102 to i32
  %104 = sext i32 %103 to i64
  %105 = call i64 @WARN_ON(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %1085

110:                                              ; preds = %101
  %111 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %112 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @NL80211_IFTYPE_WDS, align 4
  %115 = call i32 @BIT(i32 %114)
  %116 = and i32 %113, %115
  %117 = sext i32 %116 to i64
  %118 = call i64 @WARN_ON(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %110
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %1085

123:                                              ; preds = %110
  %124 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %125 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %124, i32 0, i32 17
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %125, align 8
  %127 = icmp ne %struct.TYPE_20__* %126, null
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %130 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %129, i32 0, i32 17
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  %136 = xor i1 %135, true
  br label %137

137:                                              ; preds = %128, %123
  %138 = phi i1 [ false, %123 ], [ %136, %128 ]
  %139 = zext i1 %138 to i32
  %140 = sext i32 %139 to i64
  %141 = call i64 @WARN_ON(i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %1085

146:                                              ; preds = %137
  %147 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %148 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %147, i32 0, i32 17
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %148, align 8
  %150 = icmp ne %struct.TYPE_20__* %149, null
  br i1 %150, label %151, label %276

151:                                              ; preds = %146
  %152 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %153 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %152, i32 0, i32 17
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %276

159:                                              ; preds = %151
  %160 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %161 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %160, i32 0, i32 17
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %176, label %167

167:                                              ; preds = %159
  %168 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %169 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %168, i32 0, i32 17
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  br label %176

176:                                              ; preds = %167, %159
  %177 = phi i1 [ false, %159 ], [ %175, %167 ]
  %178 = zext i1 %177 to i32
  %179 = sext i32 %178 to i64
  %180 = call i64 @WARN_ON(i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %2, align 4
  br label %1085

185:                                              ; preds = %176
  %186 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %187 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %186, i32 0, i32 17
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %185
  %194 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %195 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %194, i32 0, i32 17
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  %201 = xor i1 %200, true
  br label %202

202:                                              ; preds = %193, %185
  %203 = phi i1 [ true, %185 ], [ %201, %193 ]
  %204 = zext i1 %203 to i32
  %205 = sext i32 %204 to i64
  %206 = call i64 @WARN_ON(i64 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %202
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %2, align 4
  br label %1085

211:                                              ; preds = %202
  %212 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %213 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %212, i32 0, i32 17
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* @NL80211_PREAMBLE_LEGACY, align 4
  %219 = call i32 @BIT(i32 %218)
  %220 = load i32, i32* @NL80211_PREAMBLE_HT, align 4
  %221 = call i32 @BIT(i32 %220)
  %222 = or i32 %219, %221
  %223 = load i32, i32* @NL80211_PREAMBLE_VHT, align 4
  %224 = call i32 @BIT(i32 %223)
  %225 = or i32 %222, %224
  %226 = load i32, i32* @NL80211_PREAMBLE_DMG, align 4
  %227 = call i32 @BIT(i32 %226)
  %228 = or i32 %225, %227
  %229 = xor i32 %228, -1
  %230 = sext i32 %229 to i64
  %231 = and i64 %217, %230
  %232 = call i64 @WARN_ON(i64 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %211
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %2, align 4
  br label %1085

237:                                              ; preds = %211
  %238 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %239 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %238, i32 0, i32 17
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i32, i32* @NL80211_CHAN_WIDTH_20_NOHT, align 4
  %245 = call i32 @BIT(i32 %244)
  %246 = load i32, i32* @NL80211_CHAN_WIDTH_20, align 4
  %247 = call i32 @BIT(i32 %246)
  %248 = or i32 %245, %247
  %249 = load i32, i32* @NL80211_CHAN_WIDTH_40, align 4
  %250 = call i32 @BIT(i32 %249)
  %251 = or i32 %248, %250
  %252 = load i32, i32* @NL80211_CHAN_WIDTH_80, align 4
  %253 = call i32 @BIT(i32 %252)
  %254 = or i32 %251, %253
  %255 = load i32, i32* @NL80211_CHAN_WIDTH_80P80, align 4
  %256 = call i32 @BIT(i32 %255)
  %257 = or i32 %254, %256
  %258 = load i32, i32* @NL80211_CHAN_WIDTH_160, align 4
  %259 = call i32 @BIT(i32 %258)
  %260 = or i32 %257, %259
  %261 = load i32, i32* @NL80211_CHAN_WIDTH_5, align 4
  %262 = call i32 @BIT(i32 %261)
  %263 = or i32 %260, %262
  %264 = load i32, i32* @NL80211_CHAN_WIDTH_10, align 4
  %265 = call i32 @BIT(i32 %264)
  %266 = or i32 %263, %265
  %267 = xor i32 %266, -1
  %268 = sext i32 %267 to i64
  %269 = and i64 %243, %268
  %270 = call i64 @WARN_ON(i64 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %237
  %273 = load i32, i32* @EINVAL, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %2, align 4
  br label %1085

275:                                              ; preds = %237
  br label %276

276:                                              ; preds = %275, %151, %146
  %277 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %278 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %281 = call i32 @BIT(i32 %280)
  %282 = load i32, i32* @NL80211_IFTYPE_P2P_CLIENT, align 4
  %283 = call i32 @BIT(i32 %282)
  %284 = or i32 %281, %283
  %285 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %286 = call i32 @BIT(i32 %285)
  %287 = or i32 %284, %286
  %288 = load i32, i32* @NL80211_IFTYPE_P2P_GO, align 4
  %289 = call i32 @BIT(i32 %288)
  %290 = or i32 %287, %289
  %291 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %292 = call i32 @BIT(i32 %291)
  %293 = or i32 %290, %292
  %294 = load i32, i32* @NL80211_IFTYPE_P2P_DEVICE, align 4
  %295 = call i32 @BIT(i32 %294)
  %296 = or i32 %293, %295
  %297 = load i32, i32* @NL80211_IFTYPE_NAN, align 4
  %298 = call i32 @BIT(i32 %297)
  %299 = or i32 %296, %298
  %300 = load i32, i32* @NL80211_IFTYPE_AP_VLAN, align 4
  %301 = call i32 @BIT(i32 %300)
  %302 = or i32 %299, %301
  %303 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %304 = call i32 @BIT(i32 %303)
  %305 = or i32 %302, %304
  %306 = xor i32 %305, -1
  %307 = and i32 %279, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %276
  %310 = load i32, i32* @REGULATORY_IGNORE_STALE_KICKOFF, align 4
  %311 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %312 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = or i32 %313, %310
  store i32 %314, i32* %312, align 4
  br label %315

315:                                              ; preds = %309, %276
  %316 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %317 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @REGULATORY_WIPHY_SELF_MANAGED, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %335

322:                                              ; preds = %315
  %323 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %324 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @REGULATORY_CUSTOM_REG, align 4
  %327 = load i32, i32* @REGULATORY_STRICT_REG, align 4
  %328 = or i32 %326, %327
  %329 = load i32, i32* @REGULATORY_COUNTRY_IE_FOLLOW_POWER, align 4
  %330 = or i32 %328, %329
  %331 = load i32, i32* @REGULATORY_COUNTRY_IE_IGNORE, align 4
  %332 = or i32 %330, %331
  %333 = and i32 %325, %332
  %334 = icmp ne i32 %333, 0
  br label %335

335:                                              ; preds = %322, %315
  %336 = phi i1 [ false, %315 ], [ %334, %322 ]
  %337 = zext i1 %336 to i32
  %338 = sext i32 %337 to i64
  %339 = call i64 @WARN_ON(i64 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %335
  %342 = load i32, i32* @EINVAL, align 4
  %343 = sub nsw i32 0, %342
  store i32 %343, i32* %2, align 4
  br label %1085

344:                                              ; preds = %335
  %345 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %346 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %345, i32 0, i32 16
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %346, align 8
  %348 = icmp ne %struct.TYPE_21__* %347, null
  br i1 %348, label %349, label %384

349:                                              ; preds = %344
  %350 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %351 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %350, i32 0, i32 16
  %352 = load %struct.TYPE_21__*, %struct.TYPE_21__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %363

356:                                              ; preds = %349
  %357 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %358 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %357, i32 0, i32 16
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %384, label %363

363:                                              ; preds = %356, %349
  %364 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %365 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %364, i32 0, i32 16
  %366 = load %struct.TYPE_21__*, %struct.TYPE_21__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %382

370:                                              ; preds = %363
  %371 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %372 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %371, i32 0, i32 16
  %373 = load %struct.TYPE_21__*, %struct.TYPE_21__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %377 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %376, i32 0, i32 16
  %378 = load %struct.TYPE_21__*, %struct.TYPE_21__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = icmp sgt i64 %375, %380
  br label %382

382:                                              ; preds = %370, %363
  %383 = phi i1 [ true, %363 ], [ %381, %370 ]
  br label %384

384:                                              ; preds = %382, %356, %344
  %385 = phi i1 [ false, %356 ], [ false, %344 ], [ %383, %382 ]
  %386 = zext i1 %385 to i32
  %387 = sext i32 %386 to i64
  %388 = call i64 @WARN_ON(i64 %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %393

390:                                              ; preds = %384
  %391 = load i32, i32* @EINVAL, align 4
  %392 = sub nsw i32 0, %391
  store i32 %392, i32* %2, align 4
  br label %1085

393:                                              ; preds = %384
  %394 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %395 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %394, i32 0, i32 15
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %406

398:                                              ; preds = %393
  %399 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %400 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %399, i32 0, i32 4
  %401 = load i32, i32* %400, align 8
  %402 = load i32, i32* @WIPHY_FLAG_HAVE_AP_SME, align 4
  %403 = and i32 %401, %402
  %404 = icmp ne i32 %403, 0
  %405 = xor i1 %404, true
  br label %406

406:                                              ; preds = %398, %393
  %407 = phi i1 [ false, %393 ], [ %405, %398 ]
  %408 = zext i1 %407 to i32
  %409 = sext i32 %408 to i64
  %410 = call i64 @WARN_ON(i64 %409)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %415

412:                                              ; preds = %406
  %413 = load i32, i32* @EINVAL, align 4
  %414 = sub nsw i32 0, %413
  store i32 %414, i32* %2, align 4
  br label %1085

415:                                              ; preds = %406
  %416 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %417 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %416, i32 0, i32 11
  %418 = load %struct.TYPE_23__*, %struct.TYPE_23__** %417, align 8
  %419 = icmp ne %struct.TYPE_23__* %418, null
  br i1 %419, label %420, label %426

420:                                              ; preds = %415
  %421 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %422 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %421, i32 0, i32 14
  %423 = load i32, i32* %422, align 8
  %424 = icmp ne i32 %423, 0
  %425 = xor i1 %424, true
  br label %426

426:                                              ; preds = %420, %415
  %427 = phi i1 [ false, %415 ], [ %425, %420 ]
  %428 = zext i1 %427 to i32
  %429 = sext i32 %428 to i64
  %430 = call i64 @WARN_ON(i64 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %435

432:                                              ; preds = %426
  %433 = load i32, i32* @EINVAL, align 4
  %434 = sub nsw i32 0, %433
  store i32 %434, i32* %2, align 4
  br label %1085

435:                                              ; preds = %426
  %436 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %437 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %436, i32 0, i32 11
  %438 = load %struct.TYPE_23__*, %struct.TYPE_23__** %437, align 8
  %439 = icmp ne %struct.TYPE_23__* %438, null
  br i1 %439, label %440, label %459

440:                                              ; preds = %435
  %441 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %442 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %441, i32 0, i32 12
  %443 = load i32, i32* %442, align 8
  %444 = call i32 @is_zero_ether_addr(i32 %443)
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %459, label %446

446:                                              ; preds = %440
  %447 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %448 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %447, i32 0, i32 12
  %449 = load i32, i32* %448, align 8
  %450 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %451 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %450, i32 0, i32 11
  %452 = load %struct.TYPE_23__*, %struct.TYPE_23__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %452, i64 0
  %454 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* @ETH_ALEN, align 4
  %457 = call i64 @memcmp(i32 %449, i32 %455, i32 %456)
  %458 = icmp ne i64 %457, 0
  br label %459

459:                                              ; preds = %446, %440, %435
  %460 = phi i1 [ false, %440 ], [ false, %435 ], [ %458, %446 ]
  %461 = zext i1 %460 to i32
  %462 = sext i32 %461 to i64
  %463 = call i64 @WARN_ON(i64 %462)
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %468

465:                                              ; preds = %459
  %466 = load i32, i32* @EINVAL, align 4
  %467 = sub nsw i32 0, %466
  store i32 %467, i32* %2, align 4
  br label %1085

468:                                              ; preds = %459
  %469 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %470 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %469, i32 0, i32 13
  %471 = load i64, i64* %470, align 8
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %490

473:                                              ; preds = %468
  %474 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %475 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %474, i32 0, i32 4
  %476 = load i32, i32* %475, align 8
  %477 = load i32, i32* @WIPHY_FLAG_HAVE_AP_SME, align 4
  %478 = and i32 %476, %477
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %488

480:                                              ; preds = %473
  %481 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %482 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %481, i32 0, i32 3
  %483 = load %struct.TYPE_22__*, %struct.TYPE_22__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %483, i32 0, i32 3
  %485 = load i32, i32* %484, align 8
  %486 = icmp ne i32 %485, 0
  %487 = xor i1 %486, true
  br label %488

488:                                              ; preds = %480, %473
  %489 = phi i1 [ true, %473 ], [ %487, %480 ]
  br label %490

490:                                              ; preds = %488, %468
  %491 = phi i1 [ false, %468 ], [ %489, %488 ]
  %492 = zext i1 %491 to i32
  %493 = sext i32 %492 to i64
  %494 = call i64 @WARN_ON(i64 %493)
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %499

496:                                              ; preds = %490
  %497 = load i32, i32* @EINVAL, align 4
  %498 = sub nsw i32 0, %497
  store i32 %498, i32* %2, align 4
  br label %1085

499:                                              ; preds = %490
  %500 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %501 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %500, i32 0, i32 5
  %502 = load i32, i32* %501, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %514

504:                                              ; preds = %499
  %505 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %506 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %505, i32 0, i32 5
  %507 = load i32, i32* %506, align 4
  %508 = load i32, i32* @__NL80211_BSS_SELECT_ATTR_AFTER_LAST, align 4
  %509 = call i32 @BIT(i32 %508)
  %510 = sub nsw i32 %509, 2
  %511 = xor i32 %510, -1
  %512 = and i32 %507, %511
  %513 = icmp ne i32 %512, 0
  br label %514

514:                                              ; preds = %504, %499
  %515 = phi i1 [ false, %499 ], [ %513, %504 ]
  %516 = zext i1 %515 to i32
  %517 = sext i32 %516 to i64
  %518 = call i64 @WARN_ON(i64 %517)
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %520, label %523

520:                                              ; preds = %514
  %521 = load i32, i32* @EINVAL, align 4
  %522 = sub nsw i32 0, %521
  store i32 %522, i32* %2, align 4
  br label %1085

523:                                              ; preds = %514
  %524 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %525 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %524, i32 0, i32 0
  %526 = load i32, i32* @NL80211_EXT_FEATURE_4WAY_HANDSHAKE_STA_1X, align 4
  %527 = call i64 @wiphy_ext_feature_isset(%struct.TYPE_17__* %525, i32 %526)
  %528 = icmp ne i64 %527, 0
  br i1 %528, label %529, label %546

529:                                              ; preds = %523
  %530 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %531 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %530, i32 0, i32 3
  %532 = load %struct.TYPE_22__*, %struct.TYPE_22__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %532, i32 0, i32 2
  %534 = load i32, i32* %533, align 4
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %544

536:                                              ; preds = %529
  %537 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %538 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %537, i32 0, i32 3
  %539 = load %struct.TYPE_22__*, %struct.TYPE_22__** %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %539, i32 0, i32 1
  %541 = load i32, i32* %540, align 8
  %542 = icmp ne i32 %541, 0
  %543 = xor i1 %542, true
  br label %544

544:                                              ; preds = %536, %529
  %545 = phi i1 [ true, %529 ], [ %543, %536 ]
  br label %546

546:                                              ; preds = %544, %523
  %547 = phi i1 [ false, %523 ], [ %545, %544 ]
  %548 = zext i1 %547 to i32
  %549 = sext i32 %548 to i64
  %550 = call i64 @WARN_ON(i64 %549)
  %551 = icmp ne i64 %550, 0
  br i1 %551, label %552, label %555

552:                                              ; preds = %546
  %553 = load i32, i32* @EINVAL, align 4
  %554 = sub nsw i32 0, %553
  store i32 %554, i32* %2, align 4
  br label %1085

555:                                              ; preds = %546
  %556 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %557 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %556, i32 0, i32 0
  %558 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = load i32, i32* @WIPHY_FLAG_SUPPORTS_FW_ROAM, align 4
  %561 = and i32 %559, %560
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %570, label %563

563:                                              ; preds = %555
  %564 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %565 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %564, i32 0, i32 3
  %566 = load %struct.TYPE_22__*, %struct.TYPE_22__** %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %566, i32 0, i32 0
  %568 = load i64, i64* %567, align 8
  %569 = icmp ne i64 %568, 0
  br label %570

570:                                              ; preds = %563, %555
  %571 = phi i1 [ false, %555 ], [ %569, %563 ]
  %572 = zext i1 %571 to i32
  %573 = sext i32 %572 to i64
  %574 = call i64 @WARN_ON(i64 %573)
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %576, label %579

576:                                              ; preds = %570
  %577 = load i32, i32* @EINVAL, align 4
  %578 = sub nsw i32 0, %577
  store i32 %578, i32* %2, align 4
  br label %1085

579:                                              ; preds = %570
  %580 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %581 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %580, i32 0, i32 11
  %582 = load %struct.TYPE_23__*, %struct.TYPE_23__** %581, align 8
  %583 = icmp ne %struct.TYPE_23__* %582, null
  br i1 %583, label %584, label %596

584:                                              ; preds = %579
  %585 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %586 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %585, i32 0, i32 12
  %587 = load i32, i32* %586, align 8
  %588 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %589 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %588, i32 0, i32 11
  %590 = load %struct.TYPE_23__*, %struct.TYPE_23__** %589, align 8
  %591 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %590, i64 0
  %592 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %591, i32 0, i32 0
  %593 = load i32, i32* %592, align 4
  %594 = load i32, i32* @ETH_ALEN, align 4
  %595 = call i32 @memcpy(i32 %587, i32 %593, i32 %594)
  br label %596

596:                                              ; preds = %584, %579
  %597 = load i32, i32* %10, align 4
  %598 = icmp ne i32 %597, 0
  %599 = xor i1 %598, true
  %600 = zext i1 %599 to i32
  %601 = sext i32 %600 to i64
  %602 = call i64 @WARN_ON(i64 %601)
  %603 = load i32, i32* @NUM_NL80211_IFTYPES, align 4
  %604 = shl i32 1, %603
  %605 = sub nsw i32 %604, 1
  %606 = and i32 %605, -2
  %607 = load i32, i32* %10, align 4
  %608 = and i32 %607, %606
  store i32 %608, i32* %10, align 4
  %609 = load i32, i32* %10, align 4
  %610 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %611 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 8
  %613 = icmp ne i32 %609, %612
  %614 = zext i1 %613 to i32
  %615 = sext i32 %614 to i64
  %616 = call i64 @WARN_ON(i64 %615)
  %617 = icmp ne i64 %616, 0
  br i1 %617, label %618, label %622

618:                                              ; preds = %596
  %619 = load i32, i32* %10, align 4
  %620 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %621 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %620, i32 0, i32 0
  store i32 %619, i32* %621, align 8
  br label %622

622:                                              ; preds = %618, %596
  %623 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %624 = call i32 @wiphy_verify_combinations(%struct.wiphy* %623)
  store i32 %624, i32* %5, align 4
  %625 = load i32, i32* %5, align 4
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %627, label %629

627:                                              ; preds = %622
  %628 = load i32, i32* %5, align 4
  store i32 %628, i32* %2, align 4
  br label %1085

629:                                              ; preds = %622
  store i32 0, i32* %6, align 4
  br label %630

630:                                              ; preds = %839, %629
  %631 = load i32, i32* %6, align 4
  %632 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %633 = icmp ult i32 %631, %632
  br i1 %633, label %634, label %842

634:                                              ; preds = %630
  store i32 0, i32* %11, align 4
  %635 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %636 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %635, i32 0, i32 10
  %637 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %636, align 8
  %638 = load i32, i32* %6, align 4
  %639 = zext i32 %638 to i64
  %640 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %637, i64 %639
  %641 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %640, align 8
  store %struct.ieee80211_supported_band* %641, %struct.ieee80211_supported_band** %7, align 8
  %642 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %643 = icmp ne %struct.ieee80211_supported_band* %642, null
  br i1 %643, label %645, label %644

644:                                              ; preds = %634
  br label %839

645:                                              ; preds = %634
  %646 = load i32, i32* %6, align 4
  %647 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %648 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %647, i32 0, i32 0
  store i32 %646, i32* %648, align 8
  %649 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %650 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %649, i32 0, i32 1
  %651 = load i32, i32* %650, align 4
  %652 = icmp ne i32 %651, 0
  %653 = xor i1 %652, true
  %654 = zext i1 %653 to i32
  %655 = sext i32 %654 to i64
  %656 = call i64 @WARN_ON(i64 %655)
  %657 = icmp ne i64 %656, 0
  br i1 %657, label %658, label %661

658:                                              ; preds = %645
  %659 = load i32, i32* @EINVAL, align 4
  %660 = sub nsw i32 0, %659
  store i32 %660, i32* %2, align 4
  br label %1085

661:                                              ; preds = %645
  %662 = load i32, i32* %6, align 4
  %663 = load i32, i32* @NL80211_BAND_60GHZ, align 4
  %664 = icmp ne i32 %662, %663
  br i1 %664, label %665, label %671

665:                                              ; preds = %661
  %666 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %667 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %666, i32 0, i32 2
  %668 = load i32, i32* %667, align 8
  %669 = icmp ne i32 %668, 0
  %670 = xor i1 %669, true
  br label %671

671:                                              ; preds = %665, %661
  %672 = phi i1 [ false, %661 ], [ %670, %665 ]
  %673 = zext i1 %672 to i32
  %674 = sext i32 %673 to i64
  %675 = call i64 @WARN_ON(i64 %674)
  %676 = icmp ne i64 %675, 0
  br i1 %676, label %677, label %680

677:                                              ; preds = %671
  %678 = load i32, i32* @EINVAL, align 4
  %679 = sub nsw i32 0, %678
  store i32 %679, i32* %2, align 4
  br label %1085

680:                                              ; preds = %671
  %681 = load i64, i64* @cfg80211_disable_40mhz_24ghz, align 8
  %682 = icmp ne i64 %681, 0
  br i1 %682, label %683, label %708

683:                                              ; preds = %680
  %684 = load i32, i32* %6, align 4
  %685 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %686 = icmp eq i32 %684, %685
  br i1 %686, label %687, label %708

687:                                              ; preds = %683
  %688 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %689 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %688, i32 0, i32 6
  %690 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %689, i32 0, i32 1
  %691 = load i64, i64* %690, align 8
  %692 = icmp ne i64 %691, 0
  br i1 %692, label %693, label %708

693:                                              ; preds = %687
  %694 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %695 = xor i32 %694, -1
  %696 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %697 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %696, i32 0, i32 6
  %698 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %697, i32 0, i32 0
  %699 = load i32, i32* %698, align 8
  %700 = and i32 %699, %695
  store i32 %700, i32* %698, align 8
  %701 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %702 = xor i32 %701, -1
  %703 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %704 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %703, i32 0, i32 6
  %705 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %704, i32 0, i32 0
  %706 = load i32, i32* %705, align 8
  %707 = and i32 %706, %702
  store i32 %707, i32* %705, align 8
  br label %708

708:                                              ; preds = %693, %687, %683, %680
  %709 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %710 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %709, i32 0, i32 2
  %711 = load i32, i32* %710, align 8
  %712 = icmp sgt i32 %711, 32
  %713 = zext i1 %712 to i32
  %714 = sext i32 %713 to i64
  %715 = call i64 @WARN_ON(i64 %714)
  %716 = icmp ne i64 %715, 0
  br i1 %716, label %717, label %720

717:                                              ; preds = %708
  %718 = load i32, i32* @EINVAL, align 4
  %719 = sub nsw i32 0, %718
  store i32 %719, i32* %2, align 4
  br label %1085

720:                                              ; preds = %708
  store i32 0, i32* %9, align 4
  br label %721

721:                                              ; preds = %774, %720
  %722 = load i32, i32* %9, align 4
  %723 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %724 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %723, i32 0, i32 1
  %725 = load i32, i32* %724, align 4
  %726 = icmp slt i32 %722, %725
  br i1 %726, label %727, label %777

727:                                              ; preds = %721
  %728 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %729 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %728, i32 0, i32 5
  %730 = load %struct.TYPE_25__*, %struct.TYPE_25__** %729, align 8
  %731 = load i32, i32* %9, align 4
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %730, i64 %732
  %734 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %733, i32 0, i32 4
  %735 = load i32, i32* %734, align 4
  %736 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %737 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %736, i32 0, i32 5
  %738 = load %struct.TYPE_25__*, %struct.TYPE_25__** %737, align 8
  %739 = load i32, i32* %9, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %738, i64 %740
  %742 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %741, i32 0, i32 5
  store i32 %735, i32* %742, align 4
  %743 = load i32, i32* @INT_MAX, align 4
  %744 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %745 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %744, i32 0, i32 5
  %746 = load %struct.TYPE_25__*, %struct.TYPE_25__** %745, align 8
  %747 = load i32, i32* %9, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %746, i64 %748
  %750 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %749, i32 0, i32 3
  store i32 %743, i32* %750, align 4
  %751 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %752 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %751, i32 0, i32 5
  %753 = load %struct.TYPE_25__*, %struct.TYPE_25__** %752, align 8
  %754 = load i32, i32* %9, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %753, i64 %755
  %757 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %756, i32 0, i32 1
  %758 = load i32, i32* %757, align 4
  %759 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %760 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %759, i32 0, i32 5
  %761 = load %struct.TYPE_25__*, %struct.TYPE_25__** %760, align 8
  %762 = load i32, i32* %9, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %761, i64 %763
  %765 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %764, i32 0, i32 2
  store i32 %758, i32* %765, align 4
  %766 = load i32, i32* %6, align 4
  %767 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %768 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %767, i32 0, i32 5
  %769 = load %struct.TYPE_25__*, %struct.TYPE_25__** %768, align 8
  %770 = load i32, i32* %9, align 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %769, i64 %771
  %773 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %772, i32 0, i32 0
  store i32 %766, i32* %773, align 4
  br label %774

774:                                              ; preds = %727
  %775 = load i32, i32* %9, align 4
  %776 = add nsw i32 %775, 1
  store i32 %776, i32* %9, align 4
  br label %721

777:                                              ; preds = %721
  store i32 0, i32* %9, align 4
  br label %778

778:                                              ; preds = %835, %777
  %779 = load i32, i32* %9, align 4
  %780 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %781 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %780, i32 0, i32 3
  %782 = load i32, i32* %781, align 4
  %783 = icmp slt i32 %779, %782
  br i1 %783, label %784, label %838

784:                                              ; preds = %778
  %785 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %786 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %785, i32 0, i32 4
  %787 = load %struct.ieee80211_sband_iftype_data*, %struct.ieee80211_sband_iftype_data** %786, align 8
  %788 = load i32, i32* %9, align 4
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds %struct.ieee80211_sband_iftype_data, %struct.ieee80211_sband_iftype_data* %787, i64 %789
  store %struct.ieee80211_sband_iftype_data* %790, %struct.ieee80211_sband_iftype_data** %12, align 8
  %791 = load %struct.ieee80211_sband_iftype_data*, %struct.ieee80211_sband_iftype_data** %12, align 8
  %792 = getelementptr inbounds %struct.ieee80211_sband_iftype_data, %struct.ieee80211_sband_iftype_data* %791, i32 0, i32 0
  %793 = load i32, i32* %792, align 4
  %794 = icmp ne i32 %793, 0
  %795 = xor i1 %794, true
  %796 = zext i1 %795 to i32
  %797 = sext i32 %796 to i64
  %798 = call i64 @WARN_ON(i64 %797)
  %799 = icmp ne i64 %798, 0
  br i1 %799, label %800, label %803

800:                                              ; preds = %784
  %801 = load i32, i32* @EINVAL, align 4
  %802 = sub nsw i32 0, %801
  store i32 %802, i32* %2, align 4
  br label %1085

803:                                              ; preds = %784
  %804 = load i32, i32* %11, align 4
  %805 = load %struct.ieee80211_sband_iftype_data*, %struct.ieee80211_sband_iftype_data** %12, align 8
  %806 = getelementptr inbounds %struct.ieee80211_sband_iftype_data, %struct.ieee80211_sband_iftype_data* %805, i32 0, i32 0
  %807 = load i32, i32* %806, align 4
  %808 = and i32 %804, %807
  %809 = sext i32 %808 to i64
  %810 = call i64 @WARN_ON(i64 %809)
  %811 = icmp ne i64 %810, 0
  br i1 %811, label %812, label %815

812:                                              ; preds = %803
  %813 = load i32, i32* @EINVAL, align 4
  %814 = sub nsw i32 0, %813
  store i32 %814, i32* %2, align 4
  br label %1085

815:                                              ; preds = %803
  %816 = load %struct.ieee80211_sband_iftype_data*, %struct.ieee80211_sband_iftype_data** %12, align 8
  %817 = getelementptr inbounds %struct.ieee80211_sband_iftype_data, %struct.ieee80211_sband_iftype_data* %816, i32 0, i32 1
  %818 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %817, i32 0, i32 0
  %819 = load i32, i32* %818, align 4
  %820 = icmp ne i32 %819, 0
  %821 = xor i1 %820, true
  %822 = zext i1 %821 to i32
  %823 = sext i32 %822 to i64
  %824 = call i64 @WARN_ON(i64 %823)
  %825 = icmp ne i64 %824, 0
  br i1 %825, label %826, label %829

826:                                              ; preds = %815
  %827 = load i32, i32* @EINVAL, align 4
  %828 = sub nsw i32 0, %827
  store i32 %828, i32* %2, align 4
  br label %1085

829:                                              ; preds = %815
  %830 = load %struct.ieee80211_sband_iftype_data*, %struct.ieee80211_sband_iftype_data** %12, align 8
  %831 = getelementptr inbounds %struct.ieee80211_sband_iftype_data, %struct.ieee80211_sband_iftype_data* %830, i32 0, i32 0
  %832 = load i32, i32* %831, align 4
  %833 = load i32, i32* %11, align 4
  %834 = or i32 %833, %832
  store i32 %834, i32* %11, align 4
  br label %835

835:                                              ; preds = %829
  %836 = load i32, i32* %9, align 4
  %837 = add nsw i32 %836, 1
  store i32 %837, i32* %9, align 4
  br label %778

838:                                              ; preds = %778
  store i32 1, i32* %8, align 4
  br label %839

839:                                              ; preds = %838, %644
  %840 = load i32, i32* %6, align 4
  %841 = add i32 %840, 1
  store i32 %841, i32* %6, align 4
  br label %630

842:                                              ; preds = %630
  %843 = load i32, i32* %8, align 4
  %844 = icmp ne i32 %843, 0
  br i1 %844, label %849, label %845

845:                                              ; preds = %842
  %846 = call i64 @WARN_ON(i64 1)
  %847 = load i32, i32* @EINVAL, align 4
  %848 = sub nsw i32 0, %847
  store i32 %848, i32* %2, align 4
  br label %1085

849:                                              ; preds = %842
  store i32 0, i32* %9, align 4
  br label %850

850:                                              ; preds = %909, %849
  %851 = load i32, i32* %9, align 4
  %852 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %853 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %852, i32 0, i32 0
  %854 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %853, i32 0, i32 1
  %855 = load i32, i32* %854, align 4
  %856 = icmp slt i32 %851, %855
  br i1 %856, label %857, label %912

857:                                              ; preds = %850
  %858 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %859 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %858, i32 0, i32 0
  %860 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %859, i32 0, i32 7
  %861 = load %struct.TYPE_15__*, %struct.TYPE_15__** %860, align 8
  %862 = load i32, i32* %9, align 4
  %863 = sext i32 %862 to i64
  %864 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %861, i64 %863
  %865 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %864, i32 0, i32 2
  %866 = load i32, i32* %865, align 4
  %867 = icmp ne i32 %866, 0
  %868 = xor i1 %867, true
  %869 = zext i1 %868 to i32
  %870 = sext i32 %869 to i64
  %871 = call i64 @WARN_ON(i64 %870)
  %872 = icmp ne i64 %871, 0
  br i1 %872, label %873, label %876

873:                                              ; preds = %857
  %874 = load i32, i32* @EINVAL, align 4
  %875 = sub nsw i32 0, %874
  store i32 %875, i32* %2, align 4
  br label %1085

876:                                              ; preds = %857
  %877 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %878 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %877, i32 0, i32 0
  %879 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %878, i32 0, i32 7
  %880 = load %struct.TYPE_15__*, %struct.TYPE_15__** %879, align 8
  %881 = load i32, i32* %9, align 4
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %880, i64 %882
  %884 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %883, i32 0, i32 1
  %885 = load i32, i32* %884, align 4
  %886 = icmp ne i32 %885, 0
  br i1 %886, label %899, label %887

887:                                              ; preds = %876
  %888 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %889 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %888, i32 0, i32 0
  %890 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %889, i32 0, i32 7
  %891 = load %struct.TYPE_15__*, %struct.TYPE_15__** %890, align 8
  %892 = load i32, i32* %9, align 4
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %891, i64 %893
  %895 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %894, i32 0, i32 0
  %896 = load i32, i32* %895, align 4
  %897 = icmp ne i32 %896, 0
  %898 = xor i1 %897, true
  br label %899

899:                                              ; preds = %887, %876
  %900 = phi i1 [ false, %876 ], [ %898, %887 ]
  %901 = zext i1 %900 to i32
  %902 = sext i32 %901 to i64
  %903 = call i64 @WARN_ON(i64 %902)
  %904 = icmp ne i64 %903, 0
  br i1 %904, label %905, label %908

905:                                              ; preds = %899
  %906 = load i32, i32* @EINVAL, align 4
  %907 = sub nsw i32 0, %906
  store i32 %907, i32* %2, align 4
  br label %1085

908:                                              ; preds = %899
  br label %909

909:                                              ; preds = %908
  %910 = load i32, i32* %9, align 4
  %911 = add nsw i32 %910, 1
  store i32 %911, i32* %9, align 4
  br label %850

912:                                              ; preds = %850
  %913 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %914 = call i32 @ieee80211_set_bitrate_flags(%struct.wiphy* %913)
  %915 = load i32, i32* @NL80211_FEATURE_SCAN_FLUSH, align 4
  %916 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %917 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %916, i32 0, i32 0
  %918 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %917, i32 0, i32 5
  %919 = load i32, i32* %918, align 4
  %920 = or i32 %919, %915
  store i32 %920, i32* %918, align 4
  %921 = call i32 (...) @rtnl_lock()
  %922 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %923 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %922, i32 0, i32 0
  %924 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %923, i32 0, i32 4
  %925 = call i32 @device_add(i32* %924)
  store i32 %925, i32* %5, align 4
  %926 = load i32, i32* %5, align 4
  %927 = icmp ne i32 %926, 0
  br i1 %927, label %928, label %931

928:                                              ; preds = %912
  %929 = call i32 (...) @rtnl_unlock()
  %930 = load i32, i32* %5, align 4
  store i32 %930, i32* %2, align 4
  br label %1085

931:                                              ; preds = %912
  %932 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %933 = call i32 @wiphy_regulatory_register(%struct.wiphy* %932)
  %934 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %935 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %934, i32 0, i32 2
  %936 = call i32 @list_add_rcu(i32* %935, i32* @cfg80211_rdev_list)
  %937 = load i32, i32* @cfg80211_rdev_list_generation, align 4
  %938 = add nsw i32 %937, 1
  store i32 %938, i32* @cfg80211_rdev_list_generation, align 4
  %939 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %940 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %939, i32 0, i32 0
  %941 = call i32 @wiphy_name(%struct.TYPE_17__* %940)
  %942 = load i32, i32* @ieee80211_debugfs_dir, align 4
  %943 = call i32 @debugfs_create_dir(i32 %941, i32 %942)
  %944 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %945 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %944, i32 0, i32 0
  %946 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %945, i32 0, i32 3
  store i32 %943, i32* %946, align 4
  %947 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %948 = call i32 @cfg80211_debugfs_rdev_add(%struct.cfg80211_registered_device* %947)
  %949 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %950 = load i32, i32* @NL80211_CMD_NEW_WIPHY, align 4
  %951 = call i32 @nl80211_notify_wiphy(%struct.cfg80211_registered_device* %949, i32 %950)
  %952 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %953 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %952, i32 0, i32 3
  %954 = load i32, i32* %953, align 4
  %955 = load i32, i32* @REGULATORY_CUSTOM_REG, align 4
  %956 = and i32 %954, %955
  %957 = icmp ne i32 %956, 0
  br i1 %957, label %958, label %971

958:                                              ; preds = %931
  %959 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %960 = call i32 @get_wiphy_idx(%struct.wiphy* %959)
  %961 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %13, i32 0, i32 2
  store i32 %960, i32* %961, align 4
  %962 = load i32, i32* @NL80211_REGDOM_SET_BY_DRIVER, align 4
  %963 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %13, i32 0, i32 1
  store i32 %962, i32* %963, align 8
  %964 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %13, i32 0, i32 0
  %965 = load i8*, i8** %964, align 8
  %966 = getelementptr inbounds i8, i8* %965, i64 0
  store i8 57, i8* %966, align 1
  %967 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %13, i32 0, i32 0
  %968 = load i8*, i8** %967, align 8
  %969 = getelementptr inbounds i8, i8* %968, i64 1
  store i8 57, i8* %969, align 1
  %970 = call i32 @nl80211_send_reg_change_event(%struct.regulatory_request* %13)
  br label %971

971:                                              ; preds = %958, %931
  %972 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %973 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %972, i32 0, i32 6
  %974 = load i64, i64* %973, align 8
  %975 = icmp ne i64 %974, 0
  br i1 %975, label %976, label %1062

976:                                              ; preds = %971
  %977 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %978 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %977, i32 0, i32 7
  %979 = load i32, i32* %978, align 8
  %980 = icmp ne i32 %979, 0
  br i1 %980, label %981, label %1062

981:                                              ; preds = %976
  %982 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %983 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %982, i32 0, i32 9
  %984 = load %struct.wiphy_iftype_ext_capab*, %struct.wiphy_iftype_ext_capab** %983, align 8
  %985 = icmp ne %struct.wiphy_iftype_ext_capab* %984, null
  br i1 %985, label %986, label %1062

986:                                              ; preds = %981
  %987 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %988 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %987, i32 0, i32 9
  %989 = load %struct.wiphy_iftype_ext_capab*, %struct.wiphy_iftype_ext_capab** %988, align 8
  store %struct.wiphy_iftype_ext_capab* %989, %struct.wiphy_iftype_ext_capab** %16, align 8
  store i64 0, i64* %15, align 8
  br label %990

990:                                              ; preds = %1058, %986
  %991 = load i64, i64* %15, align 8
  %992 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %993 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %992, i32 0, i32 6
  %994 = load i64, i64* %993, align 8
  %995 = icmp ult i64 %991, %994
  br i1 %995, label %996, label %1061

996:                                              ; preds = %990
  %997 = load %struct.wiphy_iftype_ext_capab*, %struct.wiphy_iftype_ext_capab** %16, align 8
  %998 = getelementptr inbounds %struct.wiphy_iftype_ext_capab, %struct.wiphy_iftype_ext_capab* %997, i64 0
  %999 = getelementptr inbounds %struct.wiphy_iftype_ext_capab, %struct.wiphy_iftype_ext_capab* %998, i32 0, i32 0
  %1000 = load i64, i64* %999, align 8
  %1001 = load i64, i64* %15, align 8
  %1002 = icmp ugt i64 %1000, %1001
  br i1 %1002, label %1003, label %1011

1003:                                             ; preds = %996
  %1004 = load %struct.wiphy_iftype_ext_capab*, %struct.wiphy_iftype_ext_capab** %16, align 8
  %1005 = getelementptr inbounds %struct.wiphy_iftype_ext_capab, %struct.wiphy_iftype_ext_capab* %1004, i64 0
  %1006 = getelementptr inbounds %struct.wiphy_iftype_ext_capab, %struct.wiphy_iftype_ext_capab* %1005, i32 0, i32 1
  %1007 = load i64*, i64** %1006, align 8
  %1008 = load i64, i64* %15, align 8
  %1009 = getelementptr inbounds i64, i64* %1007, i64 %1008
  %1010 = load i64, i64* %1009, align 8
  store i64 %1010, i64* %14, align 8
  br label %1012

1011:                                             ; preds = %996
  store i64 0, i64* %14, align 8
  br label %1012

1012:                                             ; preds = %1011, %1003
  store i32 1, i32* %9, align 4
  br label %1013

1013:                                             ; preds = %1041, %1012
  %1014 = load i32, i32* %9, align 4
  %1015 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %1016 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %1015, i32 0, i32 7
  %1017 = load i32, i32* %1016, align 8
  %1018 = icmp slt i32 %1014, %1017
  br i1 %1018, label %1019, label %1044

1019:                                             ; preds = %1013
  %1020 = load i64, i64* %15, align 8
  %1021 = load %struct.wiphy_iftype_ext_capab*, %struct.wiphy_iftype_ext_capab** %16, align 8
  %1022 = load i32, i32* %9, align 4
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds %struct.wiphy_iftype_ext_capab, %struct.wiphy_iftype_ext_capab* %1021, i64 %1023
  %1025 = getelementptr inbounds %struct.wiphy_iftype_ext_capab, %struct.wiphy_iftype_ext_capab* %1024, i32 0, i32 0
  %1026 = load i64, i64* %1025, align 8
  %1027 = icmp uge i64 %1020, %1026
  br i1 %1027, label %1028, label %1029

1028:                                             ; preds = %1019
  store i64 0, i64* %14, align 8
  br label %1044

1029:                                             ; preds = %1019
  %1030 = load %struct.wiphy_iftype_ext_capab*, %struct.wiphy_iftype_ext_capab** %16, align 8
  %1031 = load i32, i32* %9, align 4
  %1032 = sext i32 %1031 to i64
  %1033 = getelementptr inbounds %struct.wiphy_iftype_ext_capab, %struct.wiphy_iftype_ext_capab* %1030, i64 %1032
  %1034 = getelementptr inbounds %struct.wiphy_iftype_ext_capab, %struct.wiphy_iftype_ext_capab* %1033, i32 0, i32 1
  %1035 = load i64*, i64** %1034, align 8
  %1036 = load i64, i64* %15, align 8
  %1037 = getelementptr inbounds i64, i64* %1035, i64 %1036
  %1038 = load i64, i64* %1037, align 8
  %1039 = load i64, i64* %14, align 8
  %1040 = and i64 %1039, %1038
  store i64 %1040, i64* %14, align 8
  br label %1041

1041:                                             ; preds = %1029
  %1042 = load i32, i32* %9, align 4
  %1043 = add nsw i32 %1042, 1
  store i32 %1043, i32* %9, align 4
  br label %1013

1044:                                             ; preds = %1028, %1013
  %1045 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %1046 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %1045, i32 0, i32 8
  %1047 = load i64*, i64** %1046, align 8
  %1048 = load i64, i64* %15, align 8
  %1049 = getelementptr inbounds i64, i64* %1047, i64 %1048
  %1050 = load i64, i64* %1049, align 8
  %1051 = load i64, i64* %14, align 8
  %1052 = xor i64 %1051, -1
  %1053 = and i64 %1050, %1052
  %1054 = call i64 @WARN_ON(i64 %1053)
  %1055 = icmp ne i64 %1054, 0
  br i1 %1055, label %1056, label %1057

1056:                                             ; preds = %1044
  br label %1061

1057:                                             ; preds = %1044
  br label %1058

1058:                                             ; preds = %1057
  %1059 = load i64, i64* %15, align 8
  %1060 = add i64 %1059, 1
  store i64 %1060, i64* %15, align 8
  br label %990

1061:                                             ; preds = %1056, %990
  br label %1062

1062:                                             ; preds = %1061, %981, %976, %971
  %1063 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %1064 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1063, i32 0, i32 0
  %1065 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1064, i32 0, i32 2
  store i32 1, i32* %1065, align 8
  %1066 = call i32 (...) @rtnl_unlock()
  %1067 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %1068 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1067, i32 0, i32 1
  %1069 = load i32*, i32** %1068, align 8
  %1070 = call i32 @rfkill_register(i32* %1069)
  store i32 %1070, i32* %5, align 4
  %1071 = load i32, i32* %5, align 4
  %1072 = icmp ne i32 %1071, 0
  br i1 %1072, label %1073, label %1084

1073:                                             ; preds = %1062
  %1074 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %1075 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1074, i32 0, i32 1
  %1076 = load i32*, i32** %1075, align 8
  %1077 = call i32 @rfkill_destroy(i32* %1076)
  %1078 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %1079 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1078, i32 0, i32 1
  store i32* null, i32** %1079, align 8
  %1080 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %1081 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %1080, i32 0, i32 0
  %1082 = call i32 @wiphy_unregister(%struct.TYPE_17__* %1081)
  %1083 = load i32, i32* %5, align 4
  store i32 %1083, i32* %2, align 4
  br label %1085

1084:                                             ; preds = %1062
  store i32 0, i32* %2, align 4
  br label %1085

1085:                                             ; preds = %1084, %1073, %928, %905, %873, %845, %826, %812, %800, %717, %677, %658, %627, %576, %552, %520, %496, %465, %432, %412, %390, %341, %272, %234, %208, %182, %143, %120, %107, %51
  %1086 = load i32, i32* %2, align 4
  ret i32 %1086
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local i64 @WARN_ON(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @wiphy_ext_feature_isset(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wiphy_verify_combinations(%struct.wiphy*) #1

declare dso_local i32 @ieee80211_set_bitrate_flags(%struct.wiphy*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @wiphy_regulatory_register(%struct.wiphy*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @wiphy_name(%struct.TYPE_17__*) #1

declare dso_local i32 @cfg80211_debugfs_rdev_add(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @nl80211_notify_wiphy(%struct.cfg80211_registered_device*, i32) #1

declare dso_local i32 @get_wiphy_idx(%struct.wiphy*) #1

declare dso_local i32 @nl80211_send_reg_change_event(%struct.regulatory_request*) #1

declare dso_local i32 @rfkill_register(i32*) #1

declare dso_local i32 @rfkill_destroy(i32*) #1

declare dso_local i32 @wiphy_unregister(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
