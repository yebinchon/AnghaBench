; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_determine_chantype.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_determine_chantype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.cfg80211_chan_def }
%struct.cfg80211_chan_def = type { i64, i64, %struct.ieee80211_channel* }
%struct.TYPE_7__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i64 }
%struct.ieee80211_supported_band = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_channel = type { i64, i32 }
%struct.ieee80211_ht_operation = type { i32 }
%struct.ieee80211_vht_operation = type { i32, i32, i32 }
%struct.ieee80211_he_operation = type { i32*, i32 }
%struct.ieee80211_sta_ht_cap = type { i32, i32, i32 }

@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@IEEE80211_STA_DISABLE_HT = common dso_local global i64 0, align 8
@IEEE80211_STA_DISABLE_VHT = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_20 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [98 x i8] c"Wrong control channel: center-freq: %d ht-cfreq: %d ht->primary_chan: %d band: %d - Disabling HT\0A\00", align 1
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_40MHZ = common dso_local global i64 0, align 8
@IEEE80211_STA_DISABLE_HE = common dso_local global i64 0, align 8
@IEEE80211_HE_OPERATION_VHT_OPER_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"HE AP VHT information is invalid, disable HE\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"AP VHT information is invalid, disable VHT\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"AP VHT information doesn't match HT, disable VHT\0A\00", align 1
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [77 x i8] c"capabilities/regulatory prevented using AP HT/VHT configuration, downgraded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, %struct.ieee80211_channel*, %struct.ieee80211_ht_operation*, %struct.ieee80211_vht_operation*, %struct.ieee80211_he_operation*, %struct.cfg80211_chan_def*, i32)* @ieee80211_determine_chantype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee80211_determine_chantype(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_channel* %2, %struct.ieee80211_ht_operation* %3, %struct.ieee80211_vht_operation* %4, %struct.ieee80211_he_operation* %5, %struct.cfg80211_chan_def* %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.ieee80211_sub_if_data*, align 8
  %11 = alloca %struct.ieee80211_supported_band*, align 8
  %12 = alloca %struct.ieee80211_channel*, align 8
  %13 = alloca %struct.ieee80211_ht_operation*, align 8
  %14 = alloca %struct.ieee80211_vht_operation*, align 8
  %15 = alloca %struct.ieee80211_he_operation*, align 8
  %16 = alloca %struct.cfg80211_chan_def*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ieee80211_if_managed*, align 8
  %19 = alloca %struct.cfg80211_chan_def, align 8
  %20 = alloca %struct.ieee80211_sta_ht_cap, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.ieee80211_vht_operation, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %10, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %11, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %12, align 8
  store %struct.ieee80211_ht_operation* %3, %struct.ieee80211_ht_operation** %13, align 8
  store %struct.ieee80211_vht_operation* %4, %struct.ieee80211_vht_operation** %14, align 8
  store %struct.ieee80211_he_operation* %5, %struct.ieee80211_he_operation** %15, align 8
  store %struct.cfg80211_chan_def* %6, %struct.cfg80211_chan_def** %16, align 8
  store i32 %7, i32* %17, align 4
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store %struct.ieee80211_if_managed* %26, %struct.ieee80211_if_managed** %18, align 8
  %27 = bitcast %struct.ieee80211_sta_ht_cap* %20 to %struct.ieee80211_vht_operation*
  %28 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %29 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %28, i32 0, i32 1
  %30 = call i32 @memcpy(%struct.ieee80211_vht_operation* %27, i32* %29, i32 12)
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %32 = bitcast %struct.ieee80211_sta_ht_cap* %20 to %struct.ieee80211_vht_operation*
  %33 = call i32 @ieee80211_apply_htcap_overrides(%struct.ieee80211_sub_if_data* %31, %struct.ieee80211_vht_operation* %32)
  %34 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %35 = call i32 @memset(%struct.cfg80211_chan_def* %34, i32 0, i32 24)
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %37 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %38 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %37, i32 0, i32 2
  store %struct.ieee80211_channel* %36, %struct.ieee80211_channel** %38, align 8
  %39 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %40 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %41 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %43 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %46 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %13, align 8
  %48 = icmp ne %struct.ieee80211_ht_operation* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %8
  %50 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %20, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49, %8
  %54 = load i64, i64* @IEEE80211_STA_DISABLE_HT, align 8
  %55 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  %56 = or i64 %54, %55
  store i64 %56, i64* %22, align 8
  br label %228

57:                                               ; preds = %49
  %58 = load i64, i64* @NL80211_CHAN_WIDTH_20, align 8
  %59 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %60 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %13, align 8
  %62 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %65 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @ieee80211_channel_to_frequency(i32 %63, i32 %66)
  store i64 %67, i64* %21, align 8
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %92, label %70

