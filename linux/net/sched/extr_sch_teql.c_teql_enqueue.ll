; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_teql.c_teql_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_teql.c_teql_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }
%struct.net_device = type { i64 }
%struct.teql_sched_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @teql_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @teql_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.teql_sched_data*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %11 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %10)
  store %struct.net_device* %11, %struct.net_device** %8, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %13 = call %struct.teql_sched_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.teql_sched_data* %13, %struct.teql_sched_data** %9, align 8
  %14 = load %struct.teql_sched_data*, %struct.teql_sched_data** %9, align 8
  %15 = getelementptr inbounds %struct.teql_sched_data, %struct.teql_sched_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.teql_sched_data*, %struct.teql_sched_data** %9, align 8
  %24 = getelementptr inbounds %struct.teql_sched_data, %struct.teql_sched_data* %23, i32 0, i32 0
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @__skb_queue_tail(%struct.TYPE_2__* %24, %struct.sk_buff* %25)
  %27 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %27, i32* %4, align 4
  br label %33

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %31 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %32 = call i32 @qdisc_drop(%struct.sk_buff* %29, %struct.Qdisc* %30, %struct.sk_buff** %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %22
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.teql_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_2__*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
