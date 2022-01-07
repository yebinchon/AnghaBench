; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_update_cpu_msrs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_update_cpu_msrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@update_epb = common dso_local global i64 0, align 8
@MSR_IA32_ENERGY_PERF_BIAS = common dso_local global i32 0, align 4
@new_epb = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"cpu%d: ENERGY_PERF_BIAS old: %d new: %d\0A\00", align 1
@update_turbo = common dso_local global i64 0, align 8
@MSR_IA32_MISC_ENABLE = common dso_local global i32 0, align 4
@MSR_IA32_MISC_ENABLE_TURBO_DISABLE = common dso_local global i64 0, align 8
@turbo_update_value = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cpu%d: turbo ENABLE\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"cpu%d: turbo DISABLE\0A\00", align 1
@has_hwp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_cpu_msrs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i64, i64* @update_epb, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MSR_IA32_ENERGY_PERF_BIAS, align 4
  %11 = call i32 @get_msr(i32 %9, i32 %10, i64* %4)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @MSR_IA32_ENERGY_PERF_BIAS, align 4
  %14 = load i64, i64* @new_epb, align 8
  %15 = call i32 @put_msr(i32 %12, i32 %13, i64 %14)
  %16 = load i64, i64* @verbose, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = load i64, i64* %4, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i64, i64* @new_epb, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %18, %8
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i64, i64* @update_turbo, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @MSR_IA32_MISC_ENABLE, align 4
  %32 = call i32 @get_msr(i32 %30, i32 %31, i64* %4)
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @MSR_IA32_MISC_ENABLE_TURBO_DISABLE, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @turbo_update_value, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %59

40:                                               ; preds = %29
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load i64, i64* @MSR_IA32_MISC_ENABLE_TURBO_DISABLE, align 8
  %45 = xor i64 %44, -1
  %46 = load i64, i64* %4, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %4, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @MSR_IA32_MISC_ENABLE, align 4
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @put_msr(i32 %48, i32 %49, i64 %50)
  %52 = load i64, i64* @verbose, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* %3, align 4
  %56 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %43
  br label %58

58:                                               ; preds = %57, %40
  br label %73

59:                                               ; preds = %29
  %60 = load i64, i64* @MSR_IA32_MISC_ENABLE_TURBO_DISABLE, align 8
  %61 = load i64, i64* %4, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %4, align 8
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @MSR_IA32_MISC_ENABLE, align 4
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @put_msr(i32 %63, i32 %64, i64 %65)
  %67 = load i64, i64* @verbose, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* %3, align 4
  %71 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %59
  br label %73

73:                                               ; preds = %72, %58
  br label %74

74:                                               ; preds = %73, %26
  %75 = load i32, i32* @has_hwp, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %85

78:                                               ; preds = %74
  %79 = call i32 (...) @hwp_update_enabled()
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %85

82:                                               ; preds = %78
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @update_hwp_request(i32 %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %81, %77
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @get_msr(i32, i32, i64*) #1

declare dso_local i32 @put_msr(i32, i32, i64) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @hwp_update_enabled(...) #1

declare dso_local i32 @update_hwp_request(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
