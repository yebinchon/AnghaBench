; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_clocksource.c_clocksource_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_clocksource.c_clocksource_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@curr_clocksource = common dso_local global %struct.clocksource* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clocksource*)* @clocksource_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clocksource_unbind(%struct.clocksource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clocksource*, align 8
  %4 = alloca i64, align 8
  store %struct.clocksource* %0, %struct.clocksource** %3, align 8
  %5 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %6 = call i64 @clocksource_is_watchdog(%struct.clocksource* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = call i32 @clocksource_select_watchdog(i32 1)
  %10 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %11 = call i64 @clocksource_is_watchdog(%struct.clocksource* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %44

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16, %1
  %18 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %19 = load %struct.clocksource*, %struct.clocksource** @curr_clocksource, align 8
  %20 = icmp eq %struct.clocksource* %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = call i32 (...) @clocksource_select_fallback()
  %23 = load %struct.clocksource*, %struct.clocksource** @curr_clocksource, align 8
  %24 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %25 = icmp eq %struct.clocksource* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %44

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %17
  %31 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %32 = call i64 @clocksource_is_suspend(%struct.clocksource* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @clocksource_suspend_select(i32 1)
  br label %36

36:                                               ; preds = %34, %30
  %37 = call i32 @clocksource_watchdog_lock(i64* %4)
  %38 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %39 = call i32 @clocksource_dequeue_watchdog(%struct.clocksource* %38)
  %40 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %41 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %40, i32 0, i32 0
  %42 = call i32 @list_del_init(i32* %41)
  %43 = call i32 @clocksource_watchdog_unlock(i64* %4)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %36, %26, %13
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @clocksource_is_watchdog(%struct.clocksource*) #1

declare dso_local i32 @clocksource_select_watchdog(i32) #1

declare dso_local i32 @clocksource_select_fallback(...) #1

declare dso_local i64 @clocksource_is_suspend(%struct.clocksource*) #1

declare dso_local i32 @clocksource_suspend_select(i32) #1

declare dso_local i32 @clocksource_watchdog_lock(i64*) #1

declare dso_local i32 @clocksource_dequeue_watchdog(%struct.clocksource*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @clocksource_watchdog_unlock(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
