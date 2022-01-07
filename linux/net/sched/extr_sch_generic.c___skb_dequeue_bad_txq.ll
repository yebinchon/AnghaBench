; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c___skb_dequeue_bad_txq.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c___skb_dequeue_bad_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32, %struct.TYPE_2__, i32, %struct.netdev_queue* }
%struct.TYPE_2__ = type { i32 }
%struct.netdev_queue = type { i32 }

@TCQ_F_NOLOCK = common dso_local global i32 0, align 4
@SKB_XOFF_MAGIC = common dso_local global %struct.sk_buff* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @__skb_dequeue_bad_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @__skb_dequeue_bad_txq(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.netdev_queue*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %7 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %6, i32 0, i32 3
  %8 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  store %struct.netdev_queue* %8, %struct.netdev_queue** %3, align 8
  store i32* null, i32** %4, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %10 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TCQ_F_NOLOCK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %17 = call i32* @qdisc_lock(%struct.Qdisc* %16)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @spin_lock(i32* %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %22 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %21, i32 0, i32 2
  %23 = call %struct.sk_buff* @skb_peek(i32* %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %5, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %26, label %61

26:                                               ; preds = %20
  %27 = load %struct.netdev_queue*, %struct.netdev_queue** %3, align 8
  %28 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call %struct.netdev_queue* @skb_get_tx_queue(i32 %29, %struct.sk_buff* %30)
  store %struct.netdev_queue* %31, %struct.netdev_queue** %3, align 8
  %32 = load %struct.netdev_queue*, %struct.netdev_queue** %3, align 8
  %33 = call i32 @netif_xmit_frozen_or_stopped(%struct.netdev_queue* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %58, label %35

35:                                               ; preds = %26
  %36 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %37 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %36, i32 0, i32 2
  %38 = call %struct.sk_buff* @__skb_dequeue(i32* %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %5, align 8
  %39 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %40 = call i64 @qdisc_is_percpu_stats(%struct.Qdisc* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @qdisc_qstats_cpu_backlog_dec(%struct.Qdisc* %43, %struct.sk_buff* %44)
  %46 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %47 = call i32 @qdisc_qstats_cpu_qlen_dec(%struct.Qdisc* %46)
  br label %57

48:                                               ; preds = %35
  %49 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %49, %struct.sk_buff* %50)
  %52 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %53 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %48, %42
  br label %60

58:                                               ; preds = %26
  %59 = load %struct.sk_buff*, %struct.sk_buff** @SKB_XOFF_MAGIC, align 8
  store %struct.sk_buff* %59, %struct.sk_buff** %5, align 8
  br label %60

60:                                               ; preds = %58, %57
  br label %61

61:                                               ; preds = %60, %20
  %62 = load i32*, i32** %4, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @spin_unlock(i32* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %68
}

declare dso_local i32* @qdisc_lock(%struct.Qdisc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.netdev_queue* @skb_get_tx_queue(i32, %struct.sk_buff*) #1

declare dso_local i32 @netif_xmit_frozen_or_stopped(%struct.netdev_queue*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i64 @qdisc_is_percpu_stats(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_qstats_cpu_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_qstats_cpu_qlen_dec(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
