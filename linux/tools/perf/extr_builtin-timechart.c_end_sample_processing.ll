; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_end_sample_processing.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_end_sample_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { i64, %struct.power_event*, i64, i64, i32 }
%struct.power_event = type { i64, i64, i64, %struct.power_event*, i32, i32 }

@cpus_pstate_state = common dso_local global i64* null, align 8
@cpus_pstate_start_times = common dso_local global i64* null, align 8
@PSTATE = common dso_local global i32 0, align 4
@CSTATE = common dso_local global i32 0, align 4
@cpus_cstate_start_times = common dso_local global i64* null, align 8
@cpus_cstate_state = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timechart*)* @end_sample_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_sample_processing(%struct.timechart* %0) #0 {
  %2 = alloca %struct.timechart*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.power_event*, align 8
  store %struct.timechart* %0, %struct.timechart** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %70, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.timechart*, %struct.timechart** %2, align 8
  %8 = getelementptr inbounds %struct.timechart, %struct.timechart* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ule i64 %6, %9
  br i1 %10, label %11, label %73

11:                                               ; preds = %5
  %12 = call %struct.power_event* @zalloc(i32 40)
  store %struct.power_event* %12, %struct.power_event** %4, align 8
  %13 = load %struct.power_event*, %struct.power_event** %4, align 8
  %14 = icmp ne %struct.power_event* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %73

16:                                               ; preds = %11
  %17 = load i64*, i64** @cpus_pstate_state, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.power_event*, %struct.power_event** %4, align 8
  %22 = getelementptr inbounds %struct.power_event, %struct.power_event* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load i64*, i64** @cpus_pstate_start_times, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.power_event*, %struct.power_event** %4, align 8
  %28 = getelementptr inbounds %struct.power_event, %struct.power_event* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.timechart*, %struct.timechart** %2, align 8
  %30 = getelementptr inbounds %struct.timechart, %struct.timechart* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.power_event*, %struct.power_event** %4, align 8
  %33 = getelementptr inbounds %struct.power_event, %struct.power_event* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.power_event*, %struct.power_event** %4, align 8
  %36 = getelementptr inbounds %struct.power_event, %struct.power_event* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @PSTATE, align 4
  %38 = load %struct.power_event*, %struct.power_event** %4, align 8
  %39 = getelementptr inbounds %struct.power_event, %struct.power_event* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.timechart*, %struct.timechart** %2, align 8
  %41 = getelementptr inbounds %struct.timechart, %struct.timechart* %40, i32 0, i32 1
  %42 = load %struct.power_event*, %struct.power_event** %41, align 8
  %43 = load %struct.power_event*, %struct.power_event** %4, align 8
  %44 = getelementptr inbounds %struct.power_event, %struct.power_event* %43, i32 0, i32 3
  store %struct.power_event* %42, %struct.power_event** %44, align 8
  %45 = load %struct.power_event*, %struct.power_event** %4, align 8
  %46 = getelementptr inbounds %struct.power_event, %struct.power_event* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %16
  %50 = load %struct.timechart*, %struct.timechart** %2, align 8
  %51 = getelementptr inbounds %struct.timechart, %struct.timechart* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.power_event*, %struct.power_event** %4, align 8
  %54 = getelementptr inbounds %struct.power_event, %struct.power_event* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %16
  %56 = load %struct.power_event*, %struct.power_event** %4, align 8
  %57 = getelementptr inbounds %struct.power_event, %struct.power_event* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load %struct.timechart*, %struct.timechart** %2, align 8
  %62 = getelementptr inbounds %struct.timechart, %struct.timechart* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.power_event*, %struct.power_event** %4, align 8
  %65 = getelementptr inbounds %struct.power_event, %struct.power_event* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.power_event*, %struct.power_event** %4, align 8
  %68 = load %struct.timechart*, %struct.timechart** %2, align 8
  %69 = getelementptr inbounds %struct.timechart, %struct.timechart* %68, i32 0, i32 1
  store %struct.power_event* %67, %struct.power_event** %69, align 8
  br label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %3, align 8
  br label %5

73:                                               ; preds = %15, %5
  ret void
}

declare dso_local %struct.power_event* @zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