70:                                               ; preds = %57
  %71 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %72 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %21, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %70
  %77 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %78 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %79 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %21, align 8
  %82 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %13, align 8
  %83 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %86 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %77, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i64 %80, i64 %81, i32 %84, i32 %87)
  %89 = load i64, i64* @IEEE80211_STA_DISABLE_HT, align 8
  %90 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  %91 = or i64 %89, %90
  store i64 %91, i64* %22, align 8
  br label %228

92:                                               ; preds = %70, %57
  %93 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %20, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %13, align 8
  %100 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %101 = call i32 @ieee80211_chandef_ht_oper(%struct.ieee80211_ht_operation* %99, %struct.cfg80211_chan_def* %100)
  br label %107

102:                                              ; preds = %92
  %103 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  store i64 %103, i64* %22, align 8
  %104 = load i64, i64* @IEEE80211_STA_DISABLE_40MHZ, align 8
  %105 = load i64, i64* %22, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %22, align 8
  br label %228

107:                                              ; preds = %98
  %108 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %14, align 8
  %109 = icmp ne %struct.ieee80211_vht_operation* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %112 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %110, %107
  %117 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  store i64 %117, i64* %22, align 8
  br label %228

118:                                              ; preds = %110
  %119 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %120 = bitcast %struct.cfg80211_chan_def* %19 to i8*
  %121 = bitcast %struct.cfg80211_chan_def* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 24, i1 false)
  %122 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %18, align 8
  %123 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @IEEE80211_STA_DISABLE_HE, align 8
  %126 = and i64 %124, %125
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %166, label %128

128:                                              ; preds = %118
  %129 = load %struct.ieee80211_he_operation*, %struct.ieee80211_he_operation** %15, align 8
  %130 = icmp ne %struct.ieee80211_he_operation* %129, null
  br i1 %130, label %131, label %166

131:                                              ; preds = %128
  %132 = load %struct.ieee80211_he_operation*, %struct.ieee80211_he_operation** %15, align 8
  %133 = getelementptr inbounds %struct.ieee80211_he_operation, %struct.ieee80211_he_operation* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @le32_to_cpu(i32 %134)
  %136 = load i32, i32* @IEEE80211_HE_OPERATION_VHT_OPER_INFO, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %166

139:                                              ; preds = %131
  %140 = load %struct.ieee80211_he_operation*, %struct.ieee80211_he_operation** %15, align 8
  %141 = getelementptr inbounds %struct.ieee80211_he_operation, %struct.ieee80211_he_operation* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @memcpy(%struct.ieee80211_vht_operation* %23, i32* %142, i32 3)
  %144 = call i32 @cpu_to_le16(i32 0)
  %145 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %23, i32 0, i32 1
  store i32 %144, i32* %145, align 4
  %146 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %147 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %146, i32 0, i32 0
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %13, align 8
  %151 = call i32 @ieee80211_chandef_vht_oper(%struct.TYPE_12__* %149, %struct.ieee80211_vht_operation* %23, %struct.ieee80211_ht_operation* %150, %struct.cfg80211_chan_def* %19)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %165, label %153

153:                                              ; preds = %139
  %154 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %18, align 8
  %155 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @IEEE80211_STA_DISABLE_HE, align 8
  %158 = and i64 %156, %157
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %153
  %161 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %162 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %161, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %153
  %164 = load i64, i64* @IEEE80211_STA_DISABLE_HE, align 8
  store i64 %164, i64* %22, align 8
  br label %228

165:                                              ; preds = %139
  br label %188

166:                                              ; preds = %131, %128, %118
  %167 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %168 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %167, i32 0, i32 0
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %14, align 8
  %172 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %13, align 8
  %173 = call i32 @ieee80211_chandef_vht_oper(%struct.TYPE_12__* %170, %struct.ieee80211_vht_operation* %171, %struct.ieee80211_ht_operation* %172, %struct.cfg80211_chan_def* %19)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %187, label %175

175:                                              ; preds = %166
  %176 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %18, align 8
  %177 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  %180 = and i64 %178, %179
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %175
  %183 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %184 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %183, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %175
  %186 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  store i64 %186, i64* %22, align 8
  br label %228

187:                                              ; preds = %166
  br label %188

188:                                              ; preds = %187, %165
  %189 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %19)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %203, label %191

191:                                              ; preds = %188
  %192 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %18, align 8
  %193 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  %196 = and i64 %194, %195
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %191
  %199 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %200 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %199, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %201

201:                                              ; preds = %198, %191
  %202 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  store i64 %202, i64* %22, align 8
  br label %228

203:                                              ; preds = %188
  %204 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %205 = call i64 @cfg80211_chandef_identical(%struct.cfg80211_chan_def* %204, %struct.cfg80211_chan_def* %19)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  store i64 0, i64* %22, align 8
  br label %228

