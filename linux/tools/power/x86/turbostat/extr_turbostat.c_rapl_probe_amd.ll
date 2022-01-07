; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_rapl_probe_amd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_rapl_probe_amd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_extended_level = common dso_local global i32 0, align 4
@RAPL_AMD_F17H = common dso_local global i32 0, align 4
@RAPL_PER_CORE_ENERGY = common dso_local global i32 0, align 4
@do_rapl = common dso_local global i32 0, align 4
@rapl_joules = common dso_local global i32 0, align 4
@BIC_Pkg_J = common dso_local global i32 0, align 4
@BIC_Cor_J = common dso_local global i32 0, align 4
@BIC_PkgWatt = common dso_local global i32 0, align 4
@BIC_CorWatt = common dso_local global i32 0, align 4
@base_cpu = common dso_local global i32 0, align 4
@MSR_RAPL_PWR_UNIT = common dso_local global i32 0, align 4
@rapl_time_units = common dso_local global i8* null, align 8
@rapl_energy_units = common dso_local global i32 0, align 4
@rapl_power_units = common dso_local global i8* null, align 8
@rapl_joule_counter_range = common dso_local global double 0.000000e+00, align 8
@quiet = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"RAPL: %.0f sec. Joule Counter Range, at %.0f Watts\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rapl_probe_amd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @max_extended_level, align 4
  %13 = icmp uge i32 %12, -2147483641
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @__cpuid(i32 -2147483641, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, 16384
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %14, %2
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %82

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  switch i32 %27, label %45 [
    i32 23, label %28
    i32 24, label %28
  ]

28:                                               ; preds = %26, %26
  %29 = load i32, i32* @RAPL_AMD_F17H, align 4
  %30 = load i32, i32* @RAPL_PER_CORE_ENERGY, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* @do_rapl, align 4
  %32 = load i32, i32* @rapl_joules, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* @BIC_Pkg_J, align 4
  %36 = call i32 @BIC_PRESENT(i32 %35)
  %37 = load i32, i32* @BIC_Cor_J, align 4
  %38 = call i32 @BIC_PRESENT(i32 %37)
  br label %44

39:                                               ; preds = %28
  %40 = load i32, i32* @BIC_PkgWatt, align 4
  %41 = call i32 @BIC_PRESENT(i32 %40)
  %42 = load i32, i32* @BIC_CorWatt, align 4
  %43 = call i32 @BIC_PRESENT(i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  br label %46

45:                                               ; preds = %26
  br label %82

46:                                               ; preds = %44
  %47 = load i32, i32* @base_cpu, align 4
  %48 = load i32, i32* @MSR_RAPL_PWR_UNIT, align 4
  %49 = call i64 @get_msr(i32 %47, i32 %48, i64* %5)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %82

52:                                               ; preds = %46
  %53 = load i64, i64* %5, align 8
  %54 = lshr i64 %53, 16
  %55 = and i64 %54, 15
  %56 = sub i64 0, %55
  %57 = call i8* @ldexp(double 1.000000e+00, i64 %56)
  store i8* %57, i8** @rapl_time_units, align 8
  %58 = load i64, i64* %5, align 8
  %59 = lshr i64 %58, 8
  %60 = and i64 %59, 31
  %61 = sub i64 0, %60
  %62 = call i8* @ldexp(double 1.000000e+00, i64 %61)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* @rapl_energy_units, align 4
  %64 = load i64, i64* %5, align 8
  %65 = and i64 %64, 15
  %66 = sub i64 0, %65
  %67 = call i8* @ldexp(double 1.000000e+00, i64 %66)
  store i8* %67, i8** @rapl_power_units, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call double @get_tdp_amd(i32 %68)
  store double %69, double* %11, align 8
  %70 = load i32, i32* @rapl_energy_units, align 4
  %71 = mul i32 -1, %70
  %72 = uitofp i32 %71 to double
  %73 = load double, double* %11, align 8
  %74 = fdiv double %72, %73
  store double %74, double* @rapl_joule_counter_range, align 8
  %75 = load i32, i32* @quiet, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %52
  %78 = load i32, i32* @outf, align 4
  %79 = load double, double* @rapl_joule_counter_range, align 8
  %80 = load double, double* %11, align 8
  %81 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), double %79, double %80)
  br label %82

82:                                               ; preds = %25, %45, %51, %77, %52
  ret void
}

declare dso_local i32 @__cpuid(i32, i32, i32, i32, i32) #1

declare dso_local i32 @BIC_PRESENT(i32) #1

declare dso_local i64 @get_msr(i32, i32, i64*) #1

declare dso_local i8* @ldexp(double, i64) #1

declare dso_local double @get_tdp_amd(i32) #1

declare dso_local i32 @fprintf(i32, i8*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
