; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_attach_default_qdiscs.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_attach_default_qdiscs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.Qdisc*)* }
%struct.net_device = type { i32, %struct.Qdisc* }
%struct.netdev_queue = type { %struct.Qdisc* }

@IFF_NO_QUEUE = common dso_local global i32 0, align 4
@attach_one_default_qdisc = common dso_local global i32 0, align 4
@mq_qdisc_ops = common dso_local global i32 0, align 4
@TC_H_ROOT = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @attach_default_qdiscs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_default_qdiscs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_queue*, align 8
  %4 = alloca %struct.Qdisc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %5, i32 0)
  store %struct.netdev_queue* %6, %struct.netdev_queue** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_is_multiqueue(%struct.net_device* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IFF_NO_QUEUE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %10, %1
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = load i32, i32* @attach_one_default_qdisc, align 4
  %20 = call i32 @netdev_for_each_tx_queue(%struct.net_device* %18, i32 %19, i32* null)
  %21 = load %struct.netdev_queue*, %struct.netdev_queue** %3, align 8
  %22 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %21, i32 0, i32 0
  %23 = load %struct.Qdisc*, %struct.Qdisc** %22, align 8
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  store %struct.Qdisc* %23, %struct.Qdisc** %25, align 8
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = load %struct.Qdisc*, %struct.Qdisc** %27, align 8
  %29 = call i32 @qdisc_refcount_inc(%struct.Qdisc* %28)
  br label %48

30:                                               ; preds = %10
  %31 = load %struct.netdev_queue*, %struct.netdev_queue** %3, align 8
  %32 = load i32, i32* @TC_H_ROOT, align 4
  %33 = call %struct.Qdisc* @qdisc_create_dflt(%struct.netdev_queue* %31, i32* @mq_qdisc_ops, i32 %32, i32* null)
  store %struct.Qdisc* %33, %struct.Qdisc** %4, align 8
  %34 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %35 = icmp ne %struct.Qdisc* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  store %struct.Qdisc* %37, %struct.Qdisc** %39, align 8
  %40 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %41 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)** %43, align 8
  %45 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %46 = call i32 %44(%struct.Qdisc* %45)
  br label %47

47:                                               ; preds = %36, %30
  br label %48

48:                                               ; preds = %47, %17
  ret void
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @netif_is_multiqueue(%struct.net_device*) #1

declare dso_local i32 @netdev_for_each_tx_queue(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @qdisc_refcount_inc(%struct.Qdisc*) #1

declare dso_local %struct.Qdisc* @qdisc_create_dflt(%struct.netdev_queue*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
