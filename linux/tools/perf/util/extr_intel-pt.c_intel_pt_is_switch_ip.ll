; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_is_switch_ip.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_is_switch_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_queue = type { i32, %struct.intel_pt* }
%struct.intel_pt = type { i64 }

@PERF_IP_FLAG_BRANCH = common dso_local global i32 0, align 4
@PERF_IP_FLAG_CONDITIONAL = common dso_local global i32 0, align 4
@PERF_IP_FLAG_ASYNC = common dso_local global i32 0, align 4
@PERF_IP_FLAG_INTERRUPT = common dso_local global i32 0, align 4
@PERF_IP_FLAG_TX_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_queue*, i64)* @intel_pt_is_switch_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_is_switch_ip(%struct.intel_pt_queue* %0, i64 %1) #0 {
  %3 = alloca %struct.intel_pt_queue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.intel_pt*, align 8
  store %struct.intel_pt_queue* %0, %struct.intel_pt_queue** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %7 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %6, i32 0, i32 1
  %8 = load %struct.intel_pt*, %struct.intel_pt** %7, align 8
  store %struct.intel_pt* %8, %struct.intel_pt** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.intel_pt*, %struct.intel_pt** %5, align 8
  %11 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %16 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PERF_IP_FLAG_BRANCH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  %23 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PERF_IP_FLAG_CONDITIONAL, align 4
  %26 = load i32, i32* @PERF_IP_FLAG_ASYNC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PERF_IP_FLAG_INTERRUPT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PERF_IP_FLAG_TX_ABORT, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %24, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %21, %14, %2
  %36 = phi i1 [ false, %14 ], [ false, %2 ], [ %34, %21 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
