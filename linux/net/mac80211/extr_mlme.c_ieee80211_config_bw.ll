; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_config_bw.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_config_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_13__, %struct.TYPE_9__, %struct.ieee80211_local* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }
%struct.TYPE_9__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32 }
%struct.ieee80211_local = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.sta_info = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.ieee80211_ht_cap = type { i32 }
%struct.ieee80211_ht_operation = type { i32 }
%struct.ieee80211_vht_operation = type { i32 }
%struct.ieee80211_he_operation = type { i32 }
%struct.cfg80211_chan_def = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@IEEE80211_STA_DISABLE_HT = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_VHT = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_HE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_80P80MHZ = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_40MHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"AP %pM changed bandwidth, new config is %d MHz, width %d (%d/%d MHz)\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"AP %pM changed bandwidth in a way we can't support - disconnect\0A\00", align 1
@IEEE80211_STA_RX_BW_20 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_40 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_80 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_160 = common dso_local global i32 0, align 4
@IEEE80211_RC_BW_CHANGED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"AP %pM changed bandwidth to incompatible one - disconnect\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.sta_info*, %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_operation*, %struct.ieee80211_vht_operation*, %struct.ieee80211_he_operation*, i32*, i32*)* @ieee80211_config_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_config_bw(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, %struct.ieee80211_ht_cap* %2, %struct.ieee80211_ht_operation* %3, %struct.ieee80211_vht_operation* %4, %struct.ieee80211_he_operation* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_sub_if_data*, align 8
  %11 = alloca %struct.sta_info*, align 8
  %12 = alloca %struct.ieee80211_ht_cap*, align 8
  %13 = alloca %struct.ieee80211_ht_operation*, align 8
  %14 = alloca %struct.ieee80211_vht_operation*, align 8
  %15 = alloca %struct.ieee80211_he_operation*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.ieee80211_local*, align 8
  %19 = alloca %struct.ieee80211_if_managed*, align 8
  %20 = alloca %struct.ieee80211_channel*, align 8
  %21 = alloca %struct.ieee80211_supported_band*, align 8
  %22 = alloca %struct.cfg80211_chan_def, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %10, align 8
  store %struct.sta_info* %1, %struct.sta_info** %11, align 8
  store %struct.ieee80211_ht_cap* %2, %struct.ieee80211_ht_cap** %12, align 8
  store %struct.ieee80211_ht_operation* %3, %struct.ieee80211_ht_operation** %13, align 8
  store %struct.ieee80211_vht_operation* %4, %struct.ieee80211_vht_operation** %14, align 8
  store %struct.ieee80211_he_operation* %5, %struct.ieee80211_he_operation** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 2
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %28, align 8
  store %struct.ieee80211_local* %29, %struct.ieee80211_local** %18, align 8
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store %struct.ieee80211_if_managed* %32, %struct.ieee80211_if_managed** %19, align 8
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %37, align 8
  store %struct.ieee80211_channel* %38, %struct.ieee80211_channel** %20, align 8
  %39 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  %40 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %43, align 8
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %20, align 8
  %46 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %44, i64 %47
  %49 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %48, align 8
  store %struct.ieee80211_supported_band* %49, %struct.ieee80211_supported_band** %21, align 8
  %50 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %19, align 8
  %51 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %8
  %57 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %13, align 8
  %58 = icmp ne %struct.ieee80211_ht_operation* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %56, %8
  store i32 0, i32* %9, align 4
  br label %286

60:                                               ; preds = %56
  %61 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %19, align 8
  %62 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store %struct.ieee80211_vht_operation* null, %struct.ieee80211_vht_operation** %14, align 8
  br label %68

