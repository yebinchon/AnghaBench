; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c___hist_entry__cmp_compute.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c___hist_entry__cmp_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { double, double, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hist_entry*, %struct.hist_entry*, i32)* @__hist_entry__cmp_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__hist_entry__cmp_compute(%struct.hist_entry* %0, %struct.hist_entry* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca %struct.hist_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %5, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %67 [
    i32 131, label %17
    i32 130, label %29
    i32 129, label %43
    i32 128, label %55
  ]

17:                                               ; preds = %3
  %18 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %19 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load double, double* %20, align 8
  store double %21, double* %8, align 8
  %22 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %23 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  store double %25, double* %9, align 8
  %26 = load double, double* %8, align 8
  %27 = load double, double* %9, align 8
  %28 = call i64 @cmp_doubles(double %26, double %27)
  store i64 %28, i64* %4, align 8
  br label %70

29:                                               ; preds = %3
  %30 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %31 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = call double @llvm.fabs.f64(double %33)
  store double %34, double* %10, align 8
  %35 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %36 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = call double @llvm.fabs.f64(double %38)
  store double %39, double* %11, align 8
  %40 = load double, double* %10, align 8
  %41 = load double, double* %11, align 8
  %42 = call i64 @cmp_doubles(double %40, double %41)
  store i64 %42, i64* %4, align 8
  br label %70

43:                                               ; preds = %3
  %44 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %45 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load double, double* %46, align 8
  store double %47, double* %12, align 8
  %48 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %49 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load double, double* %50, align 8
  store double %51, double* %13, align 8
  %52 = load double, double* %12, align 8
  %53 = load double, double* %13, align 8
  %54 = call i64 @cmp_doubles(double %52, double %53)
  store i64 %54, i64* %4, align 8
  br label %70

55:                                               ; preds = %3
  %56 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %57 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %14, align 8
  %60 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %61 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %15, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %14, align 8
  %66 = sub nsw i64 %64, %65
  store i64 %66, i64* %4, align 8
  br label %70

67:                                               ; preds = %3
  %68 = call i32 @BUG_ON(i32 1)
  br label %69

69:                                               ; preds = %67
  store i64 0, i64* %4, align 8
  br label %70

70:                                               ; preds = %69, %55, %43, %29, %17
  %71 = load i64, i64* %4, align 8
  ret i64 %71
}

declare dso_local i64 @cmp_doubles(double, double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
