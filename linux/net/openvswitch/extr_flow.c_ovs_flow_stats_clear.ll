; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.c_ovs_flow_stats_clear.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.c_ovs_flow_stats_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow = type { i32*, i32 }
%struct.sw_flow_stats = type { i32, i64, i64, i64, i64 }

@nr_cpu_ids = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ovs_flow_stats_clear(%struct.sw_flow* %0) #0 {
  %2 = alloca %struct.sw_flow*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sw_flow_stats*, align 8
  store %struct.sw_flow* %0, %struct.sw_flow** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @nr_cpu_ids, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %41

9:                                                ; preds = %5
  %10 = load %struct.sw_flow*, %struct.sw_flow** %2, align 8
  %11 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.sw_flow_stats* @ovsl_dereference(i32 %16)
  store %struct.sw_flow_stats* %17, %struct.sw_flow_stats** %4, align 8
  %18 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %4, align 8
  %19 = icmp ne %struct.sw_flow_stats* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %9
  %21 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %4, align 8
  %22 = getelementptr inbounds %struct.sw_flow_stats, %struct.sw_flow_stats* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %4, align 8
  %25 = getelementptr inbounds %struct.sw_flow_stats, %struct.sw_flow_stats* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %4, align 8
  %27 = getelementptr inbounds %struct.sw_flow_stats, %struct.sw_flow_stats* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %4, align 8
  %29 = getelementptr inbounds %struct.sw_flow_stats, %struct.sw_flow_stats* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %4, align 8
  %31 = getelementptr inbounds %struct.sw_flow_stats, %struct.sw_flow_stats* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %4, align 8
  %33 = getelementptr inbounds %struct.sw_flow_stats, %struct.sw_flow_stats* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_bh(i32* %33)
  br label %35

35:                                               ; preds = %20, %9
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.sw_flow*, %struct.sw_flow** %2, align 8
  %39 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %38, i32 0, i32 1
  %40 = call i32 @cpumask_next(i32 %37, i32* %39)
  store i32 %40, i32* %3, align 4
  br label %5

41:                                               ; preds = %5
  ret void
}

declare dso_local %struct.sw_flow_stats* @ovsl_dereference(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cpumask_next(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
