; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_subif_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_subif_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff_head = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_subif_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff_head, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call i32 @ieee80211_multicast_to_unicast(%struct.sk_buff* %6, %struct.net_device* %7)
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %5)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i32 @ieee80211_convert_to_unicast(%struct.sk_buff* %13, %struct.net_device* %14, %struct.sk_buff_head* %5)
  br label %16

16:                                               ; preds = %19, %11
  %17 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %5)
  store %struct.sk_buff* %17, %struct.sk_buff** %3, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 @__ieee80211_subif_start_xmit(%struct.sk_buff* %20, %struct.net_device* %21, i32 0, i32 0)
  br label %16

23:                                               ; preds = %16
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @__ieee80211_subif_start_xmit(%struct.sk_buff* %25, %struct.net_device* %26, i32 0, i32 0)
  br label %28

28:                                               ; preds = %24, %23
  %29 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %29
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ieee80211_multicast_to_unicast(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @ieee80211_convert_to_unicast(%struct.sk_buff*, %struct.net_device*, %struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @__ieee80211_subif_start_xmit(%struct.sk_buff*, %struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
