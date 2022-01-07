; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_early_cpuid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_early_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base_cpu = common dso_local global i32 0, align 4
@MSR_TURBO_RATIO_LIMIT = common dso_local global i32 0, align 4
@bdx_highest_ratio = common dso_local global i64 0, align 8
@turbo_is_enabled = common dso_local global i32 0, align 4
@has_hwp = common dso_local global i32 0, align 4
@has_epb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @early_cpuid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = call i32 @get_cpuid_or_exit(i32 1, i32* %5, i32* %2, i32* %3, i32* %4)
  %10 = load i32, i32* %5, align 4
  %11 = lshr i32 %10, 8
  %12 = and i32 %11, 15
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = lshr i32 %13, 4
  %15 = and i32 %14, 15
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 6
  br i1 %17, label %21, label %18

18:                                               ; preds = %0
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 15
  br i1 %20, label %21, label %28

21:                                               ; preds = %18, %0
  %22 = load i32, i32* %5, align 4
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 15
  %25 = shl i32 %24, 4
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 79
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* @base_cpu, align 4
  %33 = load i32, i32* @MSR_TURBO_RATIO_LIMIT, align 4
  %34 = call i32 @get_msr(i32 %32, i32 %33, i64* %8)
  %35 = load i64, i64* %8, align 8
  %36 = and i64 %35, 255
  store i64 %36, i64* @bdx_highest_ratio, align 8
  br label %37

37:                                               ; preds = %31, %28
  %38 = call i32 @get_cpuid_or_exit(i32 6, i32* %1, i32* %2, i32* %3, i32* %4)
  %39 = load i32, i32* %1, align 4
  %40 = lshr i32 %39, 1
  %41 = and i32 %40, 1
  store i32 %41, i32* @turbo_is_enabled, align 4
  %42 = load i32, i32* %1, align 4
  %43 = lshr i32 %42, 7
  %44 = and i32 %43, 1
  store i32 %44, i32* @has_hwp, align 4
  %45 = load i32, i32* %3, align 4
  %46 = lshr i32 %45, 3
  %47 = and i32 %46, 1
  store i32 %47, i32* @has_epb, align 4
  ret void
}

declare dso_local i32 @get_cpuid_or_exit(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @get_msr(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
