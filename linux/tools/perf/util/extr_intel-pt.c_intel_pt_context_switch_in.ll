; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_context_switch_in.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_context_switch_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt = type { i32, i64 }
%struct.perf_sample = type { i64, i64, i32 }
%struct.intel_pt_queue = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt*, %struct.perf_sample*)* @intel_pt_context_switch_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_context_switch_in(%struct.intel_pt* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_pt*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_pt_queue*, align 8
  store %struct.intel_pt* %0, %struct.intel_pt** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  %10 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %11 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %14 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %17 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %20 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %2
  %24 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.intel_pt_queue* @intel_pt_cpu_to_ptq(%struct.intel_pt* %24, i32 %25)
  store %struct.intel_pt_queue* %26, %struct.intel_pt_queue** %9, align 8
  %27 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %9, align 8
  %28 = icmp ne %struct.intel_pt_queue* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %9, align 8
  %31 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %9, align 8
  %36 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  %37 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %9, align 8
  %38 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %44 [
    i32 130, label %40
    i32 128, label %40
    i32 129, label %40
    i32 132, label %41
    i32 131, label %41
  ]

40:                                               ; preds = %34, %34, %34
  br label %45

41:                                               ; preds = %34, %34
  %42 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %9, align 8
  %43 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %42, i32 0, i32 1
  store i32 129, i32* %43, align 4
  br label %45

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %41, %40
  br label %46

46:                                               ; preds = %45, %29, %23
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %49 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @machine__get_current_tid(i32 %50, i32 %51)
  %53 = load i64, i64* %7, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %64

56:                                               ; preds = %47
  %57 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %58 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @machine__set_current_tid(i32 %59, i32 %60, i64 %61, i64 %62)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %55
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.intel_pt_queue* @intel_pt_cpu_to_ptq(%struct.intel_pt*, i32) #1

declare dso_local i64 @machine__get_current_tid(i32, i32) #1

declare dso_local i32 @machine__set_current_tid(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
