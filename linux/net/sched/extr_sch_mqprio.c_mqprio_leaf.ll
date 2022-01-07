; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_mqprio.c_mqprio_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_mqprio.c_mqprio_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.netdev_queue = type { %struct.Qdisc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Qdisc* (%struct.Qdisc*, i64)* @mqprio_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Qdisc* @mqprio_leaf(%struct.Qdisc* %0, i64 %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netdev_queue*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call %struct.netdev_queue* @mqprio_queue_get(%struct.Qdisc* %7, i64 %8)
  store %struct.netdev_queue* %9, %struct.netdev_queue** %6, align 8
  %10 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %11 = icmp ne %struct.netdev_queue* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.Qdisc* null, %struct.Qdisc** %3, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %15 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %14, i32 0, i32 0
  %16 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  store %struct.Qdisc* %16, %struct.Qdisc** %3, align 8
  br label %17

17:                                               ; preds = %13, %12
  %18 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  ret %struct.Qdisc* %18
}

declare dso_local %struct.netdev_queue* @mqprio_queue_get(%struct.Qdisc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
