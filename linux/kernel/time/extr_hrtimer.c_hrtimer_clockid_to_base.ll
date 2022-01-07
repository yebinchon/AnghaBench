; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_hrtimer_clockid_to_base.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_hrtimer_clockid_to_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_CLOCKS = common dso_local global i64 0, align 8
@hrtimer_clock_to_base_table = common dso_local global i32* null, align 8
@HRTIMER_MAX_CLOCK_BASES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Invalid clockid %d. Using MONOTONIC\0A\00", align 1
@HRTIMER_BASE_MONOTONIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @hrtimer_clockid_to_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hrtimer_clockid_to_base(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @MAX_CLOCKS, align 8
  %7 = icmp ult i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i64 @likely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load i32*, i32** @hrtimer_clock_to_base_table, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @HRTIMER_MAX_CLOCK_BASES, align 4
  %18 = icmp ne i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @HRTIMER_BASE_MONOTONIC, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @WARN(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
