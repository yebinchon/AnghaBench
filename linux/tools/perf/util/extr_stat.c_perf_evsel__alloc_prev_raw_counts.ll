; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat.c_perf_evsel__alloc_prev_raw_counts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat.c_perf_evsel__alloc_prev_raw_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.perf_counts* }
%struct.perf_counts = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, i32, i32)* @perf_evsel__alloc_prev_raw_counts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__alloc_prev_raw_counts(%struct.evsel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_counts*, align 8
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.perf_counts* @perf_counts__new(i32 %8, i32 %9)
  store %struct.perf_counts* %10, %struct.perf_counts** %7, align 8
  %11 = load %struct.perf_counts*, %struct.perf_counts** %7, align 8
  %12 = icmp ne %struct.perf_counts* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.perf_counts*, %struct.perf_counts** %7, align 8
  %15 = load %struct.evsel*, %struct.evsel** %4, align 8
  %16 = getelementptr inbounds %struct.evsel, %struct.evsel* %15, i32 0, i32 0
  store %struct.perf_counts* %14, %struct.perf_counts** %16, align 8
  br label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.perf_counts*, %struct.perf_counts** %7, align 8
  %19 = icmp ne %struct.perf_counts* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  br label %24

24:                                               ; preds = %21, %20
  %25 = phi i32 [ 0, %20 ], [ %23, %21 ]
  ret i32 %25
}

declare dso_local %struct.perf_counts* @perf_counts__new(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
