; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_send_layer2_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_send_layer2_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iapp_layer2_update = type { i32, i32, i32*, i64, i32, i32, i32 }
%struct.sk_buff = type { i32, i32, %struct.net_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_send_layer2_update(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.iapp_layer2_update*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call %struct.sk_buff* @dev_alloc_skb(i32 40)
  store %struct.sk_buff* %7, %struct.sk_buff** %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %58

11:                                               ; preds = %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call %struct.iapp_layer2_update* @skb_put(%struct.sk_buff* %12, i32 40)
  store %struct.iapp_layer2_update* %13, %struct.iapp_layer2_update** %5, align 8
  %14 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %5, align 8
  %15 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @eth_broadcast_addr(i32 %16)
  %18 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %5, align 8
  %19 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @ether_addr_copy(i32 %20, i32* %21)
  %23 = call i32 @htons(i32 6)
  %24 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %5, align 8
  %25 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %5, align 8
  %27 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %5, align 8
  %29 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %5, align 8
  %31 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %30, i32 0, i32 1
  store i32 175, i32* %31, align 4
  %32 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %5, align 8
  %33 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 129, i32* %35, align 4
  %36 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %5, align 8
  %37 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.iapp_layer2_update*, %struct.iapp_layer2_update** %5, align 8
  %41 = getelementptr inbounds %struct.iapp_layer2_update, %struct.iapp_layer2_update* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32 0, i32* %43, align 4
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 2
  store %struct.net_device* %44, %struct.net_device** %46, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = call i32 @eth_type_trans(%struct.sk_buff* %47, %struct.net_device* %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memset(i32 %54, i32 0, i32 4)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call i32 @netif_rx_ni(%struct.sk_buff* %56)
  br label %58

58:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local %struct.iapp_layer2_update* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
