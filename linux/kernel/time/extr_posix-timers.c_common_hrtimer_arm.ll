; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_common_hrtimer_arm.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_common_hrtimer_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i64, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.hrtimer }
%struct.hrtimer = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (...)* }

@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i64 0, align 8
@clock_realtime = common dso_local global i32 0, align 4
@clock_monotonic = common dso_local global i32 0, align 4
@posix_timer_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_itimer*, i32, i32, i32)* @common_hrtimer_arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hrtimer_arm(%struct.k_itimer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.k_itimer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hrtimer*, align 8
  %10 = alloca i32, align 4
  store %struct.k_itimer* %0, %struct.k_itimer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.k_itimer*, %struct.k_itimer** %5, align 8
  %12 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.hrtimer* %14, %struct.hrtimer** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  br label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @HRTIMER_MODE_REL, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %10, align 4
  %23 = load %struct.k_itimer*, %struct.k_itimer** %5, align 8
  %24 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CLOCK_REALTIME, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32* @clock_realtime, i32* @clock_monotonic
  %33 = load %struct.k_itimer*, %struct.k_itimer** %5, align 8
  %34 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %21
  %36 = load %struct.k_itimer*, %struct.k_itimer** %5, align 8
  %37 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.k_itimer*, %struct.k_itimer** %5, align 8
  %41 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @hrtimer_init(%struct.hrtimer* %39, i64 %42, i32 %43)
  %45 = load i32, i32* @posix_timer_fn, align 4
  %46 = load %struct.k_itimer*, %struct.k_itimer** %5, align 8
  %47 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %49, i32 0, i32 1
  store i32 %45, i32* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %35
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.hrtimer*, %struct.hrtimer** %9, align 8
  %56 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32 (...)*, i32 (...)** %58, align 8
  %60 = call i32 (...) %59()
  %61 = call i32 @ktime_add_safe(i32 %54, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %53, %35
  %63 = load %struct.hrtimer*, %struct.hrtimer** %9, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @hrtimer_set_expires(%struct.hrtimer* %63, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = load %struct.hrtimer*, %struct.hrtimer** %9, align 8
  %70 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %71 = call i32 @hrtimer_start_expires(%struct.hrtimer* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %62
  ret void
}

declare dso_local i32 @hrtimer_init(%struct.hrtimer*, i64, i32) #1

declare dso_local i32 @ktime_add_safe(i32, i32) #1

declare dso_local i32 @hrtimer_set_expires(%struct.hrtimer*, i32) #1

declare dso_local i32 @hrtimer_start_expires(%struct.hrtimer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
