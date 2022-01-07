; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat.c_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat.c_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { double, double, double, double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_stats(%struct.stats* %0, double %1) #0 {
  %3 = alloca %struct.stats*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.stats* %0, %struct.stats** %3, align 8
  store double %1, double* %4, align 8
  %6 = load %struct.stats*, %struct.stats** %3, align 8
  %7 = getelementptr inbounds %struct.stats, %struct.stats* %6, i32 0, i32 0
  %8 = load double, double* %7, align 8
  %9 = fadd double %8, 1.000000e+00
  store double %9, double* %7, align 8
  %10 = load double, double* %4, align 8
  %11 = load %struct.stats*, %struct.stats** %3, align 8
  %12 = getelementptr inbounds %struct.stats, %struct.stats* %11, i32 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = fsub double %10, %13
  store double %14, double* %5, align 8
  %15 = load double, double* %5, align 8
  %16 = load %struct.stats*, %struct.stats** %3, align 8
  %17 = getelementptr inbounds %struct.stats, %struct.stats* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = fdiv double %15, %18
  %20 = load %struct.stats*, %struct.stats** %3, align 8
  %21 = getelementptr inbounds %struct.stats, %struct.stats* %20, i32 0, i32 1
  %22 = load double, double* %21, align 8
  %23 = fadd double %22, %19
  store double %23, double* %21, align 8
  %24 = load double, double* %5, align 8
  %25 = load double, double* %4, align 8
  %26 = load %struct.stats*, %struct.stats** %3, align 8
  %27 = getelementptr inbounds %struct.stats, %struct.stats* %26, i32 0, i32 1
  %28 = load double, double* %27, align 8
  %29 = fsub double %25, %28
  %30 = fmul double %24, %29
  %31 = load %struct.stats*, %struct.stats** %3, align 8
  %32 = getelementptr inbounds %struct.stats, %struct.stats* %31, i32 0, i32 2
  %33 = load double, double* %32, align 8
  %34 = fadd double %33, %30
  store double %34, double* %32, align 8
  %35 = load double, double* %4, align 8
  %36 = load %struct.stats*, %struct.stats** %3, align 8
  %37 = getelementptr inbounds %struct.stats, %struct.stats* %36, i32 0, i32 3
  %38 = load double, double* %37, align 8
  %39 = fcmp ogt double %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %2
  %41 = load double, double* %4, align 8
  %42 = load %struct.stats*, %struct.stats** %3, align 8
  %43 = getelementptr inbounds %struct.stats, %struct.stats* %42, i32 0, i32 3
  store double %41, double* %43, align 8
  br label %44

44:                                               ; preds = %40, %2
  %45 = load double, double* %4, align 8
  %46 = load %struct.stats*, %struct.stats** %3, align 8
  %47 = getelementptr inbounds %struct.stats, %struct.stats* %46, i32 0, i32 4
  %48 = load double, double* %47, align 8
  %49 = fcmp olt double %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load double, double* %4, align 8
  %52 = load %struct.stats*, %struct.stats** %3, align 8
  %53 = getelementptr inbounds %struct.stats, %struct.stats* %52, i32 0, i32 4
  store double %51, double* %53, align 8
  br label %54

54:                                               ; preds = %50, %44
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
