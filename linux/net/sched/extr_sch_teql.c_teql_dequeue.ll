; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_teql.c_teql_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_teql.c_teql_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.teql_sched_data = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { %struct.Qdisc*, i32 }
%struct.netdev_queue = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @teql_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @teql_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.teql_sched_data*, align 8
  %4 = alloca %struct.netdev_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %9 = call %struct.teql_sched_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.teql_sched_data* %9, %struct.teql_sched_data** %3, align 8
  %10 = load %struct.teql_sched_data*, %struct.teql_sched_data** %3, align 8
  %11 = getelementptr inbounds %struct.teql_sched_data, %struct.teql_sched_data* %10, i32 0, i32 0
  %12 = call %struct.sk_buff* @__skb_dequeue(%struct.TYPE_6__* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %5, align 8
  %13 = load %struct.teql_sched_data*, %struct.teql_sched_data** %3, align 8
  %14 = getelementptr inbounds %struct.teql_sched_data, %struct.teql_sched_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %17, i32 0)
  store %struct.netdev_queue* %18, %struct.netdev_queue** %4, align 8
  %19 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %20 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.Qdisc* @rcu_dereference_bh(i32 %21)
  store %struct.Qdisc* %22, %struct.Qdisc** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = icmp eq %struct.sk_buff* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %1
  %26 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %27 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %26)
  store %struct.net_device* %27, %struct.net_device** %7, align 8
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = icmp ne %struct.net_device* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %32 = load %struct.teql_sched_data*, %struct.teql_sched_data** %3, align 8
  %33 = getelementptr inbounds %struct.teql_sched_data, %struct.teql_sched_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.Qdisc* %31, %struct.Qdisc** %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = call i32 @netif_wake_queue(%struct.net_device* %36)
  br label %38

38:                                               ; preds = %30, %25
  br label %43

39:                                               ; preds = %1
  %40 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @qdisc_bstats_update(%struct.Qdisc* %40, %struct.sk_buff* %41)
  br label %43

43:                                               ; preds = %39, %38
  %44 = load %struct.teql_sched_data*, %struct.teql_sched_data** %3, align 8
  %45 = getelementptr inbounds %struct.teql_sched_data, %struct.teql_sched_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %49 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %47, %51
  %53 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %54 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %56
}

declare dso_local %struct.teql_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.TYPE_6__*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local %struct.Qdisc* @rcu_dereference_bh(i32) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @qdisc_bstats_update(%struct.Qdisc*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
