; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_run_local_timers.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_run_local_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_base = type { i32 }

@timer_bases = common dso_local global i32* null, align 8
@BASE_STD = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@CONFIG_NO_HZ_COMMON = common dso_local global i32 0, align 4
@TIMER_SOFTIRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_local_timers() #0 {
  %1 = alloca %struct.timer_base*, align 8
  %2 = load i32*, i32** @timer_bases, align 8
  %3 = load i64, i64* @BASE_STD, align 8
  %4 = getelementptr inbounds i32, i32* %2, i64 %3
  %5 = call %struct.timer_base* @this_cpu_ptr(i32* %4)
  store %struct.timer_base* %5, %struct.timer_base** %1, align 8
  %6 = call i32 (...) @hrtimer_run_queues()
  %7 = load i32, i32* @jiffies, align 4
  %8 = load %struct.timer_base*, %struct.timer_base** %1, align 8
  %9 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @time_before(i32 %7, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %0
  %14 = load i32, i32* @CONFIG_NO_HZ_COMMON, align 4
  %15 = call i32 @IS_ENABLED(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %32

18:                                               ; preds = %13
  %19 = load %struct.timer_base*, %struct.timer_base** %1, align 8
  %20 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %19, i32 1
  store %struct.timer_base* %20, %struct.timer_base** %1, align 8
  %21 = load i32, i32* @jiffies, align 4
  %22 = load %struct.timer_base*, %struct.timer_base** %1, align 8
  %23 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @time_before(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %32

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %0
  %30 = load i32, i32* @TIMER_SOFTIRQ, align 4
  %31 = call i32 @raise_softirq(i32 %30)
  br label %32

32:                                               ; preds = %29, %27, %17
  ret void
}

declare dso_local %struct.timer_base* @this_cpu_ptr(i32*) #1

declare dso_local i32 @hrtimer_run_queues(...) #1

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @raise_softirq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
