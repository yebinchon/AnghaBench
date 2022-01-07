; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_tk_clock_read.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_tk_clock_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tk_read_base = type { i32 }
%struct.clocksource = type { i32 (%struct.clocksource*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tk_read_base*)* @tk_clock_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tk_clock_read(%struct.tk_read_base* %0) #0 {
  %2 = alloca %struct.tk_read_base*, align 8
  %3 = alloca %struct.clocksource*, align 8
  store %struct.tk_read_base* %0, %struct.tk_read_base** %2, align 8
  %4 = load %struct.tk_read_base*, %struct.tk_read_base** %2, align 8
  %5 = getelementptr inbounds %struct.tk_read_base, %struct.tk_read_base* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.clocksource* @READ_ONCE(i32 %6)
  store %struct.clocksource* %7, %struct.clocksource** %3, align 8
  %8 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %9 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %8, i32 0, i32 0
  %10 = load i32 (%struct.clocksource*)*, i32 (%struct.clocksource*)** %9, align 8
  %11 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %12 = call i32 %10(%struct.clocksource* %11)
  ret i32 %12
}

declare dso_local %struct.clocksource* @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
