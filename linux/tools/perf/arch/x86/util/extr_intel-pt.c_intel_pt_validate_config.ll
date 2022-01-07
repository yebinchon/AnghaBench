; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_validate_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_validate_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_pmu = type { i32 }
%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"format/pt\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"pt=0 doesn't make sense, forcing pt=1\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"caps/cycle_thresholds\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"cyc_thresh\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"caps/psb_cyc\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"caps/mtc_periods\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"mtc_period\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"caps/mtc\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"caps/psb_periods\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"psb_period\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_pmu*, %struct.evsel*)* @intel_pt_validate_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_validate_config(%struct.perf_pmu* %0, %struct.evsel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_pmu*, align 8
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.perf_pmu* %0, %struct.perf_pmu** %4, align 8
  store %struct.evsel* %1, %struct.evsel** %5, align 8
  %8 = load %struct.evsel*, %struct.evsel** %5, align 8
  %9 = icmp ne %struct.evsel* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

11:                                               ; preds = %2
  %12 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %13 = call i32 @perf_pmu__scan_file(%struct.perf_pmu* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %7)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load %struct.evsel*, %struct.evsel** %5, align 8
  %17 = getelementptr inbounds %struct.evsel, %struct.evsel* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %15
  %24 = call i32 @pr_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.evsel*, %struct.evsel** %5, align 8
  %26 = getelementptr inbounds %struct.evsel, %struct.evsel* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %23, %15, %11
  %32 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %33 = load %struct.evsel*, %struct.evsel** %5, align 8
  %34 = getelementptr inbounds %struct.evsel, %struct.evsel* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @intel_pt_val_config_term(%struct.perf_pmu* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %63

43:                                               ; preds = %31
  %44 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %45 = load %struct.evsel*, %struct.evsel** %5, align 8
  %46 = getelementptr inbounds %struct.evsel, %struct.evsel* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @intel_pt_val_config_term(%struct.perf_pmu* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %63

55:                                               ; preds = %43
  %56 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %57 = load %struct.evsel*, %struct.evsel** %5, align 8
  %58 = getelementptr inbounds %struct.evsel, %struct.evsel* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @intel_pt_val_config_term(%struct.perf_pmu* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %55, %53, %41, %10
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @perf_pmu__scan_file(%struct.perf_pmu*, i8*, i8*, i8*) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @intel_pt_val_config_term(%struct.perf_pmu*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
