; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_start_rt_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_start_rt_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_bandwidth = type { i64, i32, i32, i32 }

@RUNTIME_INF = common dso_local global i64 0, align 8
@HRTIMER_MODE_ABS_PINNED_HARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_bandwidth*)* @start_rt_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_rt_bandwidth(%struct.rt_bandwidth* %0) #0 {
  %2 = alloca %struct.rt_bandwidth*, align 8
  store %struct.rt_bandwidth* %0, %struct.rt_bandwidth** %2, align 8
  %3 = call i32 (...) @rt_bandwidth_enabled()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.rt_bandwidth*, %struct.rt_bandwidth** %2, align 8
  %7 = getelementptr inbounds %struct.rt_bandwidth, %struct.rt_bandwidth* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @RUNTIME_INF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %5, %1
  br label %35

12:                                               ; preds = %5
  %13 = load %struct.rt_bandwidth*, %struct.rt_bandwidth** %2, align 8
  %14 = getelementptr inbounds %struct.rt_bandwidth, %struct.rt_bandwidth* %13, i32 0, i32 2
  %15 = call i32 @raw_spin_lock(i32* %14)
  %16 = load %struct.rt_bandwidth*, %struct.rt_bandwidth** %2, align 8
  %17 = getelementptr inbounds %struct.rt_bandwidth, %struct.rt_bandwidth* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %12
  %21 = load %struct.rt_bandwidth*, %struct.rt_bandwidth** %2, align 8
  %22 = getelementptr inbounds %struct.rt_bandwidth, %struct.rt_bandwidth* %21, i32 0, i32 1
  store i32 1, i32* %22, align 8
  %23 = load %struct.rt_bandwidth*, %struct.rt_bandwidth** %2, align 8
  %24 = getelementptr inbounds %struct.rt_bandwidth, %struct.rt_bandwidth* %23, i32 0, i32 3
  %25 = call i32 @ns_to_ktime(i32 0)
  %26 = call i32 @hrtimer_forward_now(i32* %24, i32 %25)
  %27 = load %struct.rt_bandwidth*, %struct.rt_bandwidth** %2, align 8
  %28 = getelementptr inbounds %struct.rt_bandwidth, %struct.rt_bandwidth* %27, i32 0, i32 3
  %29 = load i32, i32* @HRTIMER_MODE_ABS_PINNED_HARD, align 4
  %30 = call i32 @hrtimer_start_expires(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %20, %12
  %32 = load %struct.rt_bandwidth*, %struct.rt_bandwidth** %2, align 8
  %33 = getelementptr inbounds %struct.rt_bandwidth, %struct.rt_bandwidth* %32, i32 0, i32 2
  %34 = call i32 @raw_spin_unlock(i32* %33)
  br label %35

35:                                               ; preds = %31, %11
  ret void
}

declare dso_local i32 @rt_bandwidth_enabled(...) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @hrtimer_forward_now(i32*, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @hrtimer_start_expires(i32*, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
