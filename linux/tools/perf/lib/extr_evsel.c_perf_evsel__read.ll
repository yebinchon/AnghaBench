; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/lib/extr_evsel.c_perf_evsel__read.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/lib/extr_evsel.c_perf_evsel__read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32 }
%struct.perf_counts_values = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evsel__read(%struct.perf_evsel* %0, i32 %1, i32 %2, %struct.perf_counts_values* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_evsel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.perf_counts_values*, align 8
  %10 = alloca i64, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.perf_counts_values* %3, %struct.perf_counts_values** %9, align 8
  %11 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %12 = call i64 @perf_evsel__read_size(%struct.perf_evsel* %11)
  store i64 %12, i64* %10, align 8
  %13 = load %struct.perf_counts_values*, %struct.perf_counts_values** %9, align 8
  %14 = call i32 @memset(%struct.perf_counts_values* %13, i32 0, i32 4)
  %15 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @FD(%struct.perf_evsel* %15, i32 %16, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %38

23:                                               ; preds = %4
  %24 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @FD(%struct.perf_evsel* %24, i32 %25, i32 %26)
  %28 = load %struct.perf_counts_values*, %struct.perf_counts_values** %9, align 8
  %29 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @readn(i64 %27, i32 %30, i64 %31)
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @errno, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %34, %20
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i64 @perf_evsel__read_size(%struct.perf_evsel*) #1

declare dso_local i32 @memset(%struct.perf_counts_values*, i32, i32) #1

declare dso_local i64 @FD(%struct.perf_evsel*, i32, i32) #1

declare dso_local i64 @readn(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
