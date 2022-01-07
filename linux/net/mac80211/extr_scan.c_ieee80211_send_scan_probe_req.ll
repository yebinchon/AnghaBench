; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_send_scan_probe_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_send_scan_probe_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_PROBE_FLAG_RANDOM_SN = common dso_local global i32 0, align 4
@IEEE80211_TX_NO_SEQNO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, i32*, i32*, i32*, i64, i32*, i64, i32, i32, i32, %struct.ieee80211_channel*)* @ieee80211_send_scan_probe_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_send_scan_probe_req(%struct.ieee80211_sub_if_data* %0, i32* %1, i32* %2, i32* %3, i64 %4, i32* %5, i64 %6, i32 %7, i32 %8, i32 %9, %struct.ieee80211_channel* %10) #0 {
  %12 = alloca %struct.ieee80211_sub_if_data*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.ieee80211_channel*, align 8
  %23 = alloca %struct.sk_buff*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.ieee80211_hdr*, align 8
  %26 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i64 %4, i64* %16, align 8
  store i32* %5, i32** %17, align 8
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store %struct.ieee80211_channel* %10, %struct.ieee80211_channel** %22, align 8
  store i32 0, i32* %24, align 4
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = load i32, i32* %19, align 4
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %22, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = load i64, i64* %16, align 8
  %34 = load i32*, i32** %17, align 8
  %35 = load i64, i64* %18, align 8
  %36 = load i32, i32* %20, align 4
  %37 = call %struct.sk_buff* @ieee80211_build_probe_req(%struct.ieee80211_sub_if_data* %27, i32* %28, i32* %29, i32 %30, %struct.ieee80211_channel* %31, i32* %32, i64 %33, i32* %34, i64 %35, i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %23, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %40, label %74

40:                                               ; preds = %11
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* @IEEE80211_PROBE_FLAG_RANDOM_SN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = bitcast i8* %49 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %50, %struct.ieee80211_hdr** %25, align 8
  %51 = call i32 (...) @get_random_u32()
  store i32 %51, i32* %26, align 4
  %52 = load i32, i32* @IEEE80211_TX_NO_SEQNO, align 4
  %53 = load i32, i32* %24, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %24, align 4
  %55 = load i32, i32* %26, align 4
  %56 = call i32 @IEEE80211_SN_TO_SEQ(i32 %55)
  %57 = call i32 @cpu_to_le16(i32 %56)
  %58 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %25, align 8
  %59 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %45, %40
  %61 = load i32, i32* %21, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %63 = call %struct.TYPE_2__* @IEEE80211_SKB_CB(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 4
  %67 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %22, align 8
  %70 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %24, align 4
  %73 = call i32 @ieee80211_tx_skb_tid_band(%struct.ieee80211_sub_if_data* %67, %struct.sk_buff* %68, i32 7, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %60, %11
  ret void
}

declare dso_local %struct.sk_buff* @ieee80211_build_probe_req(%struct.ieee80211_sub_if_data*, i32*, i32*, i32, %struct.ieee80211_channel*, i32*, i64, i32*, i64, i32) #1

declare dso_local i32 @get_random_u32(...) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @IEEE80211_SN_TO_SEQ(i32) #1

declare dso_local %struct.TYPE_2__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_skb_tid_band(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
