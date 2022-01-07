; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_print_thermal.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_print_thermal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_data = type { i32, i32 }
%struct.core_data = type { i32 }
%struct.pkg_data = type { i32 }

@do_dts = common dso_local global i64 0, align 8
@do_ptm = common dso_local global i64 0, align 8
@CPU_IS_FIRST_THREAD_IN_CORE = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not migrate to CPU %d\0A\00", align 1
@CPU_IS_FIRST_CORE_IN_PACKAGE = common dso_local global i32 0, align 4
@MSR_IA32_PACKAGE_THERM_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"cpu%d: MSR_IA32_PACKAGE_THERM_STATUS: 0x%08llx (%d C)\0A\00", align 1
@tcc_activation_temp = common dso_local global i32 0, align 4
@MSR_IA32_PACKAGE_THERM_INTERRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"cpu%d: MSR_IA32_PACKAGE_THERM_INTERRUPT: 0x%08llx (%d C, %d C)\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@MSR_IA32_THERM_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"cpu%d: MSR_IA32_THERM_STATUS: 0x%08llx (%d C +/- %d)\0A\00", align 1
@MSR_IA32_THERM_INTERRUPT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"cpu%d: MSR_IA32_THERM_INTERRUPT: 0x%08llx (%d C, %d C)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_thermal(%struct.thread_data* %0, %struct.core_data* %1, %struct.pkg_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_data*, align 8
  %6 = alloca %struct.core_data*, align 8
  %7 = alloca %struct.pkg_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.thread_data* %0, %struct.thread_data** %5, align 8
  store %struct.core_data* %1, %struct.core_data** %6, align 8
  store %struct.pkg_data* %2, %struct.pkg_data** %7, align 8
  %13 = load i64, i64* @do_dts, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* @do_ptm, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %144

19:                                               ; preds = %15, %3
  %20 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %21 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %24 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CPU_IS_FIRST_THREAD_IN_CORE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %144

30:                                               ; preds = %19
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @cpu_migrate(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @outf, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 -1, i32* %4, align 4
  br label %144

38:                                               ; preds = %30
  %39 = load i64, i64* @do_ptm, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %90

41:                                               ; preds = %38
  %42 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %43 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CPU_IS_FIRST_CORE_IN_PACKAGE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %90

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @MSR_IA32_PACKAGE_THERM_STATUS, align 4
  %51 = call i64 @get_msr(i32 %49, i32 %50, i64* %8)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %144

54:                                               ; preds = %48
  %55 = load i64, i64* %8, align 8
  %56 = lshr i64 %55, 16
  %57 = and i64 %56, 127
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @outf, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* @tcc_activation_temp, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sub i32 %62, %63
  %65 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %60, i64 %61, i32 %64)
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @MSR_IA32_PACKAGE_THERM_INTERRUPT, align 4
  %68 = call i64 @get_msr(i32 %66, i32 %67, i64* %8)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %144

71:                                               ; preds = %54
  %72 = load i64, i64* %8, align 8
  %73 = lshr i64 %72, 16
  %74 = and i64 %73, 127
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %9, align 4
  %76 = load i64, i64* %8, align 8
  %77 = lshr i64 %76, 8
  %78 = and i64 %77, 127
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* @outf, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i64, i64* %8, align 8
  %83 = load i32, i32* @tcc_activation_temp, align 4
  %84 = load i32, i32* %9, align 4
  %85 = sub i32 %83, %84
  %86 = load i32, i32* @tcc_activation_temp, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sub i32 %86, %87
  %89 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %81, i64 %82, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %71, %41, %38
  %91 = load i64, i64* @do_dts, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %143

93:                                               ; preds = %90
  %94 = load i64, i64* @debug, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %143

96:                                               ; preds = %93
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @MSR_IA32_THERM_STATUS, align 4
  %99 = call i64 @get_msr(i32 %97, i32 %98, i64* %8)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %144

102:                                              ; preds = %96
  %103 = load i64, i64* %8, align 8
  %104 = lshr i64 %103, 16
  %105 = and i64 %104, 127
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %9, align 4
  %107 = load i64, i64* %8, align 8
  %108 = lshr i64 %107, 27
  %109 = and i64 %108, 15
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* @outf, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i64, i64* %8, align 8
  %114 = load i32, i32* @tcc_activation_temp, align 4
  %115 = load i32, i32* %9, align 4
  %116 = sub i32 %114, %115
  %117 = load i32, i32* %12, align 4
  %118 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %112, i64 %113, i32 %116, i32 %117)
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @MSR_IA32_THERM_INTERRUPT, align 4
  %121 = call i64 @get_msr(i32 %119, i32 %120, i64* %8)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %144

124:                                              ; preds = %102
  %125 = load i64, i64* %8, align 8
  %126 = lshr i64 %125, 16
  %127 = and i64 %126, 127
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %9, align 4
  %129 = load i64, i64* %8, align 8
  %130 = lshr i64 %129, 8
  %131 = and i64 %130, 127
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* @outf, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i64, i64* %8, align 8
  %136 = load i32, i32* @tcc_activation_temp, align 4
  %137 = load i32, i32* %9, align 4
  %138 = sub i32 %136, %137
  %139 = load i32, i32* @tcc_activation_temp, align 4
  %140 = load i32, i32* %10, align 4
  %141 = sub i32 %139, %140
  %142 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %134, i64 %135, i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %124, %93, %90
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %123, %101, %70, %53, %34, %29, %18
  %145 = load i32, i32* %4, align 4
  ret i32 %145
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
