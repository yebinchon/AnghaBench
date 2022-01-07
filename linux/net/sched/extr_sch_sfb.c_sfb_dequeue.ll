; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_sfb_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_sfb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__, {}* }
%struct.TYPE_2__ = type { i32 }
%struct.sfb_sched_data = type { %struct.Qdisc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @sfb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @sfb_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.sfb_sched_data*, align 8
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %7 = call %struct.sfb_sched_data* @qdisc_priv(%struct.Qdisc* %6)
  store %struct.sfb_sched_data* %7, %struct.sfb_sched_data** %3, align 8
  %8 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %3, align 8
  %9 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %8, i32 0, i32 0
  %10 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  store %struct.Qdisc* %10, %struct.Qdisc** %4, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %12 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %11, i32 0, i32 1
  %13 = bitcast {}** %12 to %struct.sk_buff* (%struct.Qdisc*)**
  %14 = load %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)** %13, align 8
  %15 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %3, align 8
  %16 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %15, i32 0, i32 0
  %17 = load %struct.Qdisc*, %struct.Qdisc** %16, align 8
  %18 = call %struct.sk_buff* %14(%struct.Qdisc* %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @qdisc_bstats_update(%struct.Qdisc* %22, %struct.sk_buff* %23)
  %25 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %25, %struct.sk_buff* %26)
  %28 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %29 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %3, align 8
  %35 = call i32 @decrement_qlen(%struct.sk_buff* %33, %struct.sfb_sched_data* %34)
  br label %36

36:                                               ; preds = %21, %1
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %37
}

declare dso_local %struct.sfb_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_bstats_update(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @decrement_qlen(%struct.sk_buff*, %struct.sfb_sched_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
