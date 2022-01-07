; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_get_tdp_intel.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_get_tdp_intel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_rapl = common dso_local global i32 0, align 4
@RAPL_PKG_POWER_INFO = common dso_local global i32 0, align 4
@base_cpu = common dso_local global i32 0, align 4
@MSR_PKG_POWER_INFO = common dso_local global i32 0, align 4
@RAPL_POWER_GRANULARITY = common dso_local global i64 0, align 8
@rapl_power_units = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @get_tdp_intel(i32 %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @do_rapl, align 4
  %6 = load i32, i32* @RAPL_PKG_POWER_INFO, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load i32, i32* @base_cpu, align 4
  %11 = load i32, i32* @MSR_PKG_POWER_INFO, align 4
  %12 = call i32 @get_msr(i32 %10, i32 %11, i64* %4)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  %15 = load i64, i64* %4, align 8
  %16 = lshr i64 %15, 0
  %17 = load i64, i64* @RAPL_POWER_GRANULARITY, align 8
  %18 = and i64 %16, %17
  %19 = load i64, i64* @rapl_power_units, align 8
  %20 = mul i64 %18, %19
  %21 = uitofp i64 %20 to double
  store double %21, double* %2, align 8
  br label %27

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, i32* %3, align 4
  switch i32 %24, label %26 [
    i32 129, label %25
    i32 128, label %25
  ]

25:                                               ; preds = %23, %23
  store double 3.000000e+01, double* %2, align 8
  br label %27

26:                                               ; preds = %23
  store double 1.350000e+02, double* %2, align 8
  br label %27

27:                                               ; preds = %26, %25, %14
  %28 = load double, double* %2, align 8
  ret double %28
}

declare dso_local i32 @get_msr(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
