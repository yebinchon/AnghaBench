; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_plink.c_mesh_plink_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_plink.c_mesh_plink_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_8__*, %struct.TYPE_5__, %struct.ieee80211_sub_if_data* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@WLAN_REASON_MESH_PEER_CANCELED = common dso_local global i32 0, align 4
@WLAN_SP_MESH_PEERING_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_plink_deactivate(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %5 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %6 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %5, i32 0, i32 2
  %7 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.ieee80211_sub_if_data* %7, %struct.ieee80211_sub_if_data** %3, align 8
  %8 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %9 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %14 = call i32 @__mesh_plink_deactivate(%struct.sta_info* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @WLAN_REASON_MESH_PEER_CANCELED, align 4
  %23 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %24 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  store i32 %22, i32* %26, align 4
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %28 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %29 = load i32, i32* @WLAN_SP_MESH_PEERING_CLOSE, align 4
  %30 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %35 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %45 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mesh_plink_frame_tx(%struct.ieee80211_sub_if_data* %27, %struct.sta_info* %28, i32 %29, i32 %33, i32 %38, i32 %43, i32 %48)
  br label %50

50:                                               ; preds = %21, %1
  %51 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %52 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock_bh(i32* %54)
  %56 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %50
  %63 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %64 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = call i32 @del_timer_sync(i32* %66)
  br label %68

68:                                               ; preds = %62, %50
  %69 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %70 = call i32 @mesh_path_flush_by_nexthop(%struct.sta_info* %69)
  %71 = call i32 (...) @synchronize_net()
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__mesh_plink_deactivate(%struct.sta_info*) #1

declare dso_local i32 @mesh_plink_frame_tx(%struct.ieee80211_sub_if_data*, %struct.sta_info*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mesh_path_flush_by_nexthop(%struct.sta_info*) #1

declare dso_local i32 @synchronize_net(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
