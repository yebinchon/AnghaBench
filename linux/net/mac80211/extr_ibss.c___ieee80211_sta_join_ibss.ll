; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_ibss.c___ieee80211_sta_join_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_ibss.c___ieee80211_sta_join_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, i32, %struct.TYPE_10__, i32, %struct.ieee80211_local*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.ieee80211_local = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ieee80211_if_ibss }
%struct.ieee80211_if_ibss = type { i32, i32, i32, i32, i64, i32*, i64, i32 }
%struct.cfg80211_chan_def = type { i64, i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64, i32 }
%struct.ieee80211_mgmt = type { i32 }
%struct.cfg80211_bss = type { i32 }
%struct.beacon_data = type { i32, i64 }
%struct.cfg80211_inform_bss = type { i32, %struct.ieee80211_channel* }

@BSS_CHANGED_IBSS = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_5 = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_10 = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_20 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed to join IBSS, beacons forbidden\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to join IBSS, invalid chandef\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Failed to join IBSS, DFS channel without control program\0A\00", align 1
@IEEE80211_CHANCTX_SHARED = common dso_local global i32 0, align 4
@IEEE80211_CHANCTX_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to join IBSS, no channel context\0A\00", align 1
@ETH_ALEN = common dso_local global i64 0, align 8
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@BSS_CHANGED_SSID = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_SDATA_OPERATING_GMODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to join IBSS, driver failure: %d\0A\00", align 1
@IEEE80211_IBSS_MLME_JOINED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IEEE80211_IBSS_MERGE_INTERVAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, i32*, i32, %struct.cfg80211_chan_def*, i32, i32, i32, i32)* @__ieee80211_sta_join_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ieee80211_sta_join_ibss(%struct.ieee80211_sub_if_data* %0, i32* %1, i32 %2, %struct.cfg80211_chan_def* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ieee80211_sub_if_data*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cfg80211_chan_def*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_if_ibss*, align 8
  %18 = alloca %struct.ieee80211_local*, align 8
  %19 = alloca %struct.ieee80211_mgmt*, align 8
  %20 = alloca %struct.cfg80211_bss*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.cfg80211_chan_def, align 8
  %23 = alloca %struct.ieee80211_channel*, align 8
  %24 = alloca %struct.beacon_data*, align 8
  %25 = alloca %struct.cfg80211_inform_bss, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.cfg80211_chan_def* %3, %struct.cfg80211_chan_def** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store %struct.ieee80211_if_ibss* %31, %struct.ieee80211_if_ibss** %17, align 8
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %32, i32 0, i32 4
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %33, align 8
  store %struct.ieee80211_local* %34, %struct.ieee80211_local** %18, align 8
  %35 = bitcast %struct.cfg80211_inform_bss* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 16, i1 false)
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %37 = call i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data* %36)
  %38 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %40 = call i32 @drv_reset_tsf(%struct.ieee80211_local* %38, %struct.ieee80211_sub_if_data* %39)
  %41 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %17, align 8
  %42 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @ether_addr_equal(i32 %43, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %8
  %48 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %49 = call i32 @sta_info_flush(%struct.ieee80211_sub_if_data* %48)
  br label %50

50:                                               ; preds = %47, %8
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %50
  %58 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %59 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %67 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  store i32 0, i32* %69, align 8
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %71 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @netif_carrier_off(i32 %72)
  %74 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %75 = load i32, i32* @BSS_CHANGED_IBSS, align 4
  %76 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %74, i32 %77)
  %79 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  %80 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %81 = call i32 @drv_leave_ibss(%struct.ieee80211_local* %79, %struct.ieee80211_sub_if_data* %80)
  br label %82

