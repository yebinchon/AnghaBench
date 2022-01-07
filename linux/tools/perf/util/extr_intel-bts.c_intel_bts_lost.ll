; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_lost.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_bts = type { i32 }
%struct.perf_sample = type { i32, i32, i32, i32 }
%union.perf_event = type { i32 }

@PERF_AUXTRACE_ERROR_ITRACE = common dso_local global i32 0, align 4
@INTEL_BTS_ERR_LOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Lost trace data\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Intel BTS: failed to deliver error event, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_bts*, %struct.perf_sample*)* @intel_bts_lost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_bts_lost(%struct.intel_bts* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca %struct.intel_bts*, align 8
  %4 = alloca %struct.perf_sample*, align 8
  %5 = alloca %union.perf_event, align 4
  %6 = alloca i32, align 4
  store %struct.intel_bts* %0, %struct.intel_bts** %3, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %4, align 8
  %7 = bitcast %union.perf_event* %5 to i32*
  %8 = load i32, i32* @PERF_AUXTRACE_ERROR_ITRACE, align 4
  %9 = load i32, i32* @INTEL_BTS_ERR_LOST, align 4
  %10 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %11 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %14 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %17 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %20 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @auxtrace_synth_error(i32* %7, i32 %8, i32 %9, i32 %12, i32 %15, i32 %18, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.intel_bts*, %struct.intel_bts** %3, align 8
  %24 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @perf_session__deliver_synth_event(i32 %25, %union.perf_event* %5, i32* null)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %2
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @auxtrace_synth_error(i32*, i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @perf_session__deliver_synth_event(i32, %union.perf_event*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
