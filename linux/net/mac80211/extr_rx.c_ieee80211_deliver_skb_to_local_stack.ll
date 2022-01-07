; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_deliver_skb_to_local_stack.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_deliver_skb_to_local_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.ieee80211_rx_data = type { i64, %struct.ieee80211_sub_if_data* }
%struct.ieee80211_sub_if_data = type { i64, i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@ETH_P_PREAUTH = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.ieee80211_rx_data*)* @ieee80211_deliver_skb_to_local_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_deliver_skb_to_local_stack(%struct.sk_buff* %0, %struct.ieee80211_rx_data* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_rx_data*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.ieee80211_rx_data* %1, %struct.ieee80211_rx_data** %4, align 8
  %9 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %9, i32 0, i32 1
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  store %struct.ieee80211_sub_if_data* %11, %struct.ieee80211_sub_if_data** %5, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 2
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @ETH_P_PREAUTH, align 4
  %27 = call i64 @cpu_to_be16(i32 %26)
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %22, %2
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %22
  %35 = phi i1 [ false, %22 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %40)
  store %struct.ieee80211_rx_status* %41, %struct.ieee80211_rx_status** %7, align 8
  %42 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %8, align 4
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @cfg80211_rx_control_port(%struct.net_device* %50, %struct.sk_buff* %51, i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = call i32 @dev_kfree_skb(%struct.sk_buff* %54)
  br label %75

56:                                               ; preds = %34
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @memset(i32 %59, i32 0, i32 4)
  %61 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %56
  %66 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %70 = call i32 @napi_gro_receive(i64 %68, %struct.sk_buff* %69)
  br label %74

71:                                               ; preds = %56
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = call i32 @netif_receive_skb(%struct.sk_buff* %72)
  br label %74

74:                                               ; preds = %71, %65
  br label %75

75:                                               ; preds = %74, %39
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @cfg80211_rx_control_port(%struct.net_device*, %struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @napi_gro_receive(i64, %struct.sk_buff*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
