; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_mesh_process_chnswitch.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_mesh_process_chnswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_20__*, %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i64, i64, i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.ieee802_11_elems = type { i32 }
%struct.cfg80211_csa_settings = type { i32, i32, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__*, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.ieee80211_csa_ie = type { i64, i32, i64, i64, i32, %struct.TYPE_21__ }
%struct.ieee80211_supported_band = type { i32 }

@IEEE80211_STA_DISABLE_HT = common dso_local global i64 0, align 8
@IEEE80211_STA_DISABLE_40MHZ = common dso_local global i64 0, align 8
@IEEE80211_STA_DISABLE_VHT = common dso_local global i64 0, align 8
@WLAN_REASON_MESH_CHAN_REGULATORY = common dso_local global i64 0, align 8
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"mesh STA %pM switches to unsupported channel (%d MHz, width:%d, CF1/2: %d/%d MHz), aborting\0A\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"mesh STA %pM switches to channel requiring DFS (%d MHz, width:%d, CF1/2: %d/%d MHz), aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"received csa with an identical chandef, ignoring\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"received channel switch announcement to go to channel %d MHz\0A\00", align 1
@WLAN_EID_CHAN_SWITCH_PARAM_TX_RESTRICT = common dso_local global i32 0, align 4
@IEEE80211_MESH_CSA_ROLE_REPEATER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.ieee802_11_elems*, i32)* @ieee80211_mesh_process_chnswitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_mesh_process_chnswitch(%struct.ieee80211_sub_if_data* %0, %struct.ieee802_11_elems* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.ieee802_11_elems*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cfg80211_csa_settings, align 8
  %9 = alloca %struct.ieee80211_csa_ie, align 8
  %10 = alloca %struct.ieee80211_if_mesh*, align 8
  %11 = alloca %struct.ieee80211_supported_band*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.ieee802_11_elems* %1, %struct.ieee802_11_elems** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %16, %struct.ieee80211_if_mesh** %10, align 8
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %18 = call i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data* %17)
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %20 = call %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data* %19)
  store %struct.ieee80211_supported_band* %20, %struct.ieee80211_supported_band** %11, align 8
  %21 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %22 = icmp ne %struct.ieee80211_supported_band* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %237

24:                                               ; preds = %3
  store i64 0, i64* %13, align 8
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %43 [
    i32 129, label %31
    i32 130, label %35
    i32 128, label %39
  ]

31:                                               ; preds = %24
  %32 = load i64, i64* @IEEE80211_STA_DISABLE_HT, align 8
  %33 = load i64, i64* %13, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %13, align 8
  br label %35

35:                                               ; preds = %24, %31
  %36 = load i64, i64* @IEEE80211_STA_DISABLE_40MHZ, align 8
  %37 = load i64, i64* %13, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %13, align 8
  br label %39

39:                                               ; preds = %24, %35
  %40 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  %41 = load i64, i64* %13, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %13, align 8
  br label %44

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43, %39
  %45 = call i32 @memset(%struct.cfg80211_csa_settings* %8, i32 0, i32 40)
  %46 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %47 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %6, align 8
  %48 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %49 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %13, align 8
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ieee80211_parse_ch_switch_ie(%struct.ieee80211_sub_if_data* %46, %struct.ieee802_11_elems* %47, i32 %50, i64 %51, i32 %55, %struct.ieee80211_csa_ie* %9)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %237

