; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c___hrtimer_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c___hrtimer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i32, i32, i32, i32* }
%struct.hrtimer_cpu_base = type { i32* }

@HRTIMER_MODE_SOFT = common dso_local global i32 0, align 4
@CONFIG_PREEMPT_RT = common dso_local global i32 0, align 4
@HRTIMER_MODE_HARD = common dso_local global i32 0, align 4
@hrtimer_bases = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i64 0, align 8
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i64 0, align 8
@HRTIMER_MAX_CLOCK_BASES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hrtimer*, i64, i32)* @__hrtimer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__hrtimer_init(%struct.hrtimer* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.hrtimer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hrtimer_cpu_base*, align 8
  %9 = alloca i32, align 4
  store %struct.hrtimer* %0, %struct.hrtimer** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @HRTIMER_MODE_SOFT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @CONFIG_PREEMPT_RT, align 4
  %18 = call i64 @IS_ENABLED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @HRTIMER_MODE_HARD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %20, %3
  %27 = load %struct.hrtimer*, %struct.hrtimer** %4, align 8
  %28 = call i32 @memset(%struct.hrtimer* %27, i32 0, i32 24)
  %29 = call %struct.hrtimer_cpu_base* @raw_cpu_ptr(i32* @hrtimer_bases)
  store %struct.hrtimer_cpu_base* %29, %struct.hrtimer_cpu_base** %8, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @CLOCK_REALTIME, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* @CLOCK_MONOTONIC, align 8
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %38, %33, %26
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @HRTIMER_MAX_CLOCK_BASES, align 4
  %45 = sdiv i32 %44, 2
  br label %47

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i32 [ %45, %43 ], [ 0, %46 ]
  store i32 %48, i32* %9, align 4
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @hrtimer_clockid_to_base(i64 %49)
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.hrtimer*, %struct.hrtimer** %4, align 8
  %57 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load %struct.hrtimer*, %struct.hrtimer** %4, align 8
  %63 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %8, align 8
  %65 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load %struct.hrtimer*, %struct.hrtimer** %4, align 8
  %71 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %70, i32 0, i32 3
  store i32* %69, i32** %71, align 8
  %72 = load %struct.hrtimer*, %struct.hrtimer** %4, align 8
  %73 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %72, i32 0, i32 2
  %74 = call i32 @timerqueue_init(i32* %73)
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @memset(%struct.hrtimer*, i32, i32) #1

declare dso_local %struct.hrtimer_cpu_base* @raw_cpu_ptr(i32*) #1

declare dso_local i64 @hrtimer_clockid_to_base(i64) #1

declare dso_local i32 @timerqueue_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
