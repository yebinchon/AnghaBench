; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_mq.c_mq_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_mq.c_mq_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.netdev_queue = type { %struct.Qdisc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Qdisc* (%struct.Qdisc*, i64)* @mq_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Qdisc* @mq_leaf(%struct.Qdisc* %0, i64 %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.netdev_queue*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call %struct.netdev_queue* @mq_queue_get(%struct.Qdisc* %6, i64 %7)
  store %struct.netdev_queue* %8, %struct.netdev_queue** %5, align 8
  %9 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %10 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %9, i32 0, i32 0
  %11 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  ret %struct.Qdisc* %11
}

declare dso_local %struct.netdev_queue* @mq_queue_get(%struct.Qdisc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
