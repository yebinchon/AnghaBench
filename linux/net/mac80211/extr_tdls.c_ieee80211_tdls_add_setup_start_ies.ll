; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_add_setup_start_ies.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_add_setup_start_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_8__, %struct.ieee80211_local* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_local = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_supported_band = type { %struct.TYPE_10__, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.ieee80211_sta_ht_cap = type { i32, i64, i64 }
%struct.ieee80211_sta_vht_cap = type { i32, i64, i64 }
%struct.sta_info = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_10__ }

@ieee80211_tdls_add_setup_start_ies.before_ext_cap = internal constant [5 x i64] [i64 129, i64 138, i64 136, i64 131, i64 132], align 16
@IEEE80211_NUM_ACS = common dso_local global i64 0, align 8
@WLAN_PUB_ACTION_TDLS_DISCOVER_RES = common dso_local global i64 0, align 8
@ieee80211_tdls_add_setup_start_ies.before_ht_cap = internal constant [10 x i64] [i64 129, i64 138, i64 136, i64 131, i64 132, i64 137, i64 133, i64 135, i64 128, i64 130], align 16
@WLAN_TDLS_SETUP_RESPONSE = common dso_local global i64 0, align 8
@WLAN_TDLS_SETUP_REQUEST = common dso_local global i64 0, align 8
@WLAN_HT_CAP_SM_PS_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SM_PS_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@ieee80211_tdls_add_setup_start_ies.before_vht_cap = internal constant [11 x i64] [i64 129, i64 138, i64 136, i64 131, i64 132, i64 137, i64 133, i64 135, i64 128, i64 130, i64 134], align 16
@WLAN_STA_TDLS_WIDER_BW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i64*, i64, i32, i64*, i64)* @ieee80211_tdls_add_setup_start_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_tdls_add_setup_start_ies(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, i64* %2, i64 %3, i32 %4, i64* %5, i64 %6) #0 {
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ieee80211_supported_band*, align 8
  %16 = alloca %struct.ieee80211_local*, align 8
  %17 = alloca %struct.ieee80211_sta_ht_cap, align 8
  %18 = alloca %struct.ieee80211_sta_vht_cap, align 8
  %19 = alloca %struct.sta_info*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  store i64 %6, i64* %14, align 8
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 1
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %24, align 8
  store %struct.ieee80211_local* %25, %struct.ieee80211_local** %16, align 8
  store %struct.sta_info* null, %struct.sta_info** %19, align 8
  store i64 0, i64* %20, align 8
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %27 = call %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data* %26)
  store %struct.ieee80211_supported_band* %27, %struct.ieee80211_supported_band** %15, align 8
  %28 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %29 = icmp ne %struct.ieee80211_supported_band* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %7
  br label %317

31:                                               ; preds = %7
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %35 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ieee80211_add_srates_ie(%struct.ieee80211_sub_if_data* %32, %struct.sk_buff* %33, i32 0, i32 %36)
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %41 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ieee80211_add_ext_srates_ie(%struct.ieee80211_sub_if_data* %38, %struct.sk_buff* %39, i32 0, i32 %42)
  %44 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = call i32 @ieee80211_tdls_add_supp_channels(%struct.ieee80211_sub_if_data* %44, %struct.sk_buff* %45)
  %47 = load i64, i64* %14, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %31
  %50 = load i64*, i64** %13, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @ARRAY_SIZE(i64* getelementptr inbounds ([5 x i64], [5 x i64]* @ieee80211_tdls_add_setup_start_ies.before_ext_cap, i64 0, i64 0))
  %53 = load i64, i64* %20, align 8
  %54 = call i64 @ieee80211_ie_split(i64* %50, i64 %51, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @ieee80211_tdls_add_setup_start_ies.before_ext_cap, i64 0, i64 0), i32 %52, i64 %53)
  store i64 %54, i64* %21, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = load i64*, i64** %13, align 8
  %57 = load i64, i64* %20, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %21, align 8
  %60 = load i64, i64* %20, align 8
  %61 = sub i64 %59, %60
  %62 = call i32 @skb_put_data(%struct.sk_buff* %55, i64* %58, i64 %61)
  %63 = load i64, i64* %21, align 8
  store i64 %63, i64* %20, align 8
  br label %64

