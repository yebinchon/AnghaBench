; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_parse_cmdline_hwp_epp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_parse_cmdline_hwp_epp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@update_hwp_epp = common dso_local global i32 0, align 4
@HWP_EPP_POWERSAVE = common dso_local global i32 0, align 4
@HWP_EPP_BALANCE_POWERSAVE = common dso_local global i32 0, align 4
@HWP_EPP_BALANCE_PERFORMANCE = common dso_local global i32 0, align 4
@HWP_EPP_PERFORMANCE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"--hwp-epp must be from 0 to 0xff\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_cmdline_hwp_epp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* @update_hwp_epp, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %13 [
    i32 128, label %5
    i32 131, label %7
    i32 130, label %9
    i32 132, label %9
    i32 129, label %11
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @HWP_EPP_POWERSAVE, align 4
  store i32 %6, i32* %2, align 4
  br label %25

7:                                                ; preds = %1
  %8 = load i32, i32* @HWP_EPP_BALANCE_POWERSAVE, align 4
  store i32 %8, i32* %2, align 4
  br label %25

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @HWP_EPP_BALANCE_PERFORMANCE, align 4
  store i32 %10, i32* %2, align 4
  br label %25

11:                                               ; preds = %1
  %12 = load i32, i32* @HWP_EPP_PERFORMANCE, align 4
  store i32 %12, i32* %2, align 4
  br label %25

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 255
  br i1 %18, label %19, label %23

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 (...) @usage()
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %11, %9, %7, %5
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
