; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_qdisc_change_tx_queue_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_qdisc_change_tx_queue_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_queue = type { %struct.Qdisc* }
%struct.Qdisc = type { %struct.Qdisc_ops* }
%struct.Qdisc_ops = type { i32 (%struct.Qdisc*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netdev_queue*)* @qdisc_change_tx_queue_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdisc_change_tx_queue_len(%struct.net_device* %0, %struct.netdev_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_queue*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.Qdisc_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_queue* %1, %struct.netdev_queue** %5, align 8
  %8 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %9 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %8, i32 0, i32 0
  %10 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  store %struct.Qdisc* %10, %struct.Qdisc** %6, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %12 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %11, i32 0, i32 0
  %13 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %12, align 8
  store %struct.Qdisc_ops* %13, %struct.Qdisc_ops** %7, align 8
  %14 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %7, align 8
  %15 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %14, i32 0, i32 0
  %16 = load i32 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.Qdisc*, i32)* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %7, align 8
  %20 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %19, i32 0, i32 0
  %21 = load i32 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, i32)** %20, align 8
  %22 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %21(%struct.Qdisc* %22, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
