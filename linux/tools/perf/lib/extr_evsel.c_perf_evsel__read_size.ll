; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/lib/extr_evsel.c_perf_evsel__read_size.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/lib/extr_evsel.c_perf_evsel__read_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PERF_FORMAT_TOTAL_TIME_ENABLED = common dso_local global i32 0, align 4
@PERF_FORMAT_TOTAL_TIME_RUNNING = common dso_local global i32 0, align 4
@PERF_FORMAT_ID = common dso_local global i32 0, align 4
@PERF_FORMAT_GROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evsel__read_size(%struct.perf_evsel* %0) #0 {
  %2 = alloca %struct.perf_evsel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.perf_evsel* %0, %struct.perf_evsel** %2, align 8
  %7 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %8 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  store i32 4, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_ENABLED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_RUNNING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @PERF_FORMAT_ID, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @PERF_FORMAT_GROUP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %47 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %45, %40
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
