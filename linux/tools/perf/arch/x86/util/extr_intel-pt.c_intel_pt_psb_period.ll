; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_psb_period.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_psb_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_pmu = type { i32 }
%struct.evlist = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"caps/topa_multiple_entries\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"psb_period\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s psb_period %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.perf_pmu*, %struct.evlist*)* @intel_pt_psb_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_pt_psb_period(%struct.perf_pmu* %0, %struct.evlist* %1) #0 {
  %3 = alloca %struct.perf_pmu*, align 8
  %4 = alloca %struct.evlist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.perf_pmu* %0, %struct.perf_pmu** %3, align 8
  store %struct.evlist* %1, %struct.evlist** %4, align 8
  %9 = load %struct.perf_pmu*, %struct.perf_pmu** %3, align 8
  %10 = call i32 @perf_pmu__scan_file(%struct.perf_pmu* %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i64 256, i64* %8, align 8
  br label %29

17:                                               ; preds = %13
  %18 = load %struct.perf_pmu*, %struct.perf_pmu** %3, align 8
  %19 = load %struct.evlist*, %struct.evlist** %4, align 8
  %20 = call i32 @intel_pt_read_config(%struct.perf_pmu* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.evlist* %19, i32* %5)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 11
  %27 = shl i32 1, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %24, %16
  %30 = load %struct.perf_pmu*, %struct.perf_pmu** %3, align 8
  %31 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @pr_debug2(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %32, i64 %33)
  %35 = load i64, i64* %8, align 8
  ret i64 %35
}

declare dso_local i32 @perf_pmu__scan_file(%struct.perf_pmu*, i8*, i8*, i32*) #1

declare dso_local i32 @intel_pt_read_config(%struct.perf_pmu*, i8*, %struct.evlist*, i32*) #1

declare dso_local i32 @pr_debug2(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
