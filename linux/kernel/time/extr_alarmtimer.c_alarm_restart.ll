; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_alarmtimer.c_alarm_restart.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_alarmtimer.c_alarm_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alarm_base = type { i32 }
%struct.alarm = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@alarm_bases = common dso_local global %struct.alarm_base* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alarm_restart(%struct.alarm* %0) #0 {
  %2 = alloca %struct.alarm*, align 8
  %3 = alloca %struct.alarm_base*, align 8
  %4 = alloca i64, align 8
  store %struct.alarm* %0, %struct.alarm** %2, align 8
  %5 = load %struct.alarm_base*, %struct.alarm_base** @alarm_bases, align 8
  %6 = load %struct.alarm*, %struct.alarm** %2, align 8
  %7 = getelementptr inbounds %struct.alarm, %struct.alarm* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.alarm_base, %struct.alarm_base* %5, i64 %8
  store %struct.alarm_base* %9, %struct.alarm_base** %3, align 8
  %10 = load %struct.alarm_base*, %struct.alarm_base** %3, align 8
  %11 = getelementptr inbounds %struct.alarm_base, %struct.alarm_base* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.alarm*, %struct.alarm** %2, align 8
  %15 = getelementptr inbounds %struct.alarm, %struct.alarm* %14, i32 0, i32 1
  %16 = load %struct.alarm*, %struct.alarm** %2, align 8
  %17 = getelementptr inbounds %struct.alarm, %struct.alarm* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @hrtimer_set_expires(i32* %15, i32 %19)
  %21 = load %struct.alarm*, %struct.alarm** %2, align 8
  %22 = getelementptr inbounds %struct.alarm, %struct.alarm* %21, i32 0, i32 1
  %23 = call i32 @hrtimer_restart(i32* %22)
  %24 = load %struct.alarm_base*, %struct.alarm_base** %3, align 8
  %25 = load %struct.alarm*, %struct.alarm** %2, align 8
  %26 = call i32 @alarmtimer_enqueue(%struct.alarm_base* %24, %struct.alarm* %25)
  %27 = load %struct.alarm_base*, %struct.alarm_base** %3, align 8
  %28 = getelementptr inbounds %struct.alarm_base, %struct.alarm_base* %27, i32 0, i32 0
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hrtimer_set_expires(i32*, i32) #1

declare dso_local i32 @hrtimer_restart(i32*) #1

declare dso_local i32 @alarmtimer_enqueue(%struct.alarm_base*, %struct.alarm*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
