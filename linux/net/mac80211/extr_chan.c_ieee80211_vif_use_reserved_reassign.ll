; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_vif_use_reserved_reassign.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_vif_use_reserved_reassign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.ieee80211_chanctx*, i32, i32, %struct.ieee80211_local* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ieee80211_chanctx = type { i64, i32, i32 }
%struct.ieee80211_local = type { i32, i32 }
%struct.ieee80211_vif_chanctx_switch = type { i32*, i32*, %struct.TYPE_8__* }
%struct.cfg80211_chan_def = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_CHANCTX_REPLACES_OTHER = common dso_local global i64 0, align 8
@CHANCTX_SWMODE_REASSIGN_VIF = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@BSS_CHANGED_BANDWIDTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*)* @ieee80211_vif_use_reserved_reassign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_vif_use_reserved_reassign(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca [1 x %struct.ieee80211_vif_chanctx_switch], align 16
  %6 = alloca %struct.ieee80211_chanctx*, align 8
  %7 = alloca %struct.ieee80211_chanctx*, align 8
  %8 = alloca %struct.cfg80211_chan_def*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 6
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  store %struct.ieee80211_local* %13, %struct.ieee80211_local** %4, align 8
  %14 = bitcast [1 x %struct.ieee80211_vif_chanctx_switch]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 24, i1 false)
  store i64 0, i64* %9, align 8
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %15, i32 0, i32 1
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 0
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %21, i32 0, i32 3
  %23 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %22, align 8
  store %struct.ieee80211_chanctx* %23, %struct.ieee80211_chanctx** %7, align 8
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %25 = call %struct.ieee80211_chanctx* @ieee80211_vif_get_chanctx(%struct.ieee80211_sub_if_data* %24)
  store %struct.ieee80211_chanctx* %25, %struct.ieee80211_chanctx** %6, align 8
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %194

37:                                               ; preds = %1
  %38 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %7, align 8
  %39 = icmp ne %struct.ieee80211_chanctx* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %194

