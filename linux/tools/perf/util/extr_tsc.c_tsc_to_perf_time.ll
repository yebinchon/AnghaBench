; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_tsc.c_tsc_to_perf_time.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_tsc.c_tsc_to_perf_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tsc_conversion = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsc_to_perf_time(i32 %0, %struct.perf_tsc_conversion* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_tsc_conversion*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.perf_tsc_conversion* %1, %struct.perf_tsc_conversion** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.perf_tsc_conversion*, %struct.perf_tsc_conversion** %4, align 8
  %9 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = ashr i32 %7, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.perf_tsc_conversion*, %struct.perf_tsc_conversion** %4, align 8
  %14 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 1, %15
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %12, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.perf_tsc_conversion*, %struct.perf_tsc_conversion** %4, align 8
  %20 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.perf_tsc_conversion*, %struct.perf_tsc_conversion** %4, align 8
  %24 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = add nsw i32 %21, %26
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.perf_tsc_conversion*, %struct.perf_tsc_conversion** %4, align 8
  %30 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = load %struct.perf_tsc_conversion*, %struct.perf_tsc_conversion** %4, align 8
  %34 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %32, %35
  %37 = add nsw i32 %27, %36
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
