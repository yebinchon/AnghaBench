; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_mq.c_mq_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_mq.c_mq_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev_queue = type { i32 }
%struct.Qdisc = type { i32 }
%struct.tcmsg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)* @mq_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netdev_queue* @mq_select_queue(%struct.Qdisc* %0, %struct.tcmsg* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.tcmsg*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.tcmsg* %1, %struct.tcmsg** %4, align 8
  %5 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %6 = load %struct.tcmsg*, %struct.tcmsg** %4, align 8
  %7 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @TC_H_MIN(i32 %8)
  %10 = call %struct.netdev_queue* @mq_queue_get(%struct.Qdisc* %5, i32 %9)
  ret %struct.netdev_queue* %10
}

declare dso_local %struct.netdev_queue* @mq_queue_get(%struct.Qdisc*, i32) #1

declare dso_local i32 @TC_H_MIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
