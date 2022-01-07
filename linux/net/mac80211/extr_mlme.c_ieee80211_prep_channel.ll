; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_prep_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_prep_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, i32, %struct.TYPE_8__, %struct.ieee80211_local* }
%struct.TYPE_8__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32 }
%struct.ieee80211_local = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i64, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.cfg80211_bss = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.ieee80211_ht_cap = type { i32 }
%struct.ieee80211_ht_operation = type { i32 }
%struct.ieee80211_vht_operation = type { i32 }
%struct.ieee80211_he_operation = type { i32 }
%struct.cfg80211_chan_def = type { i64 }
%struct.cfg80211_bss_ies = type { i32, i32 }

@IEEE80211_STA_DISABLE_40MHZ = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_80P80MHZ = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_HT = common dso_local global i32 0, align 4
@WLAN_EID_HT_OPERATION = common dso_local global i32 0, align 4
@WLAN_EID_HT_CAPABILITY = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_VHT = common dso_local global i32 0, align 4
@WLAN_EID_VHT_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"AP advertised VHT without HT, disabling both\0A\00", align 1
@WLAN_EID_VHT_CAPABILITY = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_HE = common dso_local global i32 0, align 4
@WLAN_EID_EXT_HE_OPERATION = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_80MHZ = common dso_local global i32 0, align 4
@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4
@IEEE80211_CHANCTX_SHARED = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_5 = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_10 = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.cfg80211_bss*)* @ieee80211_prep_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_prep_channel(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_bss* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.cfg80211_bss*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_if_managed*, align 8
  %7 = alloca %struct.ieee80211_ht_cap*, align 8
  %8 = alloca %struct.ieee80211_ht_operation*, align 8
  %9 = alloca %struct.ieee80211_vht_operation*, align 8
  %10 = alloca %struct.ieee80211_he_operation*, align 8
  %11 = alloca %struct.ieee80211_supported_band*, align 8
  %12 = alloca %struct.cfg80211_chan_def, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.cfg80211_bss_ies*, align 8
  %21 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %4, align 8
  %22 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %22, i32 0, i32 3
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %23, align 8
  store %struct.ieee80211_local* %24, %struct.ieee80211_local** %5, align 8
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store %struct.ieee80211_if_managed* %27, %struct.ieee80211_if_managed** %6, align 8
  store %struct.ieee80211_ht_cap* null, %struct.ieee80211_ht_cap** %7, align 8
  store %struct.ieee80211_ht_operation* null, %struct.ieee80211_ht_operation** %8, align 8
  store %struct.ieee80211_vht_operation* null, %struct.ieee80211_vht_operation** %9, align 8
  store %struct.ieee80211_he_operation* null, %struct.ieee80211_he_operation** %10, align 8
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %32, align 8
  %34 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %35 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %34, i32 0, i32 0
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %33, i64 %38
  %40 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %39, align 8
  store %struct.ieee80211_supported_band* %40, %struct.ieee80211_supported_band** %11, align 8
  %41 = load i32, i32* @IEEE80211_STA_DISABLE_40MHZ, align 4
  %42 = load i32, i32* @IEEE80211_STA_DISABLE_80P80MHZ, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @IEEE80211_STA_DISABLE_160MHZ, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = call i32 (...) @rcu_read_lock()
  %52 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %108, label %58

58:                                               ; preds = %2
  %59 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %60 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %108

64:                                               ; preds = %58
  %65 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %66 = load i32, i32* @WLAN_EID_HT_OPERATION, align 4
  %67 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %65, i32 %66)
  store i32* %67, i32** %16, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load i32*, i32** %16, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp uge i64 %74, 4
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i32*, i32** %16, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = bitcast i32* %78 to i8*
  %80 = bitcast i8* %79 to %struct.ieee80211_ht_operation*
  store %struct.ieee80211_ht_operation* %80, %struct.ieee80211_ht_operation** %8, align 8
  br label %81

81:                                               ; preds = %76, %70, %64
  %82 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %83 = load i32, i32* @WLAN_EID_HT_CAPABILITY, align 4
  %84 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %82, i32 %83)
  store i32* %84, i32** %17, align 8
  %85 = load i32*, i32** %17, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load i32*, i32** %17, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp uge i64 %91, 4
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load i32*, i32** %17, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = bitcast i32* %95 to i8*
  %97 = bitcast i8* %96 to %struct.ieee80211_ht_cap*
  store %struct.ieee80211_ht_cap* %97, %struct.ieee80211_ht_cap** %7, align 8
  br label %98

98:                                               ; preds = %93, %87, %81
  %99 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %7, align 8
  %100 = icmp ne %struct.ieee80211_ht_cap* %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %103 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %104 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  store %struct.ieee80211_ht_operation* null, %struct.ieee80211_ht_operation** %8, align 8
  br label %107

