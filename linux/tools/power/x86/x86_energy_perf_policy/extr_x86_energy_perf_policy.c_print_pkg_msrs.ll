; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_print_pkg_msrs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_print_pkg_msrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msr_hwp_request = type { i32 }

@has_hwp = common dso_local global i32 0, align 4
@first_cpu_in_pkg = common dso_local global i32* null, align 8
@MSR_HWP_REQUEST_PKG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@has_hwp_notify = common dso_local global i64 0, align 8
@MSR_HWP_INTERRUPT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"pkg%d: MSR_HWP_INTERRUPT: 0x%08llx (Excursion_Min-%sabled, Guaranteed_Perf_Change-%sabled)\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"EN\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@MSR_HWP_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [77 x i8] c"pkg%d: MSR_HWP_STATUS: 0x%08llx (%sExcursion_Min, %sGuaranteed_Perf_Change)\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"No-\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_pkg_msrs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.msr_hwp_request, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @has_hwp, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

9:                                                ; preds = %1
  %10 = load i32*, i32** @first_cpu_in_pkg, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MSR_HWP_REQUEST_PKG, align 4
  %16 = call i32 @read_hwp_request(i32 %14, %struct.msr_hwp_request* %4, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @print_hwp_request_pkg(i32 %17, %struct.msr_hwp_request* %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @has_hwp_notify, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %9
  %22 = load i32*, i32** @first_cpu_in_pkg, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MSR_HWP_INTERRUPT, align 4
  %28 = call i32 @get_msr(i32 %26, i32 %27, i64* %5)
  %29 = load i32, i32* @stderr, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = and i64 %32, 2
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %37 = load i64, i64* %5, align 8
  %38 = and i64 %37, 1
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %42 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %30, i64 %31, i8* %36, i8* %41)
  br label %43

43:                                               ; preds = %21, %9
  %44 = load i32*, i32** @first_cpu_in_pkg, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MSR_HWP_STATUS, align 4
  %50 = call i32 @get_msr(i32 %48, i32 %49, i64* %5)
  %51 = load i32, i32* @stderr, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = and i64 %54, 4
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %59 = load i64, i64* %5, align 8
  %60 = and i64 %59, 1
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %64 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i32 %52, i64 %53, i8* %58, i8* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %43, %8
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @read_hwp_request(i32, %struct.msr_hwp_request*, i32) #1

declare dso_local i32 @print_hwp_request_pkg(i32, %struct.msr_hwp_request*, i8*) #1

declare dso_local i32 @get_msr(i32, i32, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
