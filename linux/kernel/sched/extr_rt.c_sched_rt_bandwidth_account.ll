; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_sched_rt_bandwidth_account.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_sched_rt_bandwidth_account.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_rq = type { i64 }
%struct.rt_bandwidth = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sched_rt_bandwidth_account(%struct.rt_rq* %0) #0 {
  %2 = alloca %struct.rt_rq*, align 8
  %3 = alloca %struct.rt_bandwidth*, align 8
  store %struct.rt_rq* %0, %struct.rt_rq** %2, align 8
  %4 = load %struct.rt_rq*, %struct.rt_rq** %2, align 8
  %5 = call %struct.rt_bandwidth* @sched_rt_bandwidth(%struct.rt_rq* %4)
  store %struct.rt_bandwidth* %5, %struct.rt_bandwidth** %3, align 8
  %6 = load %struct.rt_bandwidth*, %struct.rt_bandwidth** %3, align 8
  %7 = getelementptr inbounds %struct.rt_bandwidth, %struct.rt_bandwidth* %6, i32 0, i32 1
  %8 = call i64 @hrtimer_active(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.rt_rq*, %struct.rt_rq** %2, align 8
  %12 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.rt_bandwidth*, %struct.rt_bandwidth** %3, align 8
  %15 = getelementptr inbounds %struct.rt_bandwidth, %struct.rt_bandwidth* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br label %18

18:                                               ; preds = %10, %1
  %19 = phi i1 [ true, %1 ], [ %17, %10 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local %struct.rt_bandwidth* @sched_rt_bandwidth(%struct.rt_rq*) #1

declare dso_local i64 @hrtimer_active(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
