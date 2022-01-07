; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_parse_cmdline_hwp_window.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_parse_cmdline_hwp_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@update_hwp_window = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"--hwp-window: 0 for auto; 1 - 1270000000 usec for window duration\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"%d 10^%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%d*10^%d: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_cmdline_hwp_window(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* @update_hwp_window, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %7 [
    i32 128, label %6
    i32 131, label %6
    i32 130, label %6
    i32 132, label %6
    i32 129, label %6
  ]

6:                                                ; preds = %1, %1, %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %52

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, 1270000000
  br i1 %12, label %13, label %17

13:                                               ; preds = %10, %7
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @usage()
  br label %17

17:                                               ; preds = %13, %10
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %32, %17
  %19 = load i64, i64* @debug, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32, i32* %3, align 4
  %27 = icmp sle i32 %26, 127
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = sdiv i32 %30, 10
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %18

35:                                               ; preds = %28
  %36 = load i64, i64* @debug, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32, i32* @stderr, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 %42, 7
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %43, %44
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %38, %35
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 %48, 7
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %47, %6
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