64:                                               ; preds = %49, %31
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = call i32 @ieee80211_tdls_add_ext_capab(%struct.ieee80211_sub_if_data* %65, %struct.sk_buff* %66)
  %68 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %69 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %64
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @WLAN_PUB_ACTION_TDLS_DISCOVER_RES, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %80 = call i64* @skb_put(%struct.sk_buff* %79, i32 9)
  %81 = call i32 @ieee80211_add_wmm_info_ie(i64* %80, i32 0)
  br label %82

82:                                               ; preds = %78, %74, %64
  %83 = load i64, i64* %14, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %82
  %86 = load i64*, i64** %13, align 8
  %87 = load i64, i64* %14, align 8
  %88 = call i32 @ARRAY_SIZE(i64* getelementptr inbounds ([10 x i64], [10 x i64]* @ieee80211_tdls_add_setup_start_ies.before_ht_cap, i64 0, i64 0))
  %89 = load i64, i64* %20, align 8
  %90 = call i64 @ieee80211_ie_split(i64* %86, i64 %87, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @ieee80211_tdls_add_setup_start_ies.before_ht_cap, i64 0, i64 0), i32 %88, i64 %89)
  store i64 %90, i64* %21, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = load i64*, i64** %13, align 8
  %93 = load i64, i64* %20, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %21, align 8
  %96 = load i64, i64* %20, align 8
  %97 = sub i64 %95, %96
  %98 = call i32 @skb_put_data(%struct.sk_buff* %91, i64* %94, i64 %97)
  %99 = load i64, i64* %21, align 8
  store i64 %99, i64* %20, align 8
  br label %100

100:                                              ; preds = %85, %82
  %101 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %102 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %101, i32 0, i32 0
  %103 = call i32 @mutex_lock(i32* %102)
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* @WLAN_TDLS_SETUP_RESPONSE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %129

