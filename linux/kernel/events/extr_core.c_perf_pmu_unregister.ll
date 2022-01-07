; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_pmu_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_pmu_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i64, i32, i64, i32, i32 }

@pmus_lock = common dso_local global i32 0, align 4
@pmus_srcu = common dso_local global i32 0, align 4
@PERF_TYPE_MAX = common dso_local global i64 0, align 8
@pmu_idr = common dso_local global i32 0, align 4
@pmu_bus_running = common dso_local global i64 0, align 8
@dev_attr_nr_addr_filters = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_pmu_unregister(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %3 = call i32 @mutex_lock(i32* @pmus_lock)
  %4 = load %struct.pmu*, %struct.pmu** %2, align 8
  %5 = getelementptr inbounds %struct.pmu, %struct.pmu* %4, i32 0, i32 4
  %6 = call i32 @list_del_rcu(i32* %5)
  %7 = call i32 @synchronize_srcu(i32* @pmus_srcu)
  %8 = call i32 (...) @synchronize_rcu()
  %9 = load %struct.pmu*, %struct.pmu** %2, align 8
  %10 = getelementptr inbounds %struct.pmu, %struct.pmu* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @free_percpu(i32 %11)
  %13 = load %struct.pmu*, %struct.pmu** %2, align 8
  %14 = getelementptr inbounds %struct.pmu, %struct.pmu* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PERF_TYPE_MAX, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.pmu*, %struct.pmu** %2, align 8
  %20 = getelementptr inbounds %struct.pmu, %struct.pmu* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @idr_remove(i32* @pmu_idr, i64 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load i64, i64* @pmu_bus_running, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = load %struct.pmu*, %struct.pmu** %2, align 8
  %28 = getelementptr inbounds %struct.pmu, %struct.pmu* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.pmu*, %struct.pmu** %2, align 8
  %33 = getelementptr inbounds %struct.pmu, %struct.pmu* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @device_remove_file(i32 %34, i32* @dev_attr_nr_addr_filters)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.pmu*, %struct.pmu** %2, align 8
  %38 = getelementptr inbounds %struct.pmu, %struct.pmu* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @device_del(i32 %39)
  %41 = load %struct.pmu*, %struct.pmu** %2, align 8
  %42 = getelementptr inbounds %struct.pmu, %struct.pmu* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @put_device(i32 %43)
  br label %45

45:                                               ; preds = %36, %23
  %46 = load %struct.pmu*, %struct.pmu** %2, align 8
  %47 = call i32 @free_pmu_context(%struct.pmu* %46)
  %48 = call i32 @mutex_unlock(i32* @pmus_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @synchronize_srcu(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @idr_remove(i32*, i64) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @device_del(i32) #1

declare dso_local i32 @put_device(i32) #1

declare dso_local i32 @free_pmu_context(%struct.pmu*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