60:                                               ; preds = %44
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %237

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %9, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @WLAN_REASON_MESH_CHAN_REGULATORY, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %71 = call i32 @ieee80211_mesh_csa_mark_radar(%struct.ieee80211_sub_if_data* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %8, i32 0, i32 2
  %74 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %9, i32 0, i32 5
  %75 = bitcast %struct.TYPE_21__* %73 to i8*
  %76 = bitcast %struct.TYPE_21__* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 24, i1 false)
  %77 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %9, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %8, i32 0, i32 3
  store i32 %78, i32* %79, align 8
  %80 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %80, i32 0, i32 1
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %8, i32 0, i32 2
  %87 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %88 = call i32 @cfg80211_chandef_usable(i32 %85, %struct.TYPE_21__* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %72
  %91 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %91, i32 0, i32 1
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %8, i32 0, i32 2
  %98 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %99 = call i32 @cfg80211_reg_can_beacon(i32 %96, %struct.TYPE_21__* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %122, label %101

101:                                              ; preds = %90, %72
  %102 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %103 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %104 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %8, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %8, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %8, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %8, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %102, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %111, i32 %114, i32 %117, i32 %120)
  store i32 0, i32* %4, align 4
  br label %237

122:                                              ; preds = %90
  %123 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %124 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %123, i32 0, i32 1
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %8, i32 0, i32 2
  %130 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %131 = call i32 @cfg80211_chandef_dfs_required(i32 %128, %struct.TYPE_21__* %129, i32 %130)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %237

135:                                              ; preds = %122
  %136 = load i32, i32* %12, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %164

138:                                              ; preds = %135
  %139 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %10, align 8
  %140 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %164, label %143

143:                                              ; preds = %138
  %144 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %145 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %146 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %8, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %8, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %8, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %8, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %144, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i32 %148, i32 %153, i32 %156, i32 %159, i32 %162)
  store i32 0, i32* %4, align 4
  br label %237

164:                                              ; preds = %138, %135
  %165 = load i32, i32* %12, align 4
  %166 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %8, i32 0, i32 0
  store i32 %165, i32* %166, align 8
  %167 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %8, i32 0, i32 2
  %168 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %169 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = call i64 @cfg80211_chandef_identical(%struct.TYPE_21__* %167, %struct.TYPE_13__* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %164
  %175 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %176 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @mcsa_dbg(%struct.ieee80211_sub_if_data* %175, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %237

177:                                              ; preds = %164
  %178 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %179 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %8, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @mcsa_dbg(%struct.ieee80211_sub_if_data* %178, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %183)
  %185 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %9, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @WLAN_EID_CHAN_SWITCH_PARAM_TX_RESTRICT, align 4
  %188 = and i32 %186, %187
  %189 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %8, i32 0, i32 1
  store i32 %188, i32* %189, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %210

192:                                              ; preds = %177
  %193 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %9, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = sub nsw i64 %194, 1
  %196 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %10, align 8
  %197 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %196, i32 0, i32 0
  store i64 %195, i64* %197, align 8
  %198 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %10, align 8
  %199 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %9, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = icmp sge i64 %200, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %192
  store i32 0, i32* %4, align 4
  br label %237

205:                                              ; preds = %192
  %206 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %9, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %10, align 8
  %209 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %208, i32 0, i32 1
  store i64 %207, i64* %209, align 8
  br label %210

210:                                              ; preds = %205, %177
  %211 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %10, align 8
  %212 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %10, align 8
  %215 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp sge i64 %213, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %210
  store i32 0, i32* %4, align 4
  br label %237

220:                                              ; preds = %210
  %221 = load i32, i32* @IEEE80211_MESH_CSA_ROLE_REPEATER, align 4
  %222 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %10, align 8
  %223 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 8
  %224 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %225 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %224, i32 0, i32 1
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %231 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i64 @ieee80211_channel_switch(i32 %229, i32 %232, %struct.cfg80211_csa_settings* %8)
  %234 = icmp slt i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %220
  store i32 0, i32* %4, align 4
  br label %237

236:                                              ; preds = %220
  store i32 1, i32* %4, align 4
  br label %237

237:                                              ; preds = %236, %235, %219, %204, %174, %143, %134, %101, %63, %59, %23
  %238 = load i32, i32* %4, align 4
  ret i32 %238
}

declare dso_local i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @memset(%struct.cfg80211_csa_settings*, i32, i32) #1

declare dso_local i32 @ieee80211_parse_ch_switch_ie(%struct.ieee80211_sub_if_data*, %struct.ieee802_11_elems*, i32, i64, i32, %struct.ieee80211_csa_ie*) #1

declare dso_local i32 @ieee80211_mesh_csa_mark_radar(%struct.ieee80211_sub_if_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cfg80211_chandef_usable(i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @cfg80211_reg_can_beacon(i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cfg80211_chandef_dfs_required(i32, %struct.TYPE_21__*, i32) #1

declare dso_local i64 @cfg80211_chandef_identical(%struct.TYPE_21__*, %struct.TYPE_13__*) #1

declare dso_local i32 @mcsa_dbg(%struct.ieee80211_sub_if_data*, i8*, ...) #1

declare dso_local i64 @ieee80211_channel_switch(i32, i32, %struct.cfg80211_csa_settings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
