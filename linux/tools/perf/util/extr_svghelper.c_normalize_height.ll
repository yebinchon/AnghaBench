; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_normalize_height.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_normalize_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @normalize_height to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @normalize_height(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = fcmp olt double %4, 2.500000e-01
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store double 2.500000e-01, double* %2, align 8
  br label %16

7:                                                ; preds = %1
  %8 = load double, double* %3, align 8
  %9 = fcmp olt double %8, 5.000000e-01
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store double 5.000000e-01, double* %2, align 8
  br label %16

11:                                               ; preds = %7
  %12 = load double, double* %3, align 8
  %13 = fcmp olt double %12, 7.500000e-01
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store double 7.500000e-01, double* %2, align 8
  br label %16

15:                                               ; preds = %11
  store double 1.000000e-01, double* %2, align 8
  br label %16

16:                                               ; preds = %15, %14, %10, %6
  %17 = load double, double* %2, align 8
  ret double %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