107:                                              ; preds = %100
  %108 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %109 = load i64*, i64** %10, align 8
  %110 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %108, i64* %109)
  store %struct.sta_info* %110, %struct.sta_info** %19, align 8
  %111 = load %struct.sta_info*, %struct.sta_info** %19, align 8
  %112 = icmp ne %struct.sta_info* %111, null
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i64 @WARN_ON_ONCE(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %107
  %118 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %119 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  br label %317

121:                                              ; preds = %107
  %122 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %123 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.sta_info*, %struct.sta_info** %19, align 8
  %128 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %121, %100
  %130 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %132 = call i32 @ieee80211_tdls_add_oper_classes(%struct.ieee80211_sub_if_data* %130, %struct.sk_buff* %131)
  %133 = bitcast %struct.ieee80211_sta_ht_cap* %17 to %struct.ieee80211_sta_vht_cap*
  %134 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %135 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %134, i32 0, i32 1
  %136 = call i32 @memcpy(%struct.ieee80211_sta_vht_cap* %133, %struct.TYPE_10__* %135, i32 24)
  %137 = load i64, i64* %11, align 8
  %138 = load i64, i64* @WLAN_TDLS_SETUP_REQUEST, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %129
  %141 = load i64, i64* %11, align 8
  %142 = load i64, i64* @WLAN_PUB_ACTION_TDLS_DISCOVER_RES, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %165

144:                                              ; preds = %140, %129
  %145 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %17, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %165

148:                                              ; preds = %144
  %149 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %150 = bitcast %struct.ieee80211_sta_ht_cap* %17 to %struct.ieee80211_sta_vht_cap*
  %151 = call i32 @ieee80211_apply_htcap_overrides(%struct.ieee80211_sub_if_data* %149, %struct.ieee80211_sta_vht_cap* %150)
  %152 = load i32, i32* @WLAN_HT_CAP_SM_PS_DISABLED, align 4
  %153 = load i32, i32* @IEEE80211_HT_CAP_SM_PS_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %17, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %154
  store i32 %157, i32* %155, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %159 = call i64* @skb_put(%struct.sk_buff* %158, i32 6)
  store i64* %159, i64** %22, align 8
  %160 = load i64*, i64** %22, align 8
  %161 = bitcast %struct.ieee80211_sta_ht_cap* %17 to %struct.ieee80211_sta_vht_cap*
  %162 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %17, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @ieee80211_ie_build_ht_cap(i64* %160, %struct.ieee80211_sta_vht_cap* %161, i32 %163)
  br label %194

165:                                              ; preds = %144, %140
  %166 = load i64, i64* %11, align 8
  %167 = load i64, i64* @WLAN_TDLS_SETUP_RESPONSE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %193

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %17, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %193

173:                                              ; preds = %169
  %174 = load %struct.sta_info*, %struct.sta_info** %19, align 8
  %175 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %173
  %181 = bitcast %struct.ieee80211_sta_ht_cap* %17 to %struct.ieee80211_sta_vht_cap*
  %182 = load %struct.sta_info*, %struct.sta_info** %19, align 8
  %183 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = call i32 @memcpy(%struct.ieee80211_sta_vht_cap* %181, %struct.TYPE_10__* %184, i32 24)
  %186 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %187 = call i64* @skb_put(%struct.sk_buff* %186, i32 6)
  store i64* %187, i64** %22, align 8
  %188 = load i64*, i64** %22, align 8
  %189 = bitcast %struct.ieee80211_sta_ht_cap* %17 to %struct.ieee80211_sta_vht_cap*
  %190 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %17, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @ieee80211_ie_build_ht_cap(i64* %188, %struct.ieee80211_sta_vht_cap* %189, i32 %191)
  br label %193

193:                                              ; preds = %180, %173, %169, %165
  br label %194

194:                                              ; preds = %193, %148
  %195 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %17, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %17, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  %205 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %206 = call i32 @ieee80211_tdls_add_bss_coex_ie(%struct.sk_buff* %205)
  br label %207

207:                                              ; preds = %204, %198, %194
  %208 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %210 = load i64*, i64** %10, align 8
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @ieee80211_tdls_add_link_ie(%struct.ieee80211_sub_if_data* %208, %struct.sk_buff* %209, i64* %210, i32 %211)
  %213 = load i64, i64* %14, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %207
  %216 = load i64*, i64** %13, align 8
  %217 = load i64, i64* %14, align 8
  %218 = call i32 @ARRAY_SIZE(i64* getelementptr inbounds ([11 x i64], [11 x i64]* @ieee80211_tdls_add_setup_start_ies.before_vht_cap, i64 0, i64 0))
  %219 = load i64, i64* %20, align 8
  %220 = call i64 @ieee80211_ie_split(i64* %216, i64 %217, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @ieee80211_tdls_add_setup_start_ies.before_vht_cap, i64 0, i64 0), i32 %218, i64 %219)
  store i64 %220, i64* %21, align 8
  %221 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %222 = load i64*, i64** %13, align 8
  %223 = load i64, i64* %20, align 8
  %224 = getelementptr inbounds i64, i64* %222, i64 %223
  %225 = load i64, i64* %21, align 8
  %226 = load i64, i64* %20, align 8
  %227 = sub i64 %225, %226
  %228 = call i32 @skb_put_data(%struct.sk_buff* %221, i64* %224, i64 %227)
  %229 = load i64, i64* %21, align 8
  store i64 %229, i64* %20, align 8
  br label %230

230:                                              ; preds = %215, %207
  %231 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %232 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %231, i32 0, i32 0
  %233 = call i32 @memcpy(%struct.ieee80211_sta_vht_cap* %18, %struct.TYPE_10__* %232, i32 24)
  %234 = load i64, i64* %11, align 8
  %235 = load i64, i64* @WLAN_TDLS_SETUP_REQUEST, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %241, label %237

237:                                              ; preds = %230
  %238 = load i64, i64* %11, align 8
  %239 = load i64, i64* @WLAN_PUB_ACTION_TDLS_DISCOVER_RES, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %262

241:                                              ; preds = %237, %230
  %242 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %18, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %262

245:                                              ; preds = %241
  %246 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %247 = call i32 @ieee80211_apply_vhtcap_overrides(%struct.ieee80211_sub_if_data* %246, %struct.ieee80211_sta_vht_cap* %18)
  %248 = load i64, i64* %11, align 8
  %249 = load i64, i64* @WLAN_TDLS_SETUP_REQUEST, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %255

251:                                              ; preds = %245
  %252 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %253 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %254 = call i32 @ieee80211_tdls_add_aid(%struct.ieee80211_sub_if_data* %252, %struct.sk_buff* %253)
  br label %255

