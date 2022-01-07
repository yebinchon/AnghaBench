; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_hrtimer_start_range_ns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_hrtimer_start_range_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i32, i32 }
%struct.hrtimer_clock_base = type { i32 }

@CONFIG_PREEMPT_RT = common dso_local global i32 0, align 4
@HRTIMER_MODE_SOFT = common dso_local global i32 0, align 4
@HRTIMER_MODE_HARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hrtimer_start_range_ns(%struct.hrtimer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hrtimer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hrtimer_clock_base*, align 8
  %10 = alloca i64, align 8
  store %struct.hrtimer* %0, %struct.hrtimer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @CONFIG_PREEMPT_RT, align 4
  %12 = call i32 @IS_ENABLED(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @HRTIMER_MODE_SOFT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %22 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = xor i32 %20, %26
  %28 = call i32 @WARN_ON_ONCE(i32 %27)
  br label %44

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @HRTIMER_MODE_HARD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %37 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = xor i32 %35, %41
  %43 = call i32 @WARN_ON_ONCE(i32 %42)
  br label %44

44:                                               ; preds = %29, %14
  %45 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %46 = call %struct.hrtimer_clock_base* @lock_hrtimer_base(%struct.hrtimer* %45, i64* %10)
  store %struct.hrtimer_clock_base* %46, %struct.hrtimer_clock_base** %9, align 8
  %47 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %9, align 8
  %52 = call i64 @__hrtimer_start_range_ns(%struct.hrtimer* %47, i32 %48, i32 %49, i32 %50, %struct.hrtimer_clock_base* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %56 = call i32 @hrtimer_reprogram(%struct.hrtimer* %55, i32 1)
  br label %57

57:                                               ; preds = %54, %44
  %58 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %59 = call i32 @unlock_hrtimer_base(%struct.hrtimer* %58, i64* %10)
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.hrtimer_clock_base* @lock_hrtimer_base(%struct.hrtimer*, i64*) #1

declare dso_local i64 @__hrtimer_start_range_ns(%struct.hrtimer*, i32, i32, i32, %struct.hrtimer_clock_base*) #1

declare dso_local i32 @hrtimer_reprogram(%struct.hrtimer*, i32) #1

declare dso_local i32 @unlock_hrtimer_base(%struct.hrtimer*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
