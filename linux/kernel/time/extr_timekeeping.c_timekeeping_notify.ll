; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_timekeeping_notify.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_timekeeping_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.timekeeper }
%struct.timekeeper = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.clocksource* }
%struct.clocksource = type { i32 }

@tk_core = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@change_clocksource = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timekeeping_notify(%struct.clocksource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clocksource*, align 8
  %4 = alloca %struct.timekeeper*, align 8
  store %struct.clocksource* %0, %struct.clocksource** %3, align 8
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tk_core, i32 0, i32 0), %struct.timekeeper** %4, align 8
  %5 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %6 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.clocksource*, %struct.clocksource** %7, align 8
  %9 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %10 = icmp eq %struct.clocksource* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load i32, i32* @change_clocksource, align 4
  %14 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %15 = call i32 @stop_machine(i32 %13, %struct.clocksource* %14, i32* null)
  %16 = call i32 (...) @tick_clock_notify()
  %17 = load %struct.timekeeper*, %struct.timekeeper** %4, align 8
  %18 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.clocksource*, %struct.clocksource** %19, align 8
  %21 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %22 = icmp eq %struct.clocksource* %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 -1
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %12, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @stop_machine(i32, %struct.clocksource*, i32*) #1

declare dso_local i32 @tick_clock_notify(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
