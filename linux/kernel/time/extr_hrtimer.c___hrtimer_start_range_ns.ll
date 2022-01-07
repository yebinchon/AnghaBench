; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c___hrtimer_start_range_ns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c___hrtimer_start_range_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i32 }
%struct.hrtimer_clock_base = type { i32 (...)* }

@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@HRTIMER_MODE_PINNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hrtimer*, i32, i32, i32, %struct.hrtimer_clock_base*)* @__hrtimer_start_range_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hrtimer_start_range_ns(%struct.hrtimer* %0, i32 %1, i32 %2, i32 %3, %struct.hrtimer_clock_base* %4) #0 {
  %6 = alloca %struct.hrtimer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hrtimer_clock_base*, align 8
  %11 = alloca %struct.hrtimer_clock_base*, align 8
  store %struct.hrtimer* %0, %struct.hrtimer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.hrtimer_clock_base* %4, %struct.hrtimer_clock_base** %10, align 8
  %12 = load %struct.hrtimer*, %struct.hrtimer** %6, align 8
  %13 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %10, align 8
  %14 = call i32 @remove_hrtimer(%struct.hrtimer* %12, %struct.hrtimer_clock_base* %13, i32 1)
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %10, align 8
  %22 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %21, i32 0, i32 0
  %23 = load i32 (...)*, i32 (...)** %22, align 8
  %24 = call i32 (...) %23()
  %25 = call i32 @ktime_add_safe(i32 %20, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %19, %5
  %27 = load %struct.hrtimer*, %struct.hrtimer** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @hrtimer_update_lowres(%struct.hrtimer* %27, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.hrtimer*, %struct.hrtimer** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @hrtimer_set_expires_range_ns(%struct.hrtimer* %31, i32 %32, i32 %33)
  %35 = load %struct.hrtimer*, %struct.hrtimer** %6, align 8
  %36 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %10, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @HRTIMER_MODE_PINNED, align 4
  %39 = and i32 %37, %38
  %40 = call %struct.hrtimer_clock_base* @switch_hrtimer_base(%struct.hrtimer* %35, %struct.hrtimer_clock_base* %36, i32 %39)
  store %struct.hrtimer_clock_base* %40, %struct.hrtimer_clock_base** %11, align 8
  %41 = load %struct.hrtimer*, %struct.hrtimer** %6, align 8
  %42 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %11, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @enqueue_hrtimer(%struct.hrtimer* %41, %struct.hrtimer_clock_base* %42, i32 %43)
  ret i32 %44
}

declare dso_local i32 @remove_hrtimer(%struct.hrtimer*, %struct.hrtimer_clock_base*, i32) #1

declare dso_local i32 @ktime_add_safe(i32, i32) #1

declare dso_local i32 @hrtimer_update_lowres(%struct.hrtimer*, i32, i32) #1

declare dso_local i32 @hrtimer_set_expires_range_ns(%struct.hrtimer*, i32, i32) #1

declare dso_local %struct.hrtimer_clock_base* @switch_hrtimer_base(%struct.hrtimer*, %struct.hrtimer_clock_base*, i32) #1

declare dso_local i32 @enqueue_hrtimer(%struct.hrtimer*, %struct.hrtimer_clock_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
