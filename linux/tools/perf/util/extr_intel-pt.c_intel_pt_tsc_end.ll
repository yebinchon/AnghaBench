; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_tsc_end.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_tsc_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.intel_pt*)* @intel_pt_tsc_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_pt_tsc_end(i64 %0, %struct.intel_pt* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.intel_pt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.intel_pt* %1, %struct.intel_pt** %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %9 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %8, i32 0, i32 0
  %10 = call i64 @perf_time_to_tsc(i64 %7, i32* %9)
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %2, %20
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %14 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %13, i32 0, i32 0
  %15 = call i64 @tsc_to_perf_time(i64 %12, i32* %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %23

20:                                               ; preds = %11
  %21 = load i64, i64* %5, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %5, align 8
  br label %11

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %28, %23
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %5, align 8
  %31 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %32 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %31, i32 0, i32 0
  %33 = call i64 @tsc_to_perf_time(i64 %30, i32* %32)
  store i64 %33, i64* %6, align 8
  br label %24

34:                                               ; preds = %24
  %35 = load i64, i64* %5, align 8
  ret i64 %35
}

declare dso_local i64 @perf_time_to_tsc(i64, i32*) #1

declare dso_local i64 @tsc_to_perf_time(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
