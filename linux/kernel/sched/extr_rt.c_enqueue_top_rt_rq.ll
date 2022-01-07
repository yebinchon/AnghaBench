; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_enqueue_top_rt_rq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_enqueue_top_rt_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_rq = type { i32, i32 }
%struct.rq = type { %struct.rt_rq }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_rq*)* @enqueue_top_rt_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_top_rt_rq(%struct.rt_rq* %0) #0 {
  %2 = alloca %struct.rt_rq*, align 8
  %3 = alloca %struct.rq*, align 8
  store %struct.rt_rq* %0, %struct.rt_rq** %2, align 8
  %4 = load %struct.rt_rq*, %struct.rt_rq** %2, align 8
  %5 = call %struct.rq* @rq_of_rt_rq(%struct.rt_rq* %4)
  store %struct.rq* %5, %struct.rq** %3, align 8
  %6 = load %struct.rq*, %struct.rq** %3, align 8
  %7 = getelementptr inbounds %struct.rq, %struct.rq* %6, i32 0, i32 0
  %8 = load %struct.rt_rq*, %struct.rt_rq** %2, align 8
  %9 = icmp ne %struct.rt_rq* %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.rt_rq*, %struct.rt_rq** %2, align 8
  %13 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %38

17:                                               ; preds = %1
  %18 = load %struct.rt_rq*, %struct.rt_rq** %2, align 8
  %19 = call i64 @rt_rq_throttled(%struct.rt_rq* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %38

22:                                               ; preds = %17
  %23 = load %struct.rt_rq*, %struct.rt_rq** %2, align 8
  %24 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.rq*, %struct.rq** %3, align 8
  %29 = load %struct.rt_rq*, %struct.rt_rq** %2, align 8
  %30 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @add_nr_running(%struct.rq* %28, i32 %31)
  %33 = load %struct.rt_rq*, %struct.rt_rq** %2, align 8
  %34 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %27, %22
  %36 = load %struct.rq*, %struct.rq** %3, align 8
  %37 = call i32 @cpufreq_update_util(%struct.rq* %36, i32 0)
  br label %38

38:                                               ; preds = %35, %21, %16
  ret void
}

declare dso_local %struct.rq* @rq_of_rt_rq(%struct.rt_rq*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @rt_rq_throttled(%struct.rt_rq*) #1

declare dso_local i32 @add_nr_running(%struct.rq*, i32) #1

declare dso_local i32 @cpufreq_update_util(%struct.rq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
