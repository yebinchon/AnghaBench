; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_netem_segment.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_netem_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }

@NETIF_F_GSO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @netem_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @netem_segment(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call i32 @netif_skb_features(%struct.sk_buff* %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @NETIF_F_GSO_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = call %struct.sk_buff* @skb_gso_segment(%struct.sk_buff* %12, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = call i64 @IS_ERR_OR_NULL(%struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %24 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %25 = call i32 @qdisc_drop(%struct.sk_buff* %22, %struct.Qdisc* %23, %struct.sk_buff** %24)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %30

26:                                               ; preds = %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i32 @consume_skb(%struct.sk_buff* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %4, align 8
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %31
}

declare dso_local i32 @netif_skb_features(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_drop(%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
