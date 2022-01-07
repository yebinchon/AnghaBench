; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c___hrtimer_init_sleeper.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c___hrtimer_init_sleeper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer_sleeper = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CONFIG_PREEMPT_RT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@HRTIMER_MODE_SOFT = common dso_local global i32 0, align 4
@HRTIMER_MODE_HARD = common dso_local global i32 0, align 4
@hrtimer_wakeup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hrtimer_sleeper*, i32, i32)* @__hrtimer_init_sleeper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__hrtimer_init_sleeper(%struct.hrtimer_sleeper* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hrtimer_sleeper*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hrtimer_sleeper* %0, %struct.hrtimer_sleeper** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @CONFIG_PREEMPT_RT, align 4
  %8 = call i64 @IS_ENABLED(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = load i32, i32* @current, align 4
  %12 = call i64 @task_is_realtime(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @HRTIMER_MODE_SOFT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @HRTIMER_MODE_HARD, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %19, %14, %10
  br label %24

24:                                               ; preds = %23, %3
  %25 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %4, align 8
  %26 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %25, i32 0, i32 1
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @__hrtimer_init(%struct.TYPE_2__* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @hrtimer_wakeup, align 4
  %31 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %4, align 8
  %32 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @current, align 4
  %35 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %4, align 8
  %36 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @task_is_realtime(i32) #1

declare dso_local i32 @__hrtimer_init(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
