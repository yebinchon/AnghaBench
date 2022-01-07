; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_sta_apply_mesh_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_sta_apply_mesh_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { %struct.TYPE_8__*, %struct.ieee80211_sub_if_data* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.station_parameters = type { i32, i32, i32, i64, i32 }

@NL80211_MESH_POWER_UNKNOWN = common dso_local global i64 0, align 8
@STATION_PARAM_APPLY_PLINK_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.sta_info*, %struct.station_parameters*)* @sta_apply_mesh_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta_apply_mesh_params(%struct.ieee80211_local* %0, %struct.sta_info* %1, %struct.station_parameters* %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.station_parameters*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store %struct.station_parameters* %2, %struct.station_parameters** %6, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
