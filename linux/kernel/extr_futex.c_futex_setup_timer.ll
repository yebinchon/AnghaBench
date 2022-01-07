; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_futex.c_futex_setup_timer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_futex.c_futex_setup_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer_sleeper = type { i32 }

@FLAGS_CLOCKRT = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hrtimer_sleeper* (i32*, %struct.hrtimer_sleeper*, i32, i32)* @futex_setup_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hrtimer_sleeper* @futex_setup_timer(i32* %0, %struct.hrtimer_sleeper* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hrtimer_sleeper*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hrtimer_sleeper*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.hrtimer_sleeper* %1, %struct.hrtimer_sleeper** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store %struct.hrtimer_sleeper* null, %struct.hrtimer_sleeper** %5, align 8
  br label %34

13:                                               ; preds = %4
  %14 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @FLAGS_CLOCKRT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @CLOCK_REALTIME, align 4
  br label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @CLOCK_MONOTONIC, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %26 = call i32 @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper* %14, i32 %24, i32 %25)
  %27 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %7, align 8
  %28 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %27, i32 0, i32 0
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @hrtimer_set_expires_range_ns(i32* %28, i32 %30, i32 %31)
  %33 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %7, align 8
  store %struct.hrtimer_sleeper* %33, %struct.hrtimer_sleeper** %5, align 8
  br label %34

34:                                               ; preds = %23, %12
  %35 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %5, align 8
  ret %struct.hrtimer_sleeper* %35
}

declare dso_local i32 @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper*, i32, i32) #1

declare dso_local i32 @hrtimer_set_expires_range_ns(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
