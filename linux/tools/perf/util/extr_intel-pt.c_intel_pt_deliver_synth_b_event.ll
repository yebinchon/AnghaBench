; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_deliver_synth_b_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_deliver_synth_b_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt = type { i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Intel PT: failed to deliver event, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt*, %union.perf_event*, %struct.perf_sample*, i32)* @intel_pt_deliver_synth_b_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_deliver_synth_b_event(%struct.intel_pt* %0, %union.perf_event* %1, %struct.perf_sample* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_pt*, align 8
  %7 = alloca %union.perf_event*, align 8
  %8 = alloca %struct.perf_sample*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_pt* %0, %struct.intel_pt** %6, align 8
  store %union.perf_event* %1, %union.perf_event** %7, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.intel_pt*, %struct.intel_pt** %6, align 8
  %12 = load %union.perf_event*, %union.perf_event** %7, align 8
  %13 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @intel_pt_opt_inject(%struct.intel_pt* %11, %union.perf_event* %12, %struct.perf_sample* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %34

20:                                               ; preds = %4
  %21 = load %struct.intel_pt*, %struct.intel_pt** %6, align 8
  %22 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %union.perf_event*, %union.perf_event** %7, align 8
  %25 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %26 = call i32 @perf_session__deliver_synth_event(i32 %23, %union.perf_event* %24, %struct.perf_sample* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %20
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %18
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @intel_pt_opt_inject(%struct.intel_pt*, %union.perf_event*, %struct.perf_sample*, i32) #1

declare dso_local i32 @perf_session__deliver_synth_event(i32, %union.perf_event*, %struct.perf_sample*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
