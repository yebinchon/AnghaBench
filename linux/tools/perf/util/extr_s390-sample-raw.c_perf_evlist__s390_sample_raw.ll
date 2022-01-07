; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-sample-raw.c_perf_evlist__s390_sample_raw.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-sample-raw.c_perf_evlist__s390_sample_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }
%union.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.perf_sample = type { i32 }
%struct.evsel = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@PERF_RECORD_SAMPLE = common dso_local global i64 0, align 8
@PERF_EVENT_CPUM_CF_DIAG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Invalid counter set data encountered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_evlist__s390_sample_raw(%struct.evlist* %0, %union.perf_event* %1, %struct.perf_sample* %2) #0 {
  %4 = alloca %struct.evlist*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.evsel*, align 8
  store %struct.evlist* %0, %struct.evlist** %4, align 8
  store %union.perf_event* %1, %union.perf_event** %5, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %6, align 8
  %8 = load %union.perf_event*, %union.perf_event** %5, align 8
  %9 = bitcast %union.perf_event* %8 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PERF_RECORD_SAMPLE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %39

15:                                               ; preds = %3
  %16 = load %struct.evlist*, %struct.evlist** %4, align 8
  %17 = load %union.perf_event*, %union.perf_event** %5, align 8
  %18 = call %struct.evsel* @perf_evlist__event2evsel(%struct.evlist* %16, %union.perf_event* %17)
  store %struct.evsel* %18, %struct.evsel** %7, align 8
  %19 = load %struct.evsel*, %struct.evsel** %7, align 8
  %20 = icmp eq %struct.evsel* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = load %struct.evsel*, %struct.evsel** %7, align 8
  %23 = getelementptr inbounds %struct.evsel, %struct.evsel* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PERF_EVENT_CPUM_CF_DIAG, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21, %15
  br label %39

30:                                               ; preds = %21
  %31 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %32 = call i32 @s390_cpumcfdg_testctr(%struct.perf_sample* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %39

36:                                               ; preds = %30
  %37 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %38 = call i32 @s390_cpumcfdg_dump(%struct.perf_sample* %37)
  br label %39

39:                                               ; preds = %36, %34, %29, %14
  ret void
}

declare dso_local %struct.evsel* @perf_evlist__event2evsel(%struct.evlist*, %union.perf_event*) #1

declare dso_local i32 @s390_cpumcfdg_testctr(%struct.perf_sample*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @s390_cpumcfdg_dump(%struct.perf_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
