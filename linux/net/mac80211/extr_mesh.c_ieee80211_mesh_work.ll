; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_mesh_work.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_mesh_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i32, %struct.TYPE_3__, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@MESH_WORK_HOUSEKEEPING = common dso_local global i32 0, align 4
@MESH_WORK_ROOT = common dso_local global i32 0, align 4
@MESH_WORK_DRIFT_ADJUST = common dso_local global i32 0, align 4
@MESH_WORK_MBSS_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mesh_work(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_if_mesh*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %4 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %6, %struct.ieee80211_if_mesh** %3, align 8
  %7 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %8 = call i32 @sdata_lock(%struct.ieee80211_sub_if_data* %7)
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %74

16:                                               ; preds = %1
  %17 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load i32, i32* @jiffies, align 4
  %23 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @msecs_to_jiffies(i32 %29)
  %31 = add nsw i64 %25, %30
  %32 = call i64 @time_after(i32 %22, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %36 = call i32 @mesh_path_start_discovery(%struct.ieee80211_sub_if_data* %35)
  br label %37

37:                                               ; preds = %34, %21, %16
  %38 = load i32, i32* @MESH_WORK_HOUSEKEEPING, align 4
  %39 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %40 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %39, i32 0, i32 0
  %41 = call i64 @test_and_clear_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %45 = call i32 @ieee80211_mesh_housekeeping(%struct.ieee80211_sub_if_data* %44)
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, i32* @MESH_WORK_ROOT, align 4
  %48 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %49 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %48, i32 0, i32 0
  %50 = call i64 @test_and_clear_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %54 = call i32 @ieee80211_mesh_rootpath(%struct.ieee80211_sub_if_data* %53)
  br label %55

55:                                               ; preds = %52, %46
  %56 = load i32, i32* @MESH_WORK_DRIFT_ADJUST, align 4
  %57 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %58 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %57, i32 0, i32 0
  %59 = call i64 @test_and_clear_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %63 = call i32 @mesh_sync_adjust_tsf(%struct.ieee80211_sub_if_data* %62)
  br label %64

64:                                               ; preds = %61, %55
  %65 = load i32, i32* @MESH_WORK_MBSS_CHANGED, align 4
  %66 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %67 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %66, i32 0, i32 0
  %68 = call i64 @test_and_clear_bit(i32 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %72 = call i32 @mesh_bss_info_changed(%struct.ieee80211_sub_if_data* %71)
  br label %73

73:                                               ; preds = %70, %64
  br label %74

74:                                               ; preds = %73, %15
  %75 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %76 = call i32 @sdata_unlock(%struct.ieee80211_sub_if_data* %75)
  ret void
}

declare dso_local i32 @sdata_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mesh_path_start_discovery(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_mesh_housekeeping(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_mesh_rootpath(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mesh_sync_adjust_tsf(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mesh_bss_info_changed(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @sdata_unlock(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
