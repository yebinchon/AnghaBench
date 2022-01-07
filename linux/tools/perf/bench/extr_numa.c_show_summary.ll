; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_show_summary.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_show_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { double, i64 }

@.str = private unnamed_addr constant [26 x i8] c"\0D #  %5.1f%%  [%.1f mins]\00", align 1
@g = common dso_local global %struct.TYPE_4__* null, align 8
@NSEC_PER_SEC = common dso_local global double 0.000000e+00, align 8
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, i32, double*)* @show_summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_summary(double %0, i32 %1, double* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  store double %0, double* %4, align 8
  store i32 %1, i32* %5, align 4
  store double* %2, double** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = add nsw i32 %7, 1
  %9 = sitofp i32 %8 to double
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = fdiv double %9, %13
  %15 = fmul double %14, 1.000000e+02
  %16 = load double, double* %4, align 8
  %17 = load double, double* @NSEC_PER_SEC, align 8
  %18 = fdiv double %16, %17
  %19 = fdiv double %18, 6.000000e+01
  %20 = call i32 @tprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), double %15, double %19)
  %21 = load double, double* %4, align 8
  %22 = load double*, double** %6, align 8
  %23 = call i32 @calc_convergence(double %21, double* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @stdout, align 4
  %31 = call i32 @fflush(i32 %30)
  br label %32

32:                                               ; preds = %29, %3
  ret void
}

declare dso_local i32 @tprintf(i8*, double, double) #1

declare dso_local i32 @calc_convergence(double, double*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
