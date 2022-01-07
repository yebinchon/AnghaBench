; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_dev_activate.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_dev_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }

@noop_qdisc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dev_activate(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, @noop_qdisc
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @attach_default_qdiscs(%struct.net_device* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netif_carrier_ok(%struct.net_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %35

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netdev_for_each_tx_queue(%struct.net_device* %17, i32 (%struct.net_device*, i64, i32*)* @transition_one_qdisc, i32* %3)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i64 @dev_ingress_queue(%struct.net_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i64 @dev_ingress_queue(%struct.net_device* %24)
  %26 = call i32 @transition_one_qdisc(%struct.net_device* %23, i64 %25, i32* null)
  br label %27

27:                                               ; preds = %22, %16
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @netif_trans_update(%struct.net_device* %31)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @dev_watchdog_up(%struct.net_device* %33)
  br label %35

35:                                               ; preds = %15, %30, %27
  ret void
}

declare dso_local i32 @attach_default_qdiscs(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netdev_for_each_tx_queue(%struct.net_device*, i32 (%struct.net_device*, i64, i32*)*, i32*) #1

declare dso_local i32 @transition_one_qdisc(%struct.net_device*, i64, i32*) #1

declare dso_local i64 @dev_ingress_queue(%struct.net_device*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @dev_watchdog_up(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
