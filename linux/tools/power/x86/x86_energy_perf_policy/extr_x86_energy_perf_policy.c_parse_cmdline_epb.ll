; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_parse_cmdline_epb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_parse_cmdline_epb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@has_epb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EPB not enabled on this platform\00", align 1
@update_epb = common dso_local global i32 0, align 4
@ENERGY_PERF_BIAS_POWERSAVE = common dso_local global i32 0, align 4
@ENERGY_PERF_BIAS_BALANCE_POWERSAVE = common dso_local global i32 0, align 4
@ENERGY_PERF_BIAS_NORMAL = common dso_local global i32 0, align 4
@ENERGY_PERF_BIAS_BALANCE_PERFORMANCE = common dso_local global i32 0, align 4
@ENERGY_PERF_BIAS_PERFORMANCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"--epb must be from 0 to 15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_cmdline_epb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @has_epb, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  store i32 1, i32* @update_epb, align 4
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %20 [
    i32 128, label %10
    i32 131, label %12
    i32 130, label %14
    i32 132, label %16
    i32 129, label %18
  ]

10:                                               ; preds = %8
  %11 = load i32, i32* @ENERGY_PERF_BIAS_POWERSAVE, align 4
  store i32 %11, i32* %2, align 4
  br label %31

12:                                               ; preds = %8
  %13 = load i32, i32* @ENERGY_PERF_BIAS_BALANCE_POWERSAVE, align 4
  store i32 %13, i32* %2, align 4
  br label %31

14:                                               ; preds = %8
  %15 = load i32, i32* @ENERGY_PERF_BIAS_NORMAL, align 4
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %8
  %17 = load i32, i32* @ENERGY_PERF_BIAS_BALANCE_PERFORMANCE, align 4
  store i32 %17, i32* %2, align 4
  br label %31

18:                                               ; preds = %8
  %19 = load i32, i32* @ENERGY_PERF_BIAS_PERFORMANCE, align 4
  store i32 %19, i32* %2, align 4
  br label %31

20:                                               ; preds = %8
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @ENERGY_PERF_BIAS_POWERSAVE, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %20
  %28 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %18, %16, %14, %12, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
