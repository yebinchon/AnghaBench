; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_next_tid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_next_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.auxtrace_queue* }
%struct.auxtrace_queue = type { i32 }
%struct.intel_pt_queue = type { i32, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"switch: cpu %d tid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt*, %struct.intel_pt_queue*)* @intel_pt_next_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_next_tid(%struct.intel_pt* %0, %struct.intel_pt_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_pt*, align 8
  %5 = alloca %struct.intel_pt_queue*, align 8
  %6 = alloca %struct.auxtrace_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_pt* %0, %struct.intel_pt** %4, align 8
  store %struct.intel_pt_queue* %1, %struct.intel_pt_queue** %5, align 8
  %9 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %10 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %17 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @intel_pt_log(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %22 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %25 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @machine__set_current_tid(i32 %23, i32 %26, i32 -1, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %30 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %31, align 8
  %33 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %34 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %32, i64 %35
  store %struct.auxtrace_queue* %36, %struct.auxtrace_queue** %6, align 8
  %37 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %38 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %6, align 8
  %39 = call i32 @intel_pt_set_pid_tid_cpu(%struct.intel_pt* %37, %struct.auxtrace_queue* %38)
  %40 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %41 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 8
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %15, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @intel_pt_log(i8*, i32, i32) #1

declare dso_local i32 @machine__set_current_tid(i32, i32, i32, i32) #1

declare dso_local i32 @intel_pt_set_pid_tid_cpu(%struct.intel_pt*, %struct.auxtrace_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