208:                                              ; preds = %203
  %209 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %210 = call i32 @cfg80211_chandef_compatible(%struct.cfg80211_chan_def* %209, %struct.cfg80211_chan_def* %19)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %224, label %212

212:                                              ; preds = %208
  %213 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %18, align 8
  %214 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  %217 = and i64 %215, %216
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %212
  %220 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %221 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %220, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %222

222:                                              ; preds = %219, %212
  %223 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  store i64 %223, i64* %22, align 8
  br label %228

224:                                              ; preds = %208
  %225 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %226 = bitcast %struct.cfg80211_chan_def* %225 to i8*
  %227 = bitcast %struct.cfg80211_chan_def* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %226, i8* align 8 %227, i64 24, i1 false)
  store i64 0, i64* %22, align 8
  br label %228

228:                                              ; preds = %224, %222, %207, %201, %185, %163, %116, %102, %76, %53
  %229 = load i32, i32* %17, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %228
  %232 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %233 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %234 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = call i64 @cfg80211_chandef_identical(%struct.cfg80211_chan_def* %232, %struct.cfg80211_chan_def* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %231
  %240 = load i64, i64* %22, align 8
  store i64 %240, i64* %9, align 8
  br label %308

241:                                              ; preds = %231, %228
  %242 = load i64, i64* %22, align 8
  %243 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  %244 = and i64 %242, %243
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %248 = bitcast %struct.cfg80211_chan_def* %19 to i8*
  %249 = bitcast %struct.cfg80211_chan_def* %247 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %248, i8* align 8 %249, i64 24, i1 false)
  br label %250

250:                                              ; preds = %246, %241
  br label %251

251:                                              ; preds = %282, %250
  %252 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %253 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %252, i32 0, i32 0
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %259 = load i32, i32* %17, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %251
  br label %264

262:                                              ; preds = %251
  %263 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  br label %264

264:                                              ; preds = %262, %261
  %265 = phi i32 [ 0, %261 ], [ %263, %262 ]
  %266 = call i32 @cfg80211_chandef_usable(i32 %257, %struct.cfg80211_chan_def* %258, i32 %265)
  %267 = icmp ne i32 %266, 0
  %268 = xor i1 %267, true
  br i1 %268, label %269, label %287

269:                                              ; preds = %264
  %270 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %271 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %274 = icmp eq i64 %272, %273
  %275 = zext i1 %274 to i32
  %276 = call i64 @WARN_ON(i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %269
  %279 = load i64, i64* @IEEE80211_STA_DISABLE_HT, align 8
  %280 = load i64, i64* @IEEE80211_STA_DISABLE_VHT, align 8
  %281 = or i64 %279, %280
  store i64 %281, i64* %22, align 8
  br label %287

282:                                              ; preds = %269
  %283 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %284 = call i64 @ieee80211_chandef_downgrade(%struct.cfg80211_chan_def* %283)
  %285 = load i64, i64* %22, align 8
  %286 = or i64 %285, %284
  store i64 %286, i64* %22, align 8
  br label %251

287:                                              ; preds = %278, %264
  %288 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %289 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %19, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %290, %292
  br i1 %293, label %294, label %300

294:                                              ; preds = %287
  %295 = load i32, i32* %17, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %294
  %298 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %299 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %298, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0))
  br label %300

300:                                              ; preds = %297, %294, %287
  %301 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %16, align 8
  %302 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %301)
  %303 = icmp ne i32 %302, 0
  %304 = xor i1 %303, true
  %305 = zext i1 %304 to i32
  %306 = call i32 @WARN_ON_ONCE(i32 %305)
  %307 = load i64, i64* %22, align 8
  store i64 %307, i64* %9, align 8
  br label %308

308:                                              ; preds = %300, %239
  %309 = load i64, i64* %9, align 8
  ret i64 %309
}

declare dso_local i32 @memcpy(%struct.ieee80211_vht_operation*, i32*, i32) #1

declare dso_local i32 @ieee80211_apply_htcap_overrides(%struct.ieee80211_sub_if_data*, %struct.ieee80211_vht_operation*) #1

declare dso_local i32 @memset(%struct.cfg80211_chan_def*, i32, i32) #1

declare dso_local i64 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, ...) #1

declare dso_local i32 @ieee80211_chandef_ht_oper(%struct.ieee80211_ht_operation*, %struct.cfg80211_chan_def*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ieee80211_chandef_vht_oper(%struct.TYPE_12__*, %struct.ieee80211_vht_operation*, %struct.ieee80211_ht_operation*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def*) #1

declare dso_local i64 @cfg80211_chandef_identical(%struct.cfg80211_chan_def*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_chandef_compatible(%struct.cfg80211_chan_def*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_chandef_usable(i32, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ieee80211_chandef_downgrade(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
