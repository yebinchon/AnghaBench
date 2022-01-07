; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_read_single_counter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_read_single_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i64, i32 }
%struct.timespec = type { i64, i8* }
%struct.perf_counts_values = type { i8*, i8*, i8* }

@PERF_TOOL_DURATION_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, i32, i32, %struct.timespec*)* @read_single_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_single_counter(%struct.evsel* %0, i32 %1, i32 %2, %struct.timespec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.perf_counts_values*, align 8
  store %struct.evsel* %0, %struct.evsel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.timespec* %3, %struct.timespec** %9, align 8
  %12 = load %struct.evsel*, %struct.evsel** %6, align 8
  %13 = getelementptr inbounds %struct.evsel, %struct.evsel* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PERF_TOOL_DURATION_TIME, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %4
  %18 = load %struct.timespec*, %struct.timespec** %9, align 8
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.timespec*, %struct.timespec** %9, align 8
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = mul i64 %23, 1000000000
  %25 = getelementptr i8, i8* %20, i64 %24
  store i8* %25, i8** %10, align 8
  %26 = load %struct.evsel*, %struct.evsel** %6, align 8
  %27 = getelementptr inbounds %struct.evsel, %struct.evsel* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.perf_counts_values* @perf_counts(i32 %28, i32 %29, i32 %30)
  store %struct.perf_counts_values* %31, %struct.perf_counts_values** %11, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.perf_counts_values*, %struct.perf_counts_values** %11, align 8
  %34 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.perf_counts_values*, %struct.perf_counts_values** %11, align 8
  %36 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %35, i32 0, i32 2
  store i8* %32, i8** %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.perf_counts_values*, %struct.perf_counts_values** %11, align 8
  %39 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  store i32 0, i32* %5, align 4
  br label %45

40:                                               ; preds = %4
  %41 = load %struct.evsel*, %struct.evsel** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @perf_evsel__read_counter(%struct.evsel* %41, i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %17
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.perf_counts_values* @perf_counts(i32, i32, i32) #1

declare dso_local i32 @perf_evsel__read_counter(%struct.evsel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
