; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_cs_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_cs_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { %struct.ieee80211_key* }
%struct.ieee80211_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@IEEE80211_KEY_FLAG_PUT_IV_SPACE = common dso_local global i32 0, align 4
@TX_CONTINUE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_data*, %struct.sk_buff*)* @ieee80211_crypto_cs_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_crypto_cs_encrypt(%struct.ieee80211_tx_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_tx_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.ieee80211_key*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %15, %struct.ieee80211_hdr** %6, align 8
  %16 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_key*, %struct.ieee80211_key** %17, align 8
  store %struct.ieee80211_key* %18, %struct.ieee80211_key** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %19)
  store %struct.ieee80211_tx_info* %20, %struct.ieee80211_tx_info** %8, align 8
  %21 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %2
  %31 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %41, i32* %3, align 4
  br label %75

42:                                               ; preds = %30, %2
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i64 @skb_headroom(%struct.sk_buff* %43)
  %45 = load i64, i64* %11, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call i64 @pskb_expand_head(%struct.sk_buff* %48, i64 %49, i32 0, i32 %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %47, %42
  %54 = phi i1 [ false, %42 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @TX_DROP, align 4
  store i32 %59, i32* %3, align 4
  br label %75

60:                                               ; preds = %53
  %61 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ieee80211_hdrlen(i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i64* @skb_push(%struct.sk_buff* %65, i64 %66)
  store i64* %67, i64** %10, align 8
  %68 = load i64*, i64** %10, align 8
  %69 = load i64*, i64** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @memmove(i64* %68, i64* %71, i32 %72)
  %74 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %60, %58, %40
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i64, i32, i32) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i64* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
