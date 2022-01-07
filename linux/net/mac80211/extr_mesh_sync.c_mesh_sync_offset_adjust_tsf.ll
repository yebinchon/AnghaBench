; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_sync.c_mesh_sync_offset_adjust_tsf.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_sync.c_mesh_sync_offset_adjust_tsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i64, i64, i32, i32 }
%struct.beacon_data = type { i32 }

@IEEE80211_SYNC_METHOD_NEIGHBOR_OFFSET = common dso_local global i64 0, align 8
@TOFFSET_MINIMUM_ADJUSTMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"TSF : kicking off TSF adjustment with clockdrift_max=%lld\0A\00", align 1
@MESH_WORK_DRIFT_ADJUST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"TSF : max clockdrift=%lld; too small to adjust\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.beacon_data*)* @mesh_sync_offset_adjust_tsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_sync_offset_adjust_tsf(%struct.ieee80211_sub_if_data* %0, %struct.beacon_data* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.beacon_data*, align 8
  %5 = alloca %struct.ieee80211_if_mesh*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.beacon_data* %1, %struct.beacon_data** %4, align 8
  %6 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %8, %struct.ieee80211_if_mesh** %5, align 8
  %9 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IEEE80211_SYNC_METHOD_NEIGHBOR_OFFSET, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = call i32 (...) @rcu_read_lock_held()
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %21, i32 0, i32 2
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TOFFSET_MINIMUM_ADJUSTMENT, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %31 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @msync_dbg(%struct.ieee80211_sub_if_data* %30, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @MESH_WORK_DRIFT_ADJUST, align 4
  %36 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %36, i32 0, i32 3
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  br label %47

39:                                               ; preds = %2
  %40 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %41 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @msync_dbg(%struct.ieee80211_sub_if_data* %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %39, %29
  %48 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %48, i32 0, i32 2
  %50 = call i32 @spin_unlock_bh(i32* %49)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_lock_held(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @msync_dbg(%struct.ieee80211_sub_if_data*, i8*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
