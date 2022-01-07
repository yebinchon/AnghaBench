; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_lookup_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_lookup_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Qdisc* @qdisc_lookup_rcu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netdev_queue*, align 8
  %7 = alloca %struct.Qdisc*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.Qdisc* null, %struct.Qdisc** %3, align 8
  br label %34

11:                                               ; preds = %2
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.Qdisc* @qdisc_match_from_root(i32 %14, i32 %15)
  store %struct.Qdisc* %16, %struct.Qdisc** %7, align 8
  %17 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %18 = icmp ne %struct.Qdisc* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %32

20:                                               ; preds = %11
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call %struct.netdev_queue* @dev_ingress_queue_rcu(%struct.net_device* %21)
  store %struct.netdev_queue* %22, %struct.netdev_queue** %6, align 8
  %23 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %24 = icmp ne %struct.netdev_queue* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %27 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.Qdisc* @qdisc_match_from_root(i32 %28, i32 %29)
  store %struct.Qdisc* %30, %struct.Qdisc** %7, align 8
  br label %31

31:                                               ; preds = %25, %20
  br label %32

32:                                               ; preds = %31, %19
  %33 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  store %struct.Qdisc* %33, %struct.Qdisc** %3, align 8
  br label %34

34:                                               ; preds = %32, %10
  %35 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  ret %struct.Qdisc* %35
}

declare dso_local %struct.Qdisc* @qdisc_match_from_root(i32, i32) #1

declare dso_local %struct.netdev_queue* @dev_ingress_queue_rcu(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
