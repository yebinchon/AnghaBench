; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_process_tid_exit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_process_tid_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_bts = type { %struct.auxtrace_queues }
%struct.auxtrace_queues = type { i32, %struct.auxtrace_queue* }
%struct.auxtrace_queue = type { %struct.intel_bts_queue* }
%struct.intel_bts_queue = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_bts*, i64)* @intel_bts_process_tid_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_bts_process_tid_exit(%struct.intel_bts* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_bts*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.auxtrace_queues*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.auxtrace_queue*, align 8
  %9 = alloca %struct.intel_bts_queue*, align 8
  store %struct.intel_bts* %0, %struct.intel_bts** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.intel_bts*, %struct.intel_bts** %4, align 8
  %11 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %10, i32 0, i32 0
  store %struct.auxtrace_queues* %11, %struct.auxtrace_queues** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %41, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %6, align 8
  %15 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = load %struct.intel_bts*, %struct.intel_bts** %4, align 8
  %20 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %20, i32 0, i32 1
  %22 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %22, i64 %24
  store %struct.auxtrace_queue* %25, %struct.auxtrace_queue** %8, align 8
  %26 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %8, align 8
  %27 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %26, i32 0, i32 0
  %28 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %27, align 8
  store %struct.intel_bts_queue* %28, %struct.intel_bts_queue** %9, align 8
  %29 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %9, align 8
  %30 = icmp ne %struct.intel_bts_queue* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %18
  %32 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %9, align 8
  %33 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %9, align 8
  %39 = call i32 @intel_bts_flush_queue(%struct.intel_bts_queue* %38)
  store i32 %39, i32* %3, align 4
  br label %45

40:                                               ; preds = %31, %18
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %12

44:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @intel_bts_flush_queue(%struct.intel_bts_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
