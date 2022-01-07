; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__set_count.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__set_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }
%struct.perf_counts_values = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evsel*, i32, i32, i8*, i8*, i8*)* @perf_evsel__set_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_evsel__set_count(%struct.evsel* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.perf_counts_values*, align 8
  store %struct.evsel* %0, %struct.evsel** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.evsel*, %struct.evsel** %7, align 8
  %15 = getelementptr inbounds %struct.evsel, %struct.evsel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.perf_counts_values* @perf_counts(i32 %16, i32 %17, i32 %18)
  store %struct.perf_counts_values* %19, %struct.perf_counts_values** %13, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %22 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %25 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load %struct.perf_counts_values*, %struct.perf_counts_values** %13, align 8
  %28 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.evsel*, %struct.evsel** %7, align 8
  %30 = getelementptr inbounds %struct.evsel, %struct.evsel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @perf_counts__set_loaded(i32 %31, i32 %32, i32 %33, i32 1)
  ret void
}

declare dso_local %struct.perf_counts_values* @perf_counts(i32, i32, i32) #1

declare dso_local i32 @perf_counts__set_loaded(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