47:                                               ; preds = %37
  %48 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  %49 = icmp ne %struct.ieee80211_chanctx* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @WARN_ON(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %194

57:                                               ; preds = %47
  %58 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IEEE80211_CHANCTX_REPLACES_OTHER, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @WARN_ON(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %194

69:                                               ; preds = %57
  %70 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %71 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %7, align 8
  %72 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %73 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %72, i32 0, i32 0
  %74 = call %struct.cfg80211_chan_def* @ieee80211_chanctx_non_reserved_chandef(%struct.ieee80211_local* %70, %struct.ieee80211_chanctx* %71, %struct.TYPE_9__* %73)
  store %struct.cfg80211_chan_def* %74, %struct.cfg80211_chan_def** %8, align 8
  %75 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %76 = icmp ne %struct.cfg80211_chan_def* %75, null
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i64 @WARN_ON(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %69
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %194

84:                                               ; preds = %69
  %85 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %86 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %7, align 8
  %87 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %88 = call i32 @ieee80211_change_chanctx(%struct.ieee80211_local* %85, %struct.ieee80211_chanctx* %86, %struct.cfg80211_chan_def* %87)
  %89 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %90 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %89, i32 0, i32 1
  %91 = getelementptr inbounds [1 x %struct.ieee80211_vif_chanctx_switch], [1 x %struct.ieee80211_vif_chanctx_switch]* %5, i64 0, i64 0
  %92 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %91, i32 0, i32 2
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %92, align 16
  %93 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  %94 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %93, i32 0, i32 1
  %95 = getelementptr inbounds [1 x %struct.ieee80211_vif_chanctx_switch], [1 x %struct.ieee80211_vif_chanctx_switch]* %5, i64 0, i64 0
  %96 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %95, i32 0, i32 1
  store i32* %94, i32** %96, align 8
  %97 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %7, align 8
  %98 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %97, i32 0, i32 1
  %99 = getelementptr inbounds [1 x %struct.ieee80211_vif_chanctx_switch], [1 x %struct.ieee80211_vif_chanctx_switch]* %5, i64 0, i64 0
  %100 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %99, i32 0, i32 0
  store i32* %98, i32** %100, align 16
  %101 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %102 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %101, i32 0, i32 4
  %103 = call i32 @list_del(i32* %102)
  %104 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %105 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %104, i32 0, i32 3
  store %struct.ieee80211_chanctx* null, %struct.ieee80211_chanctx** %105, align 8
  %106 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %107 = getelementptr inbounds [1 x %struct.ieee80211_vif_chanctx_switch], [1 x %struct.ieee80211_vif_chanctx_switch]* %5, i64 0, i64 0
  %108 = load i32, i32* @CHANCTX_SWMODE_REASSIGN_VIF, align 4
  %109 = call i32 @drv_switch_vif_chanctx(%struct.ieee80211_local* %106, %struct.ieee80211_vif_chanctx_switch* %107, i32 1, i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %84
  %113 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %114 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %7, align 8
  %115 = call i64 @ieee80211_chanctx_refcount(%struct.ieee80211_local* %113, %struct.ieee80211_chanctx* %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %119 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %7, align 8
  %120 = call i32 @ieee80211_free_chanctx(%struct.ieee80211_local* %118, %struct.ieee80211_chanctx* %119)
  br label %121

121:                                              ; preds = %117, %112
  br label %190

122:                                              ; preds = %84
  %123 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %124 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %123, i32 0, i32 2
  %125 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %7, align 8
  %126 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %125, i32 0, i32 2
  %127 = call i32 @list_move(i32* %124, i32* %126)
  %128 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %129 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %7, align 8
  %133 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %132, i32 0, i32 1
  %134 = call i32 @rcu_assign_pointer(i32 %131, i32* %133)
  %135 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %136 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %122
  %142 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %143 = call i32 @__ieee80211_vif_copy_chanctx_to_vlans(%struct.ieee80211_sub_if_data* %142, i32 0)
  br label %144

144:                                              ; preds = %141, %122
  %145 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %146 = call i32 @ieee80211_check_fast_xmit_iface(%struct.ieee80211_sub_if_data* %145)
  %147 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %148 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  %149 = call i64 @ieee80211_chanctx_refcount(%struct.ieee80211_local* %147, %struct.ieee80211_chanctx* %148)
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %153 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  %154 = call i32 @ieee80211_free_chanctx(%struct.ieee80211_local* %152, %struct.ieee80211_chanctx* %153)
  br label %155

155:                                              ; preds = %151, %144
  %156 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %157 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %163 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %161, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %155
  %168 = load i64, i64* @BSS_CHANGED_BANDWIDTH, align 8
  store i64 %168, i64* %9, align 8
  br label %169

169:                                              ; preds = %167, %155
  %170 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %171 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %172 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %171, i32 0, i32 0
  %173 = call i32 @ieee80211_vif_update_chandef(%struct.ieee80211_sub_if_data* %170, %struct.TYPE_9__* %172)
  %174 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %175 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %7, align 8
  %176 = call i32 @ieee80211_recalc_smps_chanctx(%struct.ieee80211_local* %174, %struct.ieee80211_chanctx* %175)
  %177 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %178 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %7, align 8
  %179 = call i32 @ieee80211_recalc_radar_chanctx(%struct.ieee80211_local* %177, %struct.ieee80211_chanctx* %178)
  %180 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %181 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %7, align 8
  %182 = call i32 @ieee80211_recalc_chanctx_min_def(%struct.ieee80211_local* %180, %struct.ieee80211_chanctx* %181)
  %183 = load i64, i64* %9, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %169
  %186 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %187 = load i64, i64* %9, align 8
  %188 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %186, i64 %187)
  br label %189

189:                                              ; preds = %185, %169
  br label %190

190:                                              ; preds = %189, %121
  %191 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %192 = call i32 @ieee80211_vif_chanctx_reservation_complete(%struct.ieee80211_sub_if_data* %191)
  %193 = load i32, i32* %10, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %190, %81, %66, %54, %44, %34
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local %struct.ieee80211_chanctx* @ieee80211_vif_get_chanctx(%struct.ieee80211_sub_if_data*) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local %struct.cfg80211_chan_def* @ieee80211_chanctx_non_reserved_chandef(%struct.ieee80211_local*, %struct.ieee80211_chanctx*, %struct.TYPE_9__*) #2

declare dso_local i32 @ieee80211_change_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*, %struct.cfg80211_chan_def*) #2

declare dso_local i32 @list_del(i32*) #2

declare dso_local i32 @drv_switch_vif_chanctx(%struct.ieee80211_local*, %struct.ieee80211_vif_chanctx_switch*, i32, i32) #2

declare dso_local i64 @ieee80211_chanctx_refcount(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #2

declare dso_local i32 @ieee80211_free_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #2

declare dso_local i32 @list_move(i32*, i32*) #2

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #2

declare dso_local i32 @__ieee80211_vif_copy_chanctx_to_vlans(%struct.ieee80211_sub_if_data*, i32) #2

declare dso_local i32 @ieee80211_check_fast_xmit_iface(%struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @ieee80211_vif_update_chandef(%struct.ieee80211_sub_if_data*, %struct.TYPE_9__*) #2

declare dso_local i32 @ieee80211_recalc_smps_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #2

declare dso_local i32 @ieee80211_recalc_radar_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #2

declare dso_local i32 @ieee80211_recalc_chanctx_min_def(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #2

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i64) #2

declare dso_local i32 @ieee80211_vif_chanctx_reservation_complete(%struct.ieee80211_sub_if_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
