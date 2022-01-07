; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_counts_values__scale.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_counts_values__scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_counts_values = type { double, double, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_counts_values__scale(%struct.perf_counts_values* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.perf_counts_values*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_counts_values* %0, %struct.perf_counts_values** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %3
  %11 = load %struct.perf_counts_values*, %struct.perf_counts_values** %4, align 8
  %12 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = fcmp oeq double %13, 0.000000e+00
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  store i32 -1, i32* %7, align 4
  %16 = load %struct.perf_counts_values*, %struct.perf_counts_values** %4, align 8
  %17 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  br label %43

18:                                               ; preds = %10
  %19 = load %struct.perf_counts_values*, %struct.perf_counts_values** %4, align 8
  %20 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %19, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = load %struct.perf_counts_values*, %struct.perf_counts_values** %4, align 8
  %23 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %22, i32 0, i32 1
  %24 = load double, double* %23, align 8
  %25 = fcmp olt double %21, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  %27 = load %struct.perf_counts_values*, %struct.perf_counts_values** %4, align 8
  %28 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = sitofp i64 %29 to double
  %31 = load %struct.perf_counts_values*, %struct.perf_counts_values** %4, align 8
  %32 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %31, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %34 = fmul double %30, %33
  %35 = load %struct.perf_counts_values*, %struct.perf_counts_values** %4, align 8
  %36 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = fdiv double %34, %37
  %39 = fptosi double %38 to i64
  %40 = load %struct.perf_counts_values*, %struct.perf_counts_values** %4, align 8
  %41 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %26, %18
  br label %43

43:                                               ; preds = %42, %15
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i32*, i32** %6, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