82:                                               ; preds = %57, %50
  %83 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %17, align 8
  %84 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %87 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = call i32 @lockdep_is_held(i32* %88)
  %90 = call %struct.beacon_data* @rcu_dereference_protected(i32 %85, i32 %89)
  store %struct.beacon_data* %90, %struct.beacon_data** %24, align 8
  %91 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %17, align 8
  %92 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @RCU_INIT_POINTER(i32 %93, i32* null)
  %95 = load %struct.beacon_data*, %struct.beacon_data** %24, align 8
  %96 = icmp ne %struct.beacon_data* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %82
  %98 = load %struct.beacon_data*, %struct.beacon_data** %24, align 8
  %99 = load i32, i32* @rcu_head, align 4
  %100 = call i32 @kfree_rcu(%struct.beacon_data* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %82
  %102 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %12, align 8
  %103 = bitcast %struct.cfg80211_chan_def* %22 to i8*
  %104 = bitcast %struct.cfg80211_chan_def* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 24, i1 false)
  %105 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 2
  %106 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %105, align 8
  store %struct.ieee80211_channel* %106, %struct.ieee80211_channel** %23, align 8
  %107 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  %108 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %112 = call i32 @cfg80211_reg_can_beacon(i32 %110, %struct.cfg80211_chan_def* %22, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %155, label %114

114:                                              ; preds = %101
  %115 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @NL80211_CHAN_WIDTH_5, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %134, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @NL80211_CHAN_WIDTH_10, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %134, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @NL80211_CHAN_WIDTH_20, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %129, %124, %119, %114
  %135 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %136 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %135, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %429

137:                                              ; preds = %129
  %138 = load i64, i64* @NL80211_CHAN_WIDTH_20, align 8
  %139 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 0
  store i64 %138, i64* %139, align 8
  %140 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %23, align 8
  %141 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 1
  store i32 %142, i32* %143, align 8
  %144 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  %145 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %149 = call i32 @cfg80211_reg_can_beacon(i32 %147, %struct.cfg80211_chan_def* %22, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %137
  %152 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %153 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %152, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %429

154:                                              ; preds = %137
  br label %155

155:                                              ; preds = %154, %101
  %156 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %157 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %156, i32 0, i32 4
  %158 = load %struct.ieee80211_local*, %struct.ieee80211_local** %157, align 8
  %159 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %163 = call i32 @cfg80211_chandef_dfs_required(i32 %161, %struct.cfg80211_chan_def* %22, i32 %162)
  store i32 %163, i32* %28, align 4
  %164 = load i32, i32* %28, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %155
  %167 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %168 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %167, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %429

169:                                              ; preds = %155
  %170 = load i32, i32* %28, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %169
  %173 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %17, align 8
  %174 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %172
  %178 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %179 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %178, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %429

180:                                              ; preds = %172, %169
  %181 = load i32, i32* %28, align 4
  store i32 %181, i32* %27, align 4
  %182 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  %183 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %182, i32 0, i32 1
  %184 = call i32 @mutex_lock(i32* %183)
  %185 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %186 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %17, align 8
  %187 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %186, i32 0, i32 6
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %180
  %191 = load i32, i32* @IEEE80211_CHANCTX_SHARED, align 4
  br label %194

192:                                              ; preds = %180
  %193 = load i32, i32* @IEEE80211_CHANCTX_EXCLUSIVE, align 4
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi i32 [ %191, %190 ], [ %193, %192 ]
  %196 = call i64 @ieee80211_vif_use_channel(%struct.ieee80211_sub_if_data* %185, %struct.cfg80211_chan_def* %22, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %200 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %199, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %201 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  %202 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %201, i32 0, i32 1
  %203 = call i32 @mutex_unlock(i32* %202)
  br label %429

204:                                              ; preds = %194
  %205 = load i32, i32* %27, align 4
  %206 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %207 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  %209 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %208, i32 0, i32 1
  %210 = call i32 @mutex_unlock(i32* %209)
  %211 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %17, align 8
  %212 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32*, i32** %10, align 8
  %215 = load i64, i64* @ETH_ALEN, align 8
  %216 = call i32 @memcpy(i32 %213, i32* %214, i64 %215)
  %217 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %14, align 4
  %221 = load i32, i32* %15, align 4
  %222 = call %struct.beacon_data* @ieee80211_ibss_build_presp(%struct.ieee80211_sub_if_data* %217, i32 %218, i32 %219, i32 %220, i32 %221, %struct.cfg80211_chan_def* %22, i32* %26, i32* null)
  store %struct.beacon_data* %222, %struct.beacon_data** %24, align 8
  %223 = load %struct.beacon_data*, %struct.beacon_data** %24, align 8
  %224 = icmp ne %struct.beacon_data* %223, null
  br i1 %224, label %226, label %225

225:                                              ; preds = %204
  br label %429

226:                                              ; preds = %204
  %227 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %17, align 8
  %228 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.beacon_data*, %struct.beacon_data** %24, align 8
  %231 = call i32 @rcu_assign_pointer(i32 %229, %struct.beacon_data* %230)
  %232 = load %struct.beacon_data*, %struct.beacon_data** %24, align 8
  %233 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = inttoptr i64 %234 to i8*
  %236 = bitcast i8* %235 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %236, %struct.ieee80211_mgmt** %19, align 8
  %237 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %238 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 2
  store i32 1, i32* %240, align 8
  %241 = load i32, i32* %11, align 4
  %242 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %243 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 3
  store i32 %241, i32* %245, align 4
  %246 = load i32, i32* %13, align 4
  %247 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %248 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 4
  store i32 %246, i32* %250, align 8
  %251 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %17, align 8
  %252 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %251, i32 0, i32 4
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %255 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 6
  store i64 %253, i64* %257, align 8
  %258 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %259 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 7
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %17, align 8
  %264 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %263, i32 0, i32 5
  %265 = load i32*, i32** %264, align 8
  %266 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %17, align 8
  %267 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %266, i32 0, i32 4
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @memcpy(i32 %262, i32* %265, i64 %268)
  %270 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  store i32 %270, i32* %21, align 4
  %271 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %272 = call i32 @ieee80211_reset_erp_info(%struct.ieee80211_sub_if_data* %271)
  %273 = load i32, i32* %21, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %21, align 4
  %275 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %276 = load i32, i32* %21, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %21, align 4
  %278 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %279 = load i32, i32* %21, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %21, align 4
  %281 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %282 = load i32, i32* %21, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %21, align 4
  %284 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %285 = load i32, i32* %21, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %21, align 4
  %287 = load i32, i32* @BSS_CHANGED_HT, align 4
  %288 = load i32, i32* %21, align 4
  %289 = or i32 %288, %287
  store i32 %289, i32* %21, align 4
  %290 = load i32, i32* @BSS_CHANGED_IBSS, align 4
  %291 = load i32, i32* %21, align 4
  %292 = or i32 %291, %290
  store i32 %292, i32* %21, align 4
  %293 = load i32, i32* @BSS_CHANGED_SSID, align 4
  %294 = load i32, i32* %21, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %21, align 4
  %296 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %23, align 8
  %297 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %300 = icmp eq i64 %298, %299
  %301 = zext i1 %300 to i32
  %302 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %303 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 5
  store i32 %301, i32* %305, align 4
  %306 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %307 = load i32, i32* %21, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %21, align 4
  %309 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %23, align 8
  %310 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %323

314:                                              ; preds = %226
  %315 = load i32, i32* %26, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %314
  %318 = load i32, i32* @IEEE80211_SDATA_OPERATING_GMODE, align 4
  %319 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %320 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 8
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 8
  br label %330

323:                                              ; preds = %314, %226
  %324 = load i32, i32* @IEEE80211_SDATA_OPERATING_GMODE, align 4
  %325 = xor i32 %324, -1
  %326 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %327 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 8
  %329 = and i32 %328, %325
  store i32 %329, i32* %327, align 8
  br label %330

330:                                              ; preds = %323, %317
  %331 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %332 = call i32 @ieee80211_set_wmm_default(%struct.ieee80211_sub_if_data* %331, i32 1, i32 0)
  %333 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %334 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 0
  store i32 1, i32* %336, align 8
  %337 = load i32, i32* %16, align 4
  %338 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %339 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %338, i32 0, i32 2
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 1
  store i32 %337, i32* %341, align 4
  %342 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  %343 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %344 = call i32 @drv_join_ibss(%struct.ieee80211_local* %342, %struct.ieee80211_sub_if_data* %343)
  store i32 %344, i32* %28, align 4
  %345 = load i32, i32* %28, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %382

347:                                              ; preds = %330
  %348 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %349 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %348, i32 0, i32 2
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 0
  store i32 0, i32* %351, align 8
  %352 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %353 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %352, i32 0, i32 2
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 1
  store i32 0, i32* %355, align 4
  %356 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %357 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 2
  store i32 0, i32* %359, align 8
  %360 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %361 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 6
  store i64 0, i64* %363, align 8
  %364 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %17, align 8
  %365 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @RCU_INIT_POINTER(i32 %366, i32* null)
  %368 = load %struct.beacon_data*, %struct.beacon_data** %24, align 8
  %369 = load i32, i32* @rcu_head, align 4
  %370 = call i32 @kfree_rcu(%struct.beacon_data* %368, i32 %369)
  %371 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  %372 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %371, i32 0, i32 1
  %373 = call i32 @mutex_lock(i32* %372)
  %374 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %375 = call i32 @ieee80211_vif_release_channel(%struct.ieee80211_sub_if_data* %374)
  %376 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  %377 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %376, i32 0, i32 1
  %378 = call i32 @mutex_unlock(i32* %377)
  %379 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %380 = load i32, i32* %28, align 4
  %381 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %379, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %380)
  br label %429

382:                                              ; preds = %330
  %383 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %384 = load i32, i32* %21, align 4
  %385 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %383, i32 %384)
  %386 = load i32, i32* @IEEE80211_IBSS_MLME_JOINED, align 4
  %387 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %17, align 8
  %388 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %387, i32 0, i32 2
  store i32 %386, i32* %388, align 8
  %389 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %17, align 8
  %390 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %389, i32 0, i32 1
  %391 = load i64, i64* @jiffies, align 8
  %392 = load i64, i64* @IEEE80211_IBSS_MERGE_INTERVAL, align 8
  %393 = add nsw i64 %391, %392
  %394 = call i32 @round_jiffies(i64 %393)
  %395 = call i32 @mod_timer(i32* %390, i32 %394)
  %396 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %23, align 8
  %397 = getelementptr inbounds %struct.cfg80211_inform_bss, %struct.cfg80211_inform_bss* %25, i32 0, i32 1
  store %struct.ieee80211_channel* %396, %struct.ieee80211_channel** %397, align 8
  %398 = call i32 @cfg80211_chandef_to_scan_width(%struct.cfg80211_chan_def* %22)
  %399 = getelementptr inbounds %struct.cfg80211_inform_bss, %struct.cfg80211_inform_bss* %25, i32 0, i32 0
  store i32 %398, i32* %399, align 8
  %400 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  %401 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %19, align 8
  %405 = load %struct.beacon_data*, %struct.beacon_data** %24, align 8
  %406 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* @GFP_KERNEL, align 4
  %409 = call %struct.cfg80211_bss* @cfg80211_inform_bss_frame_data(i32 %403, %struct.cfg80211_inform_bss* %25, %struct.ieee80211_mgmt* %404, i32 %407, i32 %408)
  store %struct.cfg80211_bss* %409, %struct.cfg80211_bss** %20, align 8
  %410 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  %411 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %20, align 8
  %415 = call i32 @cfg80211_put_bss(i32 %413, %struct.cfg80211_bss* %414)
  %416 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %417 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @netif_carrier_on(i32 %418)
  %420 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %421 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %17, align 8
  %424 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %23, align 8
  %427 = load i32, i32* @GFP_KERNEL, align 4
  %428 = call i32 @cfg80211_ibss_joined(i32 %422, i32 %425, %struct.ieee80211_channel* %426, i32 %427)
  br label %429

429:                                              ; preds = %382, %347, %225, %198, %177, %166, %151, %134
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @drv_reset_tsf(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @ether_addr_equal(i32, i32*) #2

declare dso_local i32 @sta_info_flush(%struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @netif_carrier_off(i32) #2

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #2

declare dso_local i32 @drv_leave_ibss(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #2

declare dso_local %struct.beacon_data* @rcu_dereference_protected(i32, i32) #2

declare dso_local i32 @lockdep_is_held(i32*) #2

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #2

declare dso_local i32 @kfree_rcu(%struct.beacon_data*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cfg80211_reg_can_beacon(i32, %struct.cfg80211_chan_def*, i32) #2

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, ...) #2

declare dso_local i32 @cfg80211_chandef_dfs_required(i32, %struct.cfg80211_chan_def*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i64 @ieee80211_vif_use_channel(%struct.ieee80211_sub_if_data*, %struct.cfg80211_chan_def*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @memcpy(i32, i32*, i64) #2

declare dso_local %struct.beacon_data* @ieee80211_ibss_build_presp(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32, %struct.cfg80211_chan_def*, i32*, i32*) #2

declare dso_local i32 @rcu_assign_pointer(i32, %struct.beacon_data*) #2

declare dso_local i32 @ieee80211_reset_erp_info(%struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @ieee80211_set_wmm_default(%struct.ieee80211_sub_if_data*, i32, i32) #2

declare dso_local i32 @drv_join_ibss(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @ieee80211_vif_release_channel(%struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @mod_timer(i32*, i32) #2

declare dso_local i32 @round_jiffies(i64) #2

declare dso_local i32 @cfg80211_chandef_to_scan_width(%struct.cfg80211_chan_def*) #2

declare dso_local %struct.cfg80211_bss* @cfg80211_inform_bss_frame_data(i32, %struct.cfg80211_inform_bss*, %struct.ieee80211_mgmt*, i32, i32) #2

declare dso_local i32 @cfg80211_put_bss(i32, %struct.cfg80211_bss*) #2

declare dso_local i32 @netif_carrier_on(i32) #2

declare dso_local i32 @cfg80211_ibss_joined(i32, i32, %struct.ieee80211_channel*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