255:                                              ; preds = %251, %245
  %256 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %257 = call i64* @skb_put(%struct.sk_buff* %256, i32 6)
  store i64* %257, i64** %22, align 8
  %258 = load i64*, i64** %22, align 8
  %259 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %18, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @ieee80211_ie_build_vht_cap(i64* %258, %struct.ieee80211_sta_vht_cap* %18, i32 %260)
  br label %301

262:                                              ; preds = %241, %237
  %263 = load i64, i64* %11, align 8
  %264 = load i64, i64* @WLAN_TDLS_SETUP_RESPONSE, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %300

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %18, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %300

270:                                              ; preds = %266
  %271 = load %struct.sta_info*, %struct.sta_info** %19, align 8
  %272 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %300

277:                                              ; preds = %270
  %278 = load %struct.sta_info*, %struct.sta_info** %19, align 8
  %279 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 0
  %281 = call i32 @memcpy(%struct.ieee80211_sta_vht_cap* %18, %struct.TYPE_10__* %280, i32 24)
  %282 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %283 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %284 = call i32 @ieee80211_tdls_add_aid(%struct.ieee80211_sub_if_data* %282, %struct.sk_buff* %283)
  %285 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %286 = call i64* @skb_put(%struct.sk_buff* %285, i32 6)
  store i64* %286, i64** %22, align 8
  %287 = load i64*, i64** %22, align 8
  %288 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %18, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @ieee80211_ie_build_vht_cap(i64* %287, %struct.ieee80211_sta_vht_cap* %18, i32 %289)
  %291 = load %struct.sta_info*, %struct.sta_info** %19, align 8
  %292 = load i32, i32* @WLAN_STA_TDLS_WIDER_BW, align 4
  %293 = call i64 @test_sta_flag(%struct.sta_info* %291, i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %277
  %296 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %297 = load %struct.sta_info*, %struct.sta_info** %19, align 8
  %298 = call i32 @ieee80211_tdls_chandef_vht_upgrade(%struct.ieee80211_sub_if_data* %296, %struct.sta_info* %297)
  br label %299

299:                                              ; preds = %295, %277
  br label %300

300:                                              ; preds = %299, %270, %266, %262
  br label %301

301:                                              ; preds = %300, %255
  %302 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  %303 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %302, i32 0, i32 0
  %304 = call i32 @mutex_unlock(i32* %303)
  %305 = load i64, i64* %14, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %317

307:                                              ; preds = %301
  %308 = load i64, i64* %14, align 8
  store i64 %308, i64* %21, align 8
  %309 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %310 = load i64*, i64** %13, align 8
  %311 = load i64, i64* %20, align 8
  %312 = getelementptr inbounds i64, i64* %310, i64 %311
  %313 = load i64, i64* %21, align 8
  %314 = load i64, i64* %20, align 8
  %315 = sub i64 %313, %314
  %316 = call i32 @skb_put_data(%struct.sk_buff* %309, i64* %312, i64 %315)
  br label %317

317:                                              ; preds = %30, %117, %307, %301
  ret void
}

declare dso_local %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_add_srates_ie(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ieee80211_add_ext_srates_ie(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ieee80211_tdls_add_supp_channels(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local i64 @ieee80211_ie_split(i64*, i64, i64*, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64*, i64) #1

declare dso_local i32 @ieee80211_tdls_add_ext_capab(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_add_wmm_info_ie(i64*, i32) #1

declare dso_local i64* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i64*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ieee80211_tdls_add_oper_classes(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local i32 @memcpy(%struct.ieee80211_sta_vht_cap*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ieee80211_apply_htcap_overrides(%struct.ieee80211_sub_if_data*, %struct.ieee80211_sta_vht_cap*) #1

declare dso_local i32 @ieee80211_ie_build_ht_cap(i64*, %struct.ieee80211_sta_vht_cap*, i32) #1

declare dso_local i32 @ieee80211_tdls_add_bss_coex_ie(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tdls_add_link_ie(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i64*, i32) #1

declare dso_local i32 @ieee80211_apply_vhtcap_overrides(%struct.ieee80211_sub_if_data*, %struct.ieee80211_sta_vht_cap*) #1

declare dso_local i32 @ieee80211_tdls_add_aid(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_ie_build_vht_cap(i64*, %struct.ieee80211_sta_vht_cap*, i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @ieee80211_tdls_chandef_vht_upgrade(%struct.ieee80211_sub_if_data*, %struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