107:                                              ; preds = %101, %98
  br label %108

108:                                              ; preds = %107, %58, %2
  %109 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %110 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %176, label %115

115:                                              ; preds = %108
  %116 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %117 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %176

121:                                              ; preds = %115
  %122 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %123 = load i32, i32* @WLAN_EID_VHT_OPERATION, align 4
  %124 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %122, i32 %123)
  store i32* %124, i32** %18, align 8
  %125 = load i32*, i32** %18, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %121
  %128 = load i32*, i32** %18, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = icmp uge i64 %131, 4
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load i32*, i32** %18, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = bitcast i32* %135 to i8*
  %137 = bitcast i8* %136 to %struct.ieee80211_vht_operation*
  store %struct.ieee80211_vht_operation* %137, %struct.ieee80211_vht_operation** %9, align 8
  br label %138

138:                                              ; preds = %133, %127, %121
  %139 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %9, align 8
  %140 = icmp ne %struct.ieee80211_vht_operation* %139, null
  br i1 %140, label %141, label %157

141:                                              ; preds = %138
  %142 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %8, align 8
  %143 = icmp ne %struct.ieee80211_ht_operation* %142, null
  br i1 %143, label %157, label %144

144:                                              ; preds = %141
  store %struct.ieee80211_vht_operation* null, %struct.ieee80211_vht_operation** %9, align 8
  %145 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %146 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %145, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %147 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %148 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %149 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %153 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %154 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %144, %141, %138
  %158 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %159 = load i32, i32* @WLAN_EID_VHT_CAPABILITY, align 4
  %160 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %158, i32 %159)
  store i32* %160, i32** %19, align 8
  %161 = load i32*, i32** %19, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load i32*, i32** %19, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = icmp ult i64 %167, 4
  br i1 %168, label %169, label %175

169:                                              ; preds = %163, %157
  %170 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %171 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %172 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  store %struct.ieee80211_vht_operation* null, %struct.ieee80211_vht_operation** %9, align 8
  br label %175

175:                                              ; preds = %169, %163
  br label %176

