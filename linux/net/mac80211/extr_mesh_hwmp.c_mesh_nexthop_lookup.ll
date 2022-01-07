; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_mesh_nexthop_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_mesh_nexthop_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.mesh_path = type { i32, i32, i64 }
%struct.sta_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ieee80211_hdr = type { i32, i32, i32, i32* }

@MESH_PATH_ACTIVE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@MESH_PATH_RESOLVING = common dso_local global i32 0, align 4
@MESH_PATH_FIXED = common dso_local global i32 0, align 4
@PREQ_Q_F_START = common dso_local global i32 0, align 4
@PREQ_Q_F_REFRESH = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_nexthop_lookup(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mesh_path*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %13, %struct.ieee80211_hdr** %8, align 8
  %14 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data* %17, i32* %18)
  store %struct.mesh_path* %19, %struct.mesh_path** %6, align 8
  %20 = load %struct.mesh_path*, %struct.mesh_path** %6, align 8
  %21 = icmp ne %struct.mesh_path* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.mesh_path*, %struct.mesh_path** %6, align 8
  %24 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MESH_PATH_ACTIVE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22, %2
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %110

32:                                               ; preds = %22
  %33 = load i32, i32* @jiffies, align 4
  %34 = load %struct.mesh_path*, %struct.mesh_path** %6, align 8
  %35 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @msecs_to_jiffies(i32 %42)
  %44 = sub nsw i64 %36, %43
  %45 = call i64 @time_after(i32 %33, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %32
  %48 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %53 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @ether_addr_equal(i32 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %47
  %58 = load %struct.mesh_path*, %struct.mesh_path** %6, align 8
  %59 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MESH_PATH_RESOLVING, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %57
  %65 = load %struct.mesh_path*, %struct.mesh_path** %6, align 8
  %66 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MESH_PATH_FIXED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %64
  %72 = load %struct.mesh_path*, %struct.mesh_path** %6, align 8
  %73 = load i32, i32* @PREQ_Q_F_START, align 4
  %74 = load i32, i32* @PREQ_Q_F_REFRESH, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @mesh_queue_preq(%struct.mesh_path* %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %64, %57, %47, %32
  %78 = load %struct.mesh_path*, %struct.mesh_path** %6, align 8
  %79 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.sta_info* @rcu_dereference(i32 %80)
  store %struct.sta_info* %81, %struct.sta_info** %7, align 8
  %82 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %83 = icmp ne %struct.sta_info* %82, null
  br i1 %83, label %84, label %107

84:                                               ; preds = %77
  %85 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %86 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %89 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ETH_ALEN, align 4
  %93 = call i32 @memcpy(i32 %87, i32 %91, i32 %92)
  %94 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %95 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %98 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ETH_ALEN, align 4
  %102 = call i32 @memcpy(i32 %96, i32 %100, i32 %101)
  %103 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %104 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %105 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %106 = call i32 @ieee80211_mps_set_frame_flags(%struct.ieee80211_sub_if_data* %103, %struct.sta_info* %104, %struct.ieee80211_hdr* %105)
  store i32 0, i32* %3, align 4
  br label %110

107:                                              ; preds = %77
  %108 = load i32, i32* @ENOENT, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %107, %84, %29
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @mesh_queue_preq(%struct.mesh_path*, i32) #1

declare dso_local %struct.sta_info* @rcu_dereference(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ieee80211_mps_set_frame_flags(%struct.ieee80211_sub_if_data*, %struct.sta_info*, %struct.ieee80211_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
