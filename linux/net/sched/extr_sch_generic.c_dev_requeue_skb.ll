; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_dev_requeue_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_dev_requeue_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sk_buff* }
%struct.Qdisc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TCQ_F_NOLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.Qdisc*)* @dev_requeue_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_requeue_skb(%struct.sk_buff* %0, %struct.Qdisc* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %8 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TCQ_F_NOLOCK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %15 = call i32* @qdisc_lock(%struct.Qdisc* %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @spin_lock(i32* %16)
  br label %18

18:                                               ; preds = %13, %2
  br label %19

19:                                               ; preds = %55, %18
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %57

22:                                               ; preds = %19
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %6, align 8
  %26 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %27 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %26, i32 0, i32 3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i32 @__skb_queue_tail(i32* %27, %struct.sk_buff* %28)
  %30 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %31 = call i64 @qdisc_is_percpu_stats(%struct.Qdisc* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %22
  %34 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %35 = call i32 @qdisc_qstats_cpu_requeues_inc(%struct.Qdisc* %34)
  %36 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call i32 @qdisc_qstats_cpu_backlog_inc(%struct.Qdisc* %36, %struct.sk_buff* %37)
  %39 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %40 = call i32 @qdisc_qstats_cpu_qlen_inc(%struct.Qdisc* %39)
  br label %55

41:                                               ; preds = %22
  %42 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %43 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call i32 @qdisc_qstats_backlog_inc(%struct.Qdisc* %47, %struct.sk_buff* %48)
  %50 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %51 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %41, %33
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %56, %struct.sk_buff** %3, align 8
  br label %19

57:                                               ; preds = %19
  %58 = load i32*, i32** %5, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @spin_unlock(i32* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %65 = call i32 @__netif_schedule(%struct.Qdisc* %64)
  ret void
}

declare dso_local i32* @qdisc_lock(%struct.Qdisc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i64 @qdisc_is_percpu_stats(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_qstats_cpu_requeues_inc(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_qstats_cpu_backlog_inc(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_qstats_cpu_qlen_inc(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_qstats_backlog_inc(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__netif_schedule(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
