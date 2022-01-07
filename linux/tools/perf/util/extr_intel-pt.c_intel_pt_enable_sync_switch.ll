; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_enable_sync_switch.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_enable_sync_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.auxtrace_queue* }
%struct.auxtrace_queue = type { %struct.intel_pt_queue* }
%struct.intel_pt_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt*)* @intel_pt_enable_sync_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_enable_sync_switch(%struct.intel_pt* %0) #0 {
  %2 = alloca %struct.intel_pt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.auxtrace_queue*, align 8
  %5 = alloca %struct.intel_pt_queue*, align 8
  store %struct.intel_pt* %0, %struct.intel_pt** %2, align 8
  %6 = load %struct.intel_pt*, %struct.intel_pt** %2, align 8
  %7 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.intel_pt*, %struct.intel_pt** %2, align 8
  %11 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %9, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %8
  %16 = load %struct.intel_pt*, %struct.intel_pt** %2, align 8
  %17 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %19, i64 %21
  store %struct.auxtrace_queue* %22, %struct.auxtrace_queue** %4, align 8
  %23 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %4, align 8
  %24 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %23, i32 0, i32 0
  %25 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %24, align 8
  store %struct.intel_pt_queue* %25, %struct.intel_pt_queue** %5, align 8
  %26 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %27 = icmp ne %struct.intel_pt_queue* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %5, align 8
  %30 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %8

35:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
