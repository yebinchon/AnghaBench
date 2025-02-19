; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_clocksource.c_clocksource_start_suspend_timing.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_clocksource.c_clocksource_start_suspend_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)*, i64 (%struct.TYPE_4__*)* }
%struct.clocksource = type { i32 }

@suspend_clocksource = common dso_local global %struct.TYPE_4__* null, align 8
@suspend_start = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Failed to enable the non-suspend-able clocksource.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clocksource_start_suspend_timing(%struct.clocksource* %0, i32 %1) #0 {
  %3 = alloca %struct.clocksource*, align 8
  %4 = alloca i32, align 4
  store %struct.clocksource* %0, %struct.clocksource** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @suspend_clocksource, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %34

8:                                                ; preds = %2
  %9 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %10 = call i64 @clocksource_is_suspend(%struct.clocksource* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* @suspend_start, align 4
  br label %34

14:                                               ; preds = %8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @suspend_clocksource, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64 (%struct.TYPE_4__*)*, i64 (%struct.TYPE_4__*)** %16, align 8
  %18 = icmp ne i64 (%struct.TYPE_4__*)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @suspend_clocksource, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64 (%struct.TYPE_4__*)*, i64 (%struct.TYPE_4__*)** %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @suspend_clocksource, align 8
  %24 = call i64 %22(%struct.TYPE_4__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @pr_warn_once(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %34

28:                                               ; preds = %19, %14
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @suspend_clocksource, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @suspend_clocksource, align 8
  %33 = call i32 %31(%struct.TYPE_4__* %32)
  store i32 %33, i32* @suspend_start, align 4
  br label %34

34:                                               ; preds = %28, %26, %12, %7
  ret void
}

declare dso_local i64 @clocksource_is_suspend(%struct.clocksource*) #1

declare dso_local i32 @pr_warn_once(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
