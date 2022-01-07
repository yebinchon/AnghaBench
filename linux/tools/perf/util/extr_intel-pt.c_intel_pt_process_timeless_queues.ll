; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_process_timeless_queues.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_process_timeless_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt = type { %struct.auxtrace_queues }
%struct.auxtrace_queues = type { i32, %struct.auxtrace_queue* }
%struct.auxtrace_queue = type { %struct.intel_pt_queue* }
%struct.intel_pt_queue = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt*, i32, i32)* @intel_pt_process_timeless_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_process_timeless_queues(%struct.intel_pt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_pt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.auxtrace_queues*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.auxtrace_queue*, align 8
  %11 = alloca %struct.intel_pt_queue*, align 8
  store %struct.intel_pt* %0, %struct.intel_pt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %13 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %12, i32 0, i32 0
  store %struct.auxtrace_queues* %13, %struct.auxtrace_queues** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %52, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %7, align 8
  %17 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %14
  %21 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %22 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %22, i32 0, i32 1
  %24 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %24, i64 %26
  store %struct.auxtrace_queue* %27, %struct.auxtrace_queue** %10, align 8
  %28 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %10, align 8
  %29 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %28, i32 0, i32 0
  %30 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %29, align 8
  store %struct.intel_pt_queue* %30, %struct.intel_pt_queue** %11, align 8
  %31 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %11, align 8
  %32 = icmp ne %struct.intel_pt_queue* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %11, align 8
  %38 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36, %33
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %11, align 8
  %45 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %47 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %10, align 8
  %48 = call i32 @intel_pt_set_pid_tid_cpu(%struct.intel_pt* %46, %struct.auxtrace_queue* %47)
  %49 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %11, align 8
  %50 = call i32 @intel_pt_run_decoder(%struct.intel_pt_queue* %49, i32* %9)
  br label %51

51:                                               ; preds = %42, %36, %20
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %14

55:                                               ; preds = %14
  ret i32 0
}

declare dso_local i32 @intel_pt_set_pid_tid_cpu(%struct.intel_pt*, %struct.auxtrace_queue*) #1

declare dso_local i32 @intel_pt_run_decoder(%struct.intel_pt_queue*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
