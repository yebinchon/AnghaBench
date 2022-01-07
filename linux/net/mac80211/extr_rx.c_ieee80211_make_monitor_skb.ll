; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_make_monitor_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_make_monitor_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_rate = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ieee80211_local*, %struct.sk_buff**, %struct.ieee80211_rate*, i32, i32)* @ieee80211_make_monitor_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ieee80211_make_monitor_skb(%struct.ieee80211_local* %0, %struct.sk_buff** %1, %struct.ieee80211_rate* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.sk_buff**, align 8
  %9 = alloca %struct.ieee80211_rate*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_rx_status*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %7, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %8, align 8
  store %struct.ieee80211_rate* %2, %struct.ieee80211_rate** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %18 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %17)
  store %struct.ieee80211_rx_status* %18, %struct.ieee80211_rx_status** %12, align 8
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %20 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %12, align 8
  %21 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %23 = call i32 @ieee80211_rx_radiotap_hdrlen(%struct.ieee80211_local* %19, %struct.ieee80211_rx_status* %20, %struct.sk_buff* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %5
  %30 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  store %struct.sk_buff* %31, %struct.sk_buff** %15, align 8
  %32 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %32, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %34 = call i32 @skb_headroom(%struct.sk_buff* %33)
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call i64 @pskb_expand_head(%struct.sk_buff* %38, i32 %39, i32 0, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %45 = call i32 @dev_kfree_skb(%struct.sk_buff* %44)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %76

46:                                               ; preds = %37, %29
  br label %57

47:                                               ; preds = %5
  %48 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %49, i32 %50, i32 0, i32 %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %15, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %76

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %46
  %58 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %60 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %9, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @ieee80211_add_rx_radiotap_header(%struct.ieee80211_local* %58, %struct.sk_buff* %59, %struct.ieee80211_rate* %60, i32 %61, i32 1)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %64 = call i32 @skb_reset_mac_header(%struct.sk_buff* %63)
  %65 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @PACKET_OTHERHOST, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @ETH_P_802_2, align 4
  %72 = call i32 @htons(i32 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %75, %struct.sk_buff** %6, align 8
  br label %76

76:                                               ; preds = %57, %55, %43
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %77
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx_radiotap_hdrlen(%struct.ieee80211_local*, %struct.ieee80211_rx_status*, %struct.sk_buff*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ieee80211_add_rx_radiotap_header(%struct.ieee80211_local*, %struct.sk_buff*, %struct.ieee80211_rate*, i32, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
