; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_set_temperature_target.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_set_temperature_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_data = type { i32, i32 }
%struct.core_data = type { i32 }
%struct.pkg_data = type { i32 }

@do_dts = common dso_local global i64 0, align 8
@do_ptm = common dso_local global i64 0, align 8
@CPU_IS_FIRST_THREAD_IN_CORE = common dso_local global i32 0, align 4
@CPU_IS_FIRST_CORE_IN_PACKAGE = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not migrate to CPU %d\0A\00", align 1
@tcc_activation_temp_override = common dso_local global i64 0, align 8
@tcc_activation_temp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"cpu%d: Using cmdline TCC Target (%d C)\0A\00", align 1
@do_nhm_platform_info = common dso_local global i32 0, align 4
@base_cpu = common dso_local global i32 0, align 4
@MSR_IA32_TEMPERATURE_TARGET = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"cpu%d: MSR_IA32_TEMPERATURE_TARGET: 0x%08llx (%d C)\0A\00", align 1
@TJMAX_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"cpu%d: Guessing tjMax %d C, Please use -T to specify\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_temperature_target(%struct.thread_data* %0, %struct.core_data* %1, %struct.pkg_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_data*, align 8
  %6 = alloca %struct.core_data*, align 8
  %7 = alloca %struct.pkg_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread_data* %0, %struct.thread_data** %5, align 8
  store %struct.core_data* %1, %struct.core_data** %6, align 8
  store %struct.pkg_data* %2, %struct.pkg_data** %7, align 8
  %11 = load i64, i64* @do_dts, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* @do_ptm, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %88

17:                                               ; preds = %13, %3
  %18 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %19 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CPU_IS_FIRST_THREAD_IN_CORE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %26 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CPU_IS_FIRST_CORE_IN_PACKAGE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24, %17
  store i32 0, i32* %4, align 4
  br label %88

32:                                               ; preds = %24
  %33 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %34 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @cpu_migrate(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @outf, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 -1, i32* %4, align 4
  br label %88

43:                                               ; preds = %32
  %44 = load i64, i64* @tcc_activation_temp_override, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i64, i64* @tcc_activation_temp_override, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* @tcc_activation_temp, align 4
  %49 = load i32, i32* @outf, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @tcc_activation_temp, align 4
  %52 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  store i32 0, i32* %4, align 4
  br label %88

53:                                               ; preds = %43
  %54 = load i32, i32* @do_nhm_platform_info, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  br label %82

57:                                               ; preds = %53
  %58 = load i32, i32* @base_cpu, align 4
  %59 = load i32, i32* @MSR_IA32_TEMPERATURE_TARGET, align 4
  %60 = call i64 @get_msr(i32 %58, i32 %59, i64* %8)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %82

63:                                               ; preds = %57
  %64 = load i64, i64* %8, align 8
  %65 = lshr i64 %64, 16
  %66 = and i64 %65, 255
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* @quiet, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @outf, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i64, i64* %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %72, i64 %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %63
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  br label %82

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* @tcc_activation_temp, align 4
  store i32 0, i32* %4, align 4
  br label %88

82:                                               ; preds = %79, %62, %56
  %83 = load i32, i32* @TJMAX_DEFAULT, align 4
  store i32 %83, i32* @tcc_activation_temp, align 4
  %84 = load i32, i32* @outf, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @tcc_activation_temp, align 4
  %87 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %85, i32 %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %82, %80, %46, %39, %31, %16
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i64 @cpu_migrate(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i64 @get_msr(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
