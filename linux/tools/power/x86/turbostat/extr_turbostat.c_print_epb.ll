; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_print_epb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_print_epb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_data = type { i32, i32 }
%struct.core_data = type { i32 }
%struct.pkg_data = type { i32 }

@has_epb = common dso_local global i32 0, align 4
@CPU_IS_FIRST_THREAD_IN_CORE = common dso_local global i32 0, align 4
@CPU_IS_FIRST_CORE_IN_PACKAGE = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not migrate to CPU %d\0A\00", align 1
@MSR_IA32_ENERGY_PERF_BIAS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"performance\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"balanced\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"powersave\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"cpu%d: MSR_IA32_ENERGY_PERF_BIAS: 0x%08llx (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_epb(%struct.thread_data* %0, %struct.core_data* %1, %struct.pkg_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_data*, align 8
  %6 = alloca %struct.core_data*, align 8
  %7 = alloca %struct.pkg_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.thread_data* %0, %struct.thread_data** %5, align 8
  store %struct.core_data* %1, %struct.core_data** %6, align 8
  store %struct.pkg_data* %2, %struct.pkg_data** %7, align 8
  %11 = load i32, i32* @has_epb, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

14:                                               ; preds = %3
  %15 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %16 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %19 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CPU_IS_FIRST_THREAD_IN_CORE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %14
  %25 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %26 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CPU_IS_FIRST_CORE_IN_PACKAGE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24, %14
  store i32 0, i32* %4, align 4
  br label %59

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @cpu_migrate(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @outf, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %4, align 4
  br label %59

40:                                               ; preds = %32
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @MSR_IA32_ENERGY_PERF_BIAS, align 4
  %43 = call i64 @get_msr(i32 %41, i32 %42, i64* %8)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %59

46:                                               ; preds = %40
  %47 = load i64, i64* %8, align 8
  %48 = and i64 %47, 15
  switch i64 %48, label %52 [
    i64 129, label %49
    i64 130, label %50
    i64 128, label %51
  ]

49:                                               ; preds = %46
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %53

50:                                               ; preds = %46
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %53

51:                                               ; preds = %46
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %53

52:                                               ; preds = %46
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %53

53:                                               ; preds = %52, %51, %50, %49
  %54 = load i32, i32* @outf, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i64, i64* %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %55, i64 %56, i8* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %45, %36, %31, %13
  %60 = load i32, i32* %4, align 4
  ret i32 %60
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
