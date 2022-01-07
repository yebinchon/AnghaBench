; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_probereq_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_probereq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_hdr_3addr = type { i32, i32*, i32, i32 }

@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_PROBE_REQ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@WLAN_EID_SSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ieee80211_probereq_get(%struct.ieee80211_hw* %0, i32* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ieee80211_local*, align 8
  %13 = alloca %struct.ieee80211_hdr_3addr*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %18 = call %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw* %17)
  store %struct.ieee80211_local* %18, %struct.ieee80211_local** %12, align 8
  %19 = load i64, i64* %10, align 8
  %20 = add i64 2, %19
  store i64 %20, i64* %15, align 8
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %22 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, 24
  %26 = load i64, i64* %15, align 8
  %27 = add i64 %25, %26
  %28 = load i64, i64* %11, align 8
  %29 = add i64 %27, %28
  %30 = call %struct.sk_buff* @dev_alloc_skb(i64 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %14, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %5
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %85

34:                                               ; preds = %5
  %35 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %37 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @skb_reserve(%struct.sk_buff* %35, i64 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %42 = call %struct.ieee80211_hdr_3addr* @skb_put_zero(%struct.sk_buff* %41, i32 24)
  store %struct.ieee80211_hdr_3addr* %42, %struct.ieee80211_hdr_3addr** %13, align 8
  %43 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %44 = load i32, i32* @IEEE80211_STYPE_PROBE_REQ, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @cpu_to_le16(i32 %45)
  %47 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %13, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %13, align 8
  %50 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @eth_broadcast_addr(i32 %51)
  %53 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %13, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i64, i64* @ETH_ALEN, align 8
  %58 = call i32 @memcpy(i32* %55, i32* %56, i64 %57)
  %59 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %13, align 8
  %60 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @eth_broadcast_addr(i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %64 = load i64, i64* %15, align 8
  %65 = call i32* @skb_put(%struct.sk_buff* %63, i64 %64)
  store i32* %65, i32** %16, align 8
  %66 = load i32, i32* @WLAN_EID_SSID, align 4
  %67 = load i32*, i32** %16, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %16, align 8
  store i32 %66, i32* %67, align 4
  %69 = load i64, i64* %10, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i32*, i32** %16, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %16, align 8
  store i32 %70, i32* %71, align 4
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %34
  %76 = load i32*, i32** %16, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @memcpy(i32* %76, i32* %77, i64 %78)
  br label %80

80:                                               ; preds = %75, %34
  %81 = load i64, i64* %10, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 %81
  store i32* %83, i32** %16, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %84, %struct.sk_buff** %6, align 8
  br label %85

85:                                               ; preds = %80, %33
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %86
}

declare dso_local %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local %struct.ieee80211_hdr_3addr* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