68:                                               ; preds = %67, %60
  %69 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %19, align 8
  %70 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IEEE80211_STA_DISABLE_HE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %68
  %76 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %21, align 8
  %77 = call i32 @ieee80211_get_he_sta_cap(%struct.ieee80211_supported_band* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75, %68
  store %struct.ieee80211_he_operation* null, %struct.ieee80211_he_operation** %15, align 8
  br label %80

80:                                               ; preds = %79, %75
  %81 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %82 = icmp ne %struct.sta_info* %81, null
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i64 @WARN_ON_ONCE(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %286

90:                                               ; preds = %80
  %91 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %13, align 8
  %92 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @le16_to_cpu(i32 %93)
  store i64 %94, i64* %23, align 8
  %95 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %96 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %23, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %90
  %103 = load i32, i32* @BSS_CHANGED_HT, align 4
  %104 = load i32*, i32** %17, align 8
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %103
  store i32 %106, i32* %104, align 4
  %107 = load i64, i64* %23, align 8
  %108 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %109 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  store i64 %107, i64* %111, align 8
  br label %112

112:                                              ; preds = %102, %90
  %113 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %114 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %21, align 8
  %115 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %20, align 8
  %116 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %13, align 8
  %117 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %14, align 8
  %118 = load %struct.ieee80211_he_operation*, %struct.ieee80211_he_operation** %15, align 8
  %119 = call i32 @ieee80211_determine_chantype(%struct.ieee80211_sub_if_data* %113, %struct.ieee80211_supported_band* %114, %struct.ieee80211_channel* %115, %struct.ieee80211_ht_operation* %116, %struct.ieee80211_vht_operation* %117, %struct.ieee80211_he_operation* %118, %struct.cfg80211_chan_def* %22, i32 1)
  store i32 %119, i32* %24, align 4
  %120 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %19, align 8
  %121 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IEEE80211_STA_DISABLE_80P80MHZ, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %112
  %127 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = call i32 @ieee80211_chandef_downgrade(%struct.cfg80211_chan_def* %22)
  %132 = load i32, i32* %24, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %24, align 4
  br label %134

134:                                              ; preds = %130, %126, %112
  %135 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %19, align 8
  %136 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @IEEE80211_STA_DISABLE_160MHZ, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 133
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = call i32 @ieee80211_chandef_downgrade(%struct.cfg80211_chan_def* %22)
  %147 = load i32, i32* %24, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %24, align 4
  br label %149

149:                                              ; preds = %145, %141, %134
  %150 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %19, align 8
  %151 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @IEEE80211_STA_DISABLE_40MHZ, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp sgt i32 %158, 132
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = call i32 @ieee80211_chandef_downgrade(%struct.cfg80211_chan_def* %22)
  %162 = load i32, i32* %24, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %24, align 4
  br label %164

164:                                              ; preds = %160, %156, %149
  %165 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %166 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = call i64 @cfg80211_chandef_identical(%struct.cfg80211_chan_def* %22, %struct.TYPE_16__* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  store i32 0, i32* %9, align 4
  br label %286

172:                                              ; preds = %164
  %173 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %174 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %19, align 8
  %175 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 3
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %173, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %176, i32 %180, i32 %182, i32 %184, i32 %186)
  %188 = load i32, i32* %24, align 4
  %189 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %19, align 8
  %190 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %193 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @IEEE80211_STA_DISABLE_40MHZ, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @IEEE80211_STA_DISABLE_80P80MHZ, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @IEEE80211_STA_DISABLE_160MHZ, align 4
  %200 = or i32 %198, %199
  %201 = and i32 %191, %200
  %202 = icmp ne i32 %188, %201
  br i1 %202, label %206, label %203

203:                                              ; preds = %172
  %204 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %22)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %214, label %206

206:                                              ; preds = %203, %172
  %207 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %208 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %19, align 8
  %209 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %207, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %9, align 4
  br label %286

214:                                              ; preds = %203
  %215 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  switch i32 %216, label %225 [
    i32 131, label %217
    i32 132, label %217
    i32 130, label %219
    i32 129, label %221
    i32 128, label %223
    i32 133, label %223
  ]

217:                                              ; preds = %214, %214
  %218 = load i32, i32* @IEEE80211_STA_RX_BW_20, align 4
  store i32 %218, i32* %25, align 4
  br label %228

219:                                              ; preds = %214
  %220 = load i32, i32* @IEEE80211_STA_RX_BW_40, align 4
  store i32 %220, i32* %25, align 4
  br label %228

221:                                              ; preds = %214
  %222 = load i32, i32* @IEEE80211_STA_RX_BW_80, align 4
  store i32 %222, i32* %25, align 4
  br label %228

223:                                              ; preds = %214, %214
  %224 = load i32, i32* @IEEE80211_STA_RX_BW_160, align 4
  store i32 %224, i32* %25, align 4
  br label %228

225:                                              ; preds = %214
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %9, align 4
  br label %286

228:                                              ; preds = %223, %221, %219, %217
  %229 = load i32, i32* %25, align 4
  %230 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %231 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp ugt i32 %229, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %228
  %235 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %236 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %25, align 4
  br label %238

238:                                              ; preds = %234, %228
  %239 = load i32, i32* %25, align 4
  %240 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %241 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = icmp ult i32 %239, %243
  br i1 %244, label %245, label %255

245:                                              ; preds = %238
  %246 = load i32, i32* %25, align 4
  %247 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %248 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 0
  store i32 %246, i32* %249, align 4
  %250 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  %251 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %21, align 8
  %252 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %253 = load i32, i32* @IEEE80211_RC_BW_CHANGED, align 4
  %254 = call i32 @rate_control_rate_update(%struct.ieee80211_local* %250, %struct.ieee80211_supported_band* %251, %struct.sta_info* %252, i32 %253)
  br label %255

255:                                              ; preds = %245, %238
  %256 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %257 = load i32*, i32** %17, align 8
  %258 = call i32 @ieee80211_vif_change_bandwidth(%struct.ieee80211_sub_if_data* %256, %struct.cfg80211_chan_def* %22, i32* %257)
  store i32 %258, i32* %26, align 4
  %259 = load i32, i32* %26, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %255
  %262 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %263 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %19, align 8
  %264 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %262, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %265)
  %267 = load i32, i32* %26, align 4
  store i32 %267, i32* %9, align 4
  br label %286

