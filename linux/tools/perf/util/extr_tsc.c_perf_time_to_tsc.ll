; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_tsc.c_perf_time_to_tsc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_tsc.c_perf_time_to_tsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tsc_conversion = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_time_to_tsc(i32 %0, %struct.perf_tsc_conversion* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_tsc_conversion*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.perf_tsc_conversion* %1, %struct.perf_tsc_conversion** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.perf_tsc_conversion*, %struct.perf_tsc_conversion** %4, align 8
  %10 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %8, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.perf_tsc_conversion*, %struct.perf_tsc_conversion** %4, align 8
  %15 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.perf_tsc_conversion*, %struct.perf_tsc_conversion** %4, align 8
  %20 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = srem i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.perf_tsc_conversion*, %struct.perf_tsc_conversion** %4, align 8
  %25 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %23, %26
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.perf_tsc_conversion*, %struct.perf_tsc_conversion** %4, align 8
  %30 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %28, %31
  %33 = load %struct.perf_tsc_conversion*, %struct.perf_tsc_conversion** %4, align 8
  %34 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %32, %35
  %37 = add nsw i32 %27, %36
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
