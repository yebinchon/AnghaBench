; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-shadow.c_sanitize_val.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-shadow.c_sanitize_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @sanitize_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @sanitize_val(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = fcmp olt double %4, 0.000000e+00
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load double, double* %3, align 8
  %8 = fcmp oge double %7, -2.000000e-02
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store double 0.000000e+00, double* %2, align 8
  br label %12

10:                                               ; preds = %6, %1
  %11 = load double, double* %3, align 8
  store double %11, double* %2, align 8
  br label %12

12:                                               ; preds = %10, %9
  %13 = load double, double* %2, align 8
  ret double %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
