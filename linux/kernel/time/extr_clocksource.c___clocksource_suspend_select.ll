; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_clocksource.c___clocksource_suspend_select.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_clocksource.c___clocksource_suspend_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32, i64, i32, i64, i64 }

@CLOCK_SOURCE_SUSPEND_NONSTOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Nonstop clocksource %s should not supply suspend/resume interfaces\0A\00", align 1
@suspend_clocksource = common dso_local global %struct.clocksource* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clocksource*)* @__clocksource_suspend_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__clocksource_suspend_select(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %3 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %4 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @CLOCK_SOURCE_SUSPEND_NONSTOP, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %38

10:                                               ; preds = %1
  %11 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %12 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %17 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15, %10
  %21 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %22 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pr_warn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.clocksource*, %struct.clocksource** @suspend_clocksource, align 8
  %27 = icmp ne %struct.clocksource* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %30 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.clocksource*, %struct.clocksource** @suspend_clocksource, align 8
  %33 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28, %25
  %37 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  store %struct.clocksource* %37, %struct.clocksource** @suspend_clocksource, align 8
  br label %38

38:                                               ; preds = %9, %36, %28
  ret void
}

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
