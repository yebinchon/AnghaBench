; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_slm_bclk.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_slm_bclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base_cpu = common dso_local global i32 0, align 4
@MSR_FSB_FREQ = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SLM BCLK: unknown\0A\00", align 1
@SLM_BCLK_FREQS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"SLM BCLK[%d] invalid\0A\00", align 1
@slm_freq_table = common dso_local global double* null, align 8
@quiet = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"SLM BCLK: %.1f Mhz\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @slm_bclk() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i64 3, i64* %1, align 8
  %4 = load i32, i32* @base_cpu, align 4
  %5 = load i32, i32* @MSR_FSB_FREQ, align 4
  %6 = call i64 @get_msr(i32 %4, i32 %5, i64* %1)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @outf, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i64, i64* %1, align 8
  %13 = and i64 %12, 15
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @SLM_BCLK_FREQS, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, i32* @outf, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  store i32 3, i32* %2, align 4
  br label %22

22:                                               ; preds = %18, %11
  %23 = load double*, double** @slm_freq_table, align 8
  %24 = load i32, i32* %2, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %23, i64 %25
  %27 = load double, double* %26, align 8
  store double %27, double* %3, align 8
  %28 = load i32, i32* @quiet, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @outf, align 4
  %32 = load double, double* %3, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), double %32)
  br label %34

34:                                               ; preds = %30, %22
  %35 = load double, double* %3, align 8
  ret double %35
}

declare dso_local i64 @get_msr(i32, i32, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
