; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_dev_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_dev_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32* }

@noop_qdisc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dev_shutdown(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = call i32 @netdev_for_each_tx_queue(%struct.net_device* %3, i32 (%struct.net_device*, i64, i32*)* @shutdown_scheduler_queue, i32* @noop_qdisc)
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i64 @dev_ingress_queue(%struct.net_device* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i64 @dev_ingress_queue(%struct.net_device* %10)
  %12 = call i32 @shutdown_scheduler_queue(%struct.net_device* %9, i64 %11, i32* @noop_qdisc)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @qdisc_put(i32* %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 1
  store i32* @noop_qdisc, i32** %19, align 8
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = call i32 @timer_pending(i32* %21)
  %23 = call i32 @WARN_ON(i32 %22)
  ret void
}

declare dso_local i32 @netdev_for_each_tx_queue(%struct.net_device*, i32 (%struct.net_device*, i64, i32*)*, i32*) #1

declare dso_local i32 @shutdown_scheduler_queue(%struct.net_device*, i64, i32*) #1

declare dso_local i64 @dev_ingress_queue(%struct.net_device*) #1

declare dso_local i32 @qdisc_put(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @timer_pending(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