176:                                              ; preds = %175, %115, %108
  %177 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %178 = call i32 @ieee80211_get_he_sta_cap(%struct.ieee80211_supported_band* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %176
  %181 = load i32, i32* @IEEE80211_STA_DISABLE_HE, align 4
  %182 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %183 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %180, %176
  %187 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %188 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @IEEE80211_STA_DISABLE_HE, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %234, label %193

193:                                              ; preds = %186
  %194 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %195 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call %struct.cfg80211_bss_ies* @rcu_dereference(i32 %196)
  store %struct.cfg80211_bss_ies* %197, %struct.cfg80211_bss_ies** %20, align 8
  %198 = load i32, i32* @WLAN_EID_EXT_HE_OPERATION, align 4
  %199 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %20, align 8
  %200 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %20, align 8
  %203 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32* @cfg80211_find_ext_ie(i32 %198, i32 %201, i32 %204)
  store i32* %205, i32** %21, align 8
  %206 = load i32*, i32** %21, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %221

208:                                              ; preds = %193
  %209 = load i32*, i32** %21, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %21, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 3
  %214 = call i32 @ieee80211_he_oper_size(i32* %213)
  %215 = icmp eq i32 %211, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %208
  %217 = load i32*, i32** %21, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 3
  %219 = bitcast i32* %218 to i8*
  %220 = bitcast i8* %219 to %struct.ieee80211_he_operation*
  store %struct.ieee80211_he_operation* %220, %struct.ieee80211_he_operation** %10, align 8
  br label %222

221:                                              ; preds = %208, %193
  store %struct.ieee80211_he_operation* null, %struct.ieee80211_he_operation** %10, align 8
  br label %222

222:                                              ; preds = %221, %216
  %223 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %224 = load %struct.ieee80211_he_operation*, %struct.ieee80211_he_operation** %10, align 8
  %225 = call i32 @ieee80211_verify_sta_he_mcs_support(%struct.ieee80211_supported_band* %223, %struct.ieee80211_he_operation* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %222
  %228 = load i32, i32* @IEEE80211_STA_DISABLE_HE, align 4
  %229 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %230 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %227, %222
  br label %234

234:                                              ; preds = %233, %186
  store i32 0, i32* %15, align 4
  store i64 0, i64* %14, align 8
  br label %235

235:                                              ; preds = %256, %234
  %236 = load i64, i64* %14, align 8
  %237 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %238 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp ult i64 %236, %239
  br i1 %240, label %241, label %259

241:                                              ; preds = %235
  %242 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %243 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %242, i32 0, i32 1
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %243, align 8
  %245 = load i64, i64* %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %250 = load i32, i32* @IEEE80211_CHAN_NO_80MHZ, align 4
  %251 = or i32 %249, %250
  %252 = and i32 %248, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %241
  br label %256

255:                                              ; preds = %241
  store i32 1, i32* %15, align 4
  br label %259

256:                                              ; preds = %254
  %257 = load i64, i64* %14, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %14, align 8
  br label %235

259:                                              ; preds = %255, %235
  %260 = load i32, i32* %15, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %259
  %263 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %264 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %265 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %262, %259
  %269 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %270 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %271 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %272 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %271, i32 0, i32 0
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %272, align 8
  %274 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %8, align 8
  %275 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %9, align 8
  %276 = load %struct.ieee80211_he_operation*, %struct.ieee80211_he_operation** %10, align 8
  %277 = call i32 @ieee80211_determine_chantype(%struct.ieee80211_sub_if_data* %269, %struct.ieee80211_supported_band* %270, %struct.TYPE_14__* %273, %struct.ieee80211_ht_operation* %274, %struct.ieee80211_vht_operation* %275, %struct.ieee80211_he_operation* %276, %struct.cfg80211_chan_def* %12, i32 0)
  %278 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %279 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 4
  %282 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %283 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %284 = call i32 @ieee80211_ht_vht_rx_chains(%struct.ieee80211_sub_if_data* %282, %struct.cfg80211_bss* %283)
  %285 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %286 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @min(i32 %284, i32 %287)
  %289 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %290 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 4
  %291 = call i32 (...) @rcu_read_unlock()
  %292 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  %293 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %294 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %293, i32 0, i32 0
  store i32 %292, i32* %294, align 8
  %295 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %296 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %295, i32 0, i32 0
  %297 = call i32 @mutex_lock(i32* %296)
  %298 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %299 = load i32, i32* @IEEE80211_CHANCTX_SHARED, align 4
  %300 = call i32 @ieee80211_vif_use_channel(%struct.ieee80211_sub_if_data* %298, %struct.cfg80211_chan_def* %12, i32 %299)
  store i32 %300, i32* %13, align 4
  %301 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @NL80211_CHAN_WIDTH_5, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %310, label %305

305:                                              ; preds = %268
  %306 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @NL80211_CHAN_WIDTH_10, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %305, %268
  br label %332

311:                                              ; preds = %305
  br label %312

312:                                              ; preds = %322, %311
  %313 = load i32, i32* %13, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %312
  %316 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %319 = icmp ne i64 %317, %318
  br label %320

320:                                              ; preds = %315, %312
  %321 = phi i1 [ false, %312 ], [ %319, %315 ]
  br i1 %321, label %322, label %331

322:                                              ; preds = %320
  %323 = call i32 @ieee80211_chandef_downgrade(%struct.cfg80211_chan_def* %12)
  %324 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %325 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = or i32 %326, %323
  store i32 %327, i32* %325, align 4
  %328 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %329 = load i32, i32* @IEEE80211_CHANCTX_SHARED, align 4
  %330 = call i32 @ieee80211_vif_use_channel(%struct.ieee80211_sub_if_data* %328, %struct.cfg80211_chan_def* %12, i32 %329)
  store i32 %330, i32* %13, align 4
  br label %312

331:                                              ; preds = %320
  br label %332

332:                                              ; preds = %331, %310
  %333 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %334 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %333, i32 0, i32 0
  %335 = call i32 @mutex_unlock(i32* %334)
  %336 = load i32, i32* %13, align 4
  ret i32 %336
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss*, i32) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*) #1

declare dso_local i32 @ieee80211_get_he_sta_cap(%struct.ieee80211_supported_band*) #1

declare dso_local %struct.cfg80211_bss_ies* @rcu_dereference(i32) #1

declare dso_local i32* @cfg80211_find_ext_ie(i32, i32, i32) #1

declare dso_local i32 @ieee80211_he_oper_size(i32*) #1

declare dso_local i32 @ieee80211_verify_sta_he_mcs_support(%struct.ieee80211_supported_band*, %struct.ieee80211_he_operation*) #1

declare dso_local i32 @ieee80211_determine_chantype(%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, %struct.TYPE_14__*, %struct.ieee80211_ht_operation*, %struct.ieee80211_vht_operation*, %struct.ieee80211_he_operation*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ieee80211_ht_vht_rx_chains(%struct.ieee80211_sub_if_data*, %struct.cfg80211_bss*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_vif_use_channel(%struct.ieee80211_sub_if_data*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @ieee80211_chandef_downgrade(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
