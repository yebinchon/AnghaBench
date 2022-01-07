; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_lost.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt = type { i32 }
%struct.perf_sample = type { i32, i32, i32, i32 }

@INTEL_PT_ERR_LOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt*, %struct.perf_sample*)* @intel_pt_lost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_lost(%struct.intel_pt* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca %struct.intel_pt*, align 8
  %4 = alloca %struct.perf_sample*, align 8
  store %struct.intel_pt* %0, %struct.intel_pt** %3, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %4, align 8
  %5 = load %struct.intel_pt*, %struct.intel_pt** %3, align 8
  %6 = load i32, i32* @INTEL_PT_ERR_LOST, align 4
  %7 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %8 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %11 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %14 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %17 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @intel_pt_synth_error(%struct.intel_pt* %5, i32 %6, i32 %9, i32 %12, i32 %15, i32 0, i32 %18)
  ret i32 %19
}

declare dso_local i32 @intel_pt_synth_error(%struct.intel_pt*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
