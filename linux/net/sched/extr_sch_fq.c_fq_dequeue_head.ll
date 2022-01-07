; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_dequeue_head.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_dequeue_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fq_flow = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*, %struct.fq_flow*)* @fq_dequeue_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @fq_dequeue_head(%struct.Qdisc* %0, %struct.fq_flow* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.fq_flow*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.fq_flow* %1, %struct.fq_flow** %4, align 8
  %6 = load %struct.fq_flow*, %struct.fq_flow** %4, align 8
  %7 = call %struct.sk_buff* @fq_peek(%struct.fq_flow* %6)
  store %struct.sk_buff* %7, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %12 = load %struct.fq_flow*, %struct.fq_flow** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i32 @fq_erase_head(%struct.Qdisc* %11, %struct.fq_flow* %12, %struct.sk_buff* %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i32 @skb_mark_not_on_list(%struct.sk_buff* %15)
  %17 = load %struct.fq_flow*, %struct.fq_flow** %4, align 8
  %18 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %21, %struct.sk_buff* %22)
  %24 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %25 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %10, %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %30
}

declare dso_local %struct.sk_buff* @fq_peek(%struct.fq_flow*) #1

declare dso_local i32 @fq_erase_head(%struct.Qdisc*, %struct.fq_flow*, %struct.sk_buff*) #1

declare dso_local i32 @skb_mark_not_on_list(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
