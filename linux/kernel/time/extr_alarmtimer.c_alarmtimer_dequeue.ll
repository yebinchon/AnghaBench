; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_alarmtimer.c_alarmtimer_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_alarmtimer.c_alarmtimer_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alarm_base = type { i32 }
%struct.alarm = type { i32, i32 }

@ALARMTIMER_STATE_ENQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alarm_base*, %struct.alarm*)* @alarmtimer_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alarmtimer_dequeue(%struct.alarm_base* %0, %struct.alarm* %1) #0 {
  %3 = alloca %struct.alarm_base*, align 8
  %4 = alloca %struct.alarm*, align 8
  store %struct.alarm_base* %0, %struct.alarm_base** %3, align 8
  store %struct.alarm* %1, %struct.alarm** %4, align 8
  %5 = load %struct.alarm*, %struct.alarm** %4, align 8
  %6 = getelementptr inbounds %struct.alarm, %struct.alarm* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ALARMTIMER_STATE_ENQUEUED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.alarm_base*, %struct.alarm_base** %3, align 8
  %14 = getelementptr inbounds %struct.alarm_base, %struct.alarm_base* %13, i32 0, i32 0
  %15 = load %struct.alarm*, %struct.alarm** %4, align 8
  %16 = getelementptr inbounds %struct.alarm, %struct.alarm* %15, i32 0, i32 1
  %17 = call i32 @timerqueue_del(i32* %14, i32* %16)
  %18 = load i32, i32* @ALARMTIMER_STATE_ENQUEUED, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.alarm*, %struct.alarm** %4, align 8
  %21 = getelementptr inbounds %struct.alarm, %struct.alarm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @timerqueue_del(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
