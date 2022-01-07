; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__object_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__object_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 (%struct.evsel.1*)*, void (%struct.evsel.2*)* }
%struct.evsel.1 = type opaque
%struct.evsel.2 = type opaque
%struct.evsel = type opaque
%struct.evsel.0 = type opaque

@perf_evsel__object = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evsel__object_config(i64 %0, i32 (%struct.evsel*)* %1, void (%struct.evsel.0*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32 (%struct.evsel*)*, align 8
  %7 = alloca void (%struct.evsel.0*)*, align 8
  store i64 %0, i64* %5, align 8
  store i32 (%struct.evsel*)* %1, i32 (%struct.evsel*)** %6, align 8
  store void (%struct.evsel.0*)* %2, void (%struct.evsel.0*)** %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %20

11:                                               ; preds = %3
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_evsel__object, i32 0, i32 0), align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %33

18:                                               ; preds = %11
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_evsel__object, i32 0, i32 0), align 8
  br label %20

20:                                               ; preds = %18, %10
  %21 = load i32 (%struct.evsel*)*, i32 (%struct.evsel*)** %6, align 8
  %22 = icmp ne i32 (%struct.evsel*)* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32 (%struct.evsel*)*, i32 (%struct.evsel*)** %6, align 8
  %25 = bitcast i32 (%struct.evsel*)* %24 to i32 (%struct.evsel.1*)*
  store i32 (%struct.evsel.1*)* %25, i32 (%struct.evsel.1*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_evsel__object, i32 0, i32 1), align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load void (%struct.evsel.0*)*, void (%struct.evsel.0*)** %7, align 8
  %28 = icmp ne void (%struct.evsel.0*)* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load void (%struct.evsel.0*)*, void (%struct.evsel.0*)** %7, align 8
  %31 = bitcast void (%struct.evsel.0*)* %30 to void (%struct.evsel.2*)*
  store void (%struct.evsel.2*)* %31, void (%struct.evsel.2*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_evsel__object, i32 0, i32 2), align 8
  br label %32

32:                                               ; preds = %29, %26
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %15
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
