; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.c_ovs_flow_stats_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.c_ovs_flow_stats_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow = type { i32*, i32 }
%struct.ovs_flow_stats = type { i32, i32 }
%struct.sw_flow_stats = type { i64, i32, i64, i64, i32 }

@nr_cpu_ids = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ovs_flow_stats_get(%struct.sw_flow* %0, %struct.ovs_flow_stats* %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.sw_flow*, align 8
  %6 = alloca %struct.ovs_flow_stats*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sw_flow_stats*, align 8
  store %struct.sw_flow* %0, %struct.sw_flow** %5, align 8
  store %struct.ovs_flow_stats* %1, %struct.ovs_flow_stats** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i64*, i64** %7, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32*, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.ovs_flow_stats*, %struct.ovs_flow_stats** %6, align 8
  %14 = call i32 @memset(%struct.ovs_flow_stats* %13, i32 0, i32 8)
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %79, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @nr_cpu_ids, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %15
  %20 = load %struct.sw_flow*, %struct.sw_flow** %5, align 8
  %21 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.sw_flow_stats* @rcu_dereference_ovsl(i32 %26)
  store %struct.sw_flow_stats* %27, %struct.sw_flow_stats** %10, align 8
  %28 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %10, align 8
  %29 = icmp ne %struct.sw_flow_stats* %28, null
  br i1 %29, label %30, label %78

30:                                               ; preds = %19
  %31 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %10, align 8
  %32 = getelementptr inbounds %struct.sw_flow_stats, %struct.sw_flow_stats* %31, i32 0, i32 1
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %10, align 8
  %39 = getelementptr inbounds %struct.sw_flow_stats, %struct.sw_flow_stats* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @time_after(i64 %40, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37, %30
  %46 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %10, align 8
  %47 = getelementptr inbounds %struct.sw_flow_stats, %struct.sw_flow_stats* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %7, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %45, %37
  %51 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %10, align 8
  %52 = getelementptr inbounds %struct.sw_flow_stats, %struct.sw_flow_stats* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %10, align 8
  %58 = getelementptr inbounds %struct.sw_flow_stats, %struct.sw_flow_stats* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ovs_flow_stats*, %struct.ovs_flow_stats** %6, align 8
  %61 = getelementptr inbounds %struct.ovs_flow_stats, %struct.ovs_flow_stats* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %10, align 8
  %67 = getelementptr inbounds %struct.sw_flow_stats, %struct.sw_flow_stats* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ovs_flow_stats*, %struct.ovs_flow_stats** %6, align 8
  %70 = getelementptr inbounds %struct.ovs_flow_stats, %struct.ovs_flow_stats* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %68
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 4
  %75 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %10, align 8
  %76 = getelementptr inbounds %struct.sw_flow_stats, %struct.sw_flow_stats* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock_bh(i32* %76)
  br label %78

78:                                               ; preds = %50, %19
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.sw_flow*, %struct.sw_flow** %5, align 8
  %82 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %81, i32 0, i32 1
  %83 = call i32 @cpumask_next(i32 %80, i32* %82)
  store i32 %83, i32* %9, align 4
  br label %15

84:                                               ; preds = %15
  ret void
}

declare dso_local i32 @memset(%struct.ovs_flow_stats*, i32, i32) #1

declare dso_local %struct.sw_flow_stats* @rcu_dereference_ovsl(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cpumask_next(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
