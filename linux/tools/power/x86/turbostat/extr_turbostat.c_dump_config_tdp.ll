; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_config_tdp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_config_tdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base_cpu = common dso_local global i32 0, align 4
@MSR_CONFIG_TDP_NOMINAL = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cpu%d: MSR_CONFIG_TDP_NOMINAL: 0x%08llx\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c" (base_ratio=%d)\0A\00", align 1
@MSR_CONFIG_TDP_LEVEL_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"cpu%d: MSR_CONFIG_TDP_LEVEL_1: 0x%08llx (\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"PKG_MIN_PWR_LVL1=%d \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"PKG_MAX_PWR_LVL1=%d \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"LVL1_RATIO=%d \00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"PKG_TDP_LVL1=%d\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@MSR_CONFIG_TDP_LEVEL_2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"cpu%d: MSR_CONFIG_TDP_LEVEL_2: 0x%08llx (\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"PKG_MIN_PWR_LVL2=%d \00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"PKG_MAX_PWR_LVL2=%d \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"LVL2_RATIO=%d \00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"PKG_TDP_LVL2=%d\00", align 1
@MSR_CONFIG_TDP_CONTROL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [42 x i8] c"cpu%d: MSR_CONFIG_TDP_CONTROL: 0x%08llx (\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"TDP_LEVEL=%d \00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c" lock=%d\00", align 1
@MSR_TURBO_ACTIVATION_RATIO = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [46 x i8] c"cpu%d: MSR_TURBO_ACTIVATION_RATIO: 0x%08llx (\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"MAX_NON_TURBO_RATIO=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_config_tdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_config_tdp() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @base_cpu, align 4
  %3 = load i32, i32* @MSR_CONFIG_TDP_NOMINAL, align 4
  %4 = call i32 @get_msr(i32 %2, i32 %3, i64* %1)
  %5 = load i32, i32* @outf, align 4
  %6 = load i32, i32* @base_cpu, align 4
  %7 = load i64, i64* %1, align 8
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %6, i64 %7)
  %9 = load i32, i32* @outf, align 4
  %10 = load i64, i64* %1, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 255
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @base_cpu, align 4
  %15 = load i32, i32* @MSR_CONFIG_TDP_LEVEL_1, align 4
  %16 = call i32 @get_msr(i32 %14, i32 %15, i64* %1)
  %17 = load i32, i32* @outf, align 4
  %18 = load i32, i32* @base_cpu, align 4
  %19 = load i64, i64* %1, align 8
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %18, i64 %19)
  %21 = load i64, i64* %1, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %0
  %24 = load i32, i32* @outf, align 4
  %25 = load i64, i64* %1, align 8
  %26 = lshr i64 %25, 48
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 32767
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @outf, align 4
  %31 = load i64, i64* %1, align 8
  %32 = lshr i64 %31, 32
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 32767
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @outf, align 4
  %37 = load i64, i64* %1, align 8
  %38 = lshr i64 %37, 16
  %39 = trunc i64 %38 to i32
  %40 = and i32 %39, 255
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @outf, align 4
  %43 = load i64, i64* %1, align 8
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 32767
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %23, %0
  %48 = load i32, i32* @outf, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %50 = load i32, i32* @base_cpu, align 4
  %51 = load i32, i32* @MSR_CONFIG_TDP_LEVEL_2, align 4
  %52 = call i32 @get_msr(i32 %50, i32 %51, i64* %1)
  %53 = load i32, i32* @outf, align 4
  %54 = load i32, i32* @base_cpu, align 4
  %55 = load i64, i64* %1, align 8
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %54, i64 %55)
  %57 = load i64, i64* %1, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %47
  %60 = load i32, i32* @outf, align 4
  %61 = load i64, i64* %1, align 8
  %62 = lshr i64 %61, 48
  %63 = trunc i64 %62 to i32
  %64 = and i32 %63, 32767
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @outf, align 4
  %67 = load i64, i64* %1, align 8
  %68 = lshr i64 %67, 32
  %69 = trunc i64 %68 to i32
  %70 = and i32 %69, 32767
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @outf, align 4
  %73 = load i64, i64* %1, align 8
  %74 = lshr i64 %73, 16
  %75 = trunc i64 %74 to i32
  %76 = and i32 %75, 255
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @outf, align 4
  %79 = load i64, i64* %1, align 8
  %80 = trunc i64 %79 to i32
  %81 = and i32 %80, 32767
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %59, %47
  %84 = load i32, i32* @outf, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %86 = load i32, i32* @base_cpu, align 4
  %87 = load i32, i32* @MSR_CONFIG_TDP_CONTROL, align 4
  %88 = call i32 @get_msr(i32 %86, i32 %87, i64* %1)
  %89 = load i32, i32* @outf, align 4
  %90 = load i32, i32* @base_cpu, align 4
  %91 = load i64, i64* %1, align 8
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 %90, i64 %91)
  %93 = load i64, i64* %1, align 8
  %94 = and i64 %93, 3
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %83
  %97 = load i32, i32* @outf, align 4
  %98 = load i64, i64* %1, align 8
  %99 = trunc i64 %98 to i32
  %100 = and i32 %99, 3
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %96, %83
  %103 = load i32, i32* @outf, align 4
  %104 = load i64, i64* %1, align 8
  %105 = lshr i64 %104, 31
  %106 = trunc i64 %105 to i32
  %107 = and i32 %106, 1
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @outf, align 4
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %111 = load i32, i32* @base_cpu, align 4
  %112 = load i32, i32* @MSR_TURBO_ACTIVATION_RATIO, align 4
  %113 = call i32 @get_msr(i32 %111, i32 %112, i64* %1)
  %114 = load i32, i32* @outf, align 4
  %115 = load i32, i32* @base_cpu, align 4
  %116 = load i64, i64* %1, align 8
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0), i32 %115, i64 %116)
  %118 = load i32, i32* @outf, align 4
  %119 = load i64, i64* %1, align 8
  %120 = trunc i64 %119 to i32
  %121 = and i32 %120, 255
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @outf, align 4
  %124 = load i64, i64* %1, align 8
  %125 = lshr i64 %124, 31
  %126 = trunc i64 %125 to i32
  %127 = and i32 %126, 1
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @outf, align 4
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @get_msr(i32, i32, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
