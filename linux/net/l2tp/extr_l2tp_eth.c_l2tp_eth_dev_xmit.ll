; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_eth.c_l2tp_eth_dev_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_eth.c_l2tp_eth_dev_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.l2tp_eth = type { i32, i32, i32, %struct.l2tp_session* }
%struct.l2tp_session = type { i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @l2tp_eth_dev_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_eth_dev_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.l2tp_eth*, align 8
  %6 = alloca %struct.l2tp_session*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.l2tp_eth* @netdev_priv(%struct.net_device* %9)
  store %struct.l2tp_eth* %10, %struct.l2tp_eth** %5, align 8
  %11 = load %struct.l2tp_eth*, %struct.l2tp_eth** %5, align 8
  %12 = getelementptr inbounds %struct.l2tp_eth, %struct.l2tp_eth* %11, i32 0, i32 3
  %13 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  store %struct.l2tp_session* %13, %struct.l2tp_session** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %20 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @l2tp_xmit_skb(%struct.l2tp_session* %17, %struct.sk_buff* %18, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.l2tp_eth*, %struct.l2tp_eth** %5, align 8
  %32 = getelementptr inbounds %struct.l2tp_eth, %struct.l2tp_eth* %31, i32 0, i32 2
  %33 = call i32 @atomic_long_add(i32 %30, i32* %32)
  %34 = load %struct.l2tp_eth*, %struct.l2tp_eth** %5, align 8
  %35 = getelementptr inbounds %struct.l2tp_eth, %struct.l2tp_eth* %34, i32 0, i32 1
  %36 = call i32 @atomic_long_inc(i32* %35)
  br label %41

37:                                               ; preds = %2
  %38 = load %struct.l2tp_eth*, %struct.l2tp_eth** %5, align 8
  %39 = getelementptr inbounds %struct.l2tp_eth, %struct.l2tp_eth* %38, i32 0, i32 0
  %40 = call i32 @atomic_long_inc(i32* %39)
  br label %41

41:                                               ; preds = %37, %29
  %42 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %42
}

declare dso_local %struct.l2tp_eth* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @l2tp_xmit_skb(%struct.l2tp_session*, %struct.sk_buff*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_long_add(i32, i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
