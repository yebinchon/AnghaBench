; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-shadow.c_td_bad_spec.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-shadow.c_td_bad_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.runtime_stat = type { i32 }

@STAT_TOPDOWN_SLOTS_ISSUED = common dso_local global i32 0, align 4
@STAT_TOPDOWN_SLOTS_RETIRED = common dso_local global i32 0, align 4
@STAT_TOPDOWN_RECOVERY_BUBBLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, i32, %struct.runtime_stat*)* @td_bad_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @td_bad_spec(i32 %0, i32 %1, %struct.runtime_stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.runtime_stat*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.runtime_stat* %2, %struct.runtime_stat** %6, align 8
  store double 0.000000e+00, double* %7, align 8
  %10 = load %struct.runtime_stat*, %struct.runtime_stat** %6, align 8
  %11 = load i32, i32* @STAT_TOPDOWN_SLOTS_ISSUED, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call double @runtime_stat_avg(%struct.runtime_stat* %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.runtime_stat*, %struct.runtime_stat** %6, align 8
  %16 = load i32, i32* @STAT_TOPDOWN_SLOTS_RETIRED, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call double @runtime_stat_avg(%struct.runtime_stat* %15, i32 %16, i32 %17, i32 %18)
  %20 = fsub double %14, %19
  %21 = load %struct.runtime_stat*, %struct.runtime_stat** %6, align 8
  %22 = load i32, i32* @STAT_TOPDOWN_RECOVERY_BUBBLES, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call double @runtime_stat_avg(%struct.runtime_stat* %21, i32 %22, i32 %23, i32 %24)
  %26 = fadd double %20, %25
  store double %26, double* %9, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.runtime_stat*, %struct.runtime_stat** %6, align 8
  %30 = call double @td_total_slots(i32 %27, i32 %28, %struct.runtime_stat* %29)
  store double %30, double* %8, align 8
  %31 = load double, double* %8, align 8
  %32 = fcmp une double %31, 0.000000e+00
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load double, double* %9, align 8
  %35 = load double, double* %8, align 8
  %36 = fdiv double %34, %35
  store double %36, double* %7, align 8
  br label %37

37:                                               ; preds = %33, %3
  %38 = load double, double* %7, align 8
  %39 = call double @sanitize_val(double %38)
  ret double %39
}

declare dso_local double @runtime_stat_avg(%struct.runtime_stat*, i32, i32, i32) #1

declare dso_local double @td_total_slots(i32, i32, %struct.runtime_stat*) #1

declare dso_local double @sanitize_val(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