268:                                              ; preds = %255
  %269 = load i32, i32* %25, align 4
  %270 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %271 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = icmp ugt i32 %269, %273
  br i1 %274, label %275, label %285

275:                                              ; preds = %268
  %276 = load i32, i32* %25, align 4
  %277 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %278 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 0
  store i32 %276, i32* %279, align 4
  %280 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  %281 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %21, align 8
  %282 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %283 = load i32, i32* @IEEE80211_RC_BW_CHANGED, align 4
  %284 = call i32 @rate_control_rate_update(%struct.ieee80211_local* %280, %struct.ieee80211_supported_band* %281, %struct.sta_info* %282, i32 %283)
  br label %285

285:                                              ; preds = %275, %268
  store i32 0, i32* %9, align 4
  br label %286

286:                                              ; preds = %285, %261, %225, %206, %171, %87, %59
  %287 = load i32, i32* %9, align 4
  ret i32 %287
}

declare dso_local i32 @ieee80211_get_he_sta_cap(%struct.ieee80211_supported_band*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ieee80211_determine_chantype(%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, %struct.ieee80211_channel*, %struct.ieee80211_ht_operation*, %struct.ieee80211_vht_operation*, %struct.ieee80211_he_operation*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @ieee80211_chandef_downgrade(%struct.cfg80211_chan_def*) #1

declare dso_local i64 @cfg80211_chandef_identical(%struct.cfg80211_chan_def*, %struct.TYPE_16__*) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32, ...) #1

declare dso_local i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @rate_control_rate_update(%struct.ieee80211_local*, %struct.ieee80211_supported_band*, %struct.sta_info*, i32) #1

declare dso_local i32 @ieee80211_vif_change_bandwidth(%struct.ieee80211_sub_if_data*, %struct.cfg80211_chan_def*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
