; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_enqueue_hrtimer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_enqueue_hrtimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i32, i32 }
%struct.hrtimer_clock_base = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HRTIMER_STATE_ENQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hrtimer*, %struct.hrtimer_clock_base*, i32)* @enqueue_hrtimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enqueue_hrtimer(%struct.hrtimer* %0, %struct.hrtimer_clock_base* %1, i32 %2) #0 {
  %4 = alloca %struct.hrtimer*, align 8
  %5 = alloca %struct.hrtimer_clock_base*, align 8
  %6 = alloca i32, align 4
  store %struct.hrtimer* %0, %struct.hrtimer** %4, align 8
  store %struct.hrtimer_clock_base* %1, %struct.hrtimer_clock_base** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.hrtimer*, %struct.hrtimer** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @debug_activate(%struct.hrtimer* %7, i32 %8)
  %10 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %5, align 8
  %11 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 1, %12
  %14 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %5, align 8
  %15 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %13
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @HRTIMER_STATE_ENQUEUED, align 4
  %21 = load %struct.hrtimer*, %struct.hrtimer** %4, align 8
  %22 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %5, align 8
  %24 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %23, i32 0, i32 1
  %25 = load %struct.hrtimer*, %struct.hrtimer** %4, align 8
  %26 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %25, i32 0, i32 0
  %27 = call i32 @timerqueue_add(i32* %24, i32* %26)
  ret i32 %27
}

declare dso_local i32 @debug_activate(%struct.hrtimer*, i32) #1

declare dso_local i32 @timerqueue_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
