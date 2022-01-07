; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_opt_inject.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_opt_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt*, %union.perf_event*, %struct.perf_sample*, i32)* @intel_pt_opt_inject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_opt_inject(%struct.intel_pt* %0, %union.perf_event* %1, %struct.perf_sample* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_pt*, align 8
  %7 = alloca %union.perf_event*, align 8
  %8 = alloca %struct.perf_sample*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_pt* %0, %struct.intel_pt** %6, align 8
  store %union.perf_event* %1, %union.perf_event** %7, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.intel_pt*, %struct.intel_pt** %6, align 8
  %11 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %21

16:                                               ; preds = %4
  %17 = load %union.perf_event*, %union.perf_event** %7, align 8
  %18 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @intel_pt_inject_event(%union.perf_event* %17, %struct.perf_sample* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %15
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @intel_pt_inject_event(%union.perf_event*, %struct.perf_sample*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
