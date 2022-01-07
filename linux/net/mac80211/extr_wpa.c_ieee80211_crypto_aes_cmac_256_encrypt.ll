; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_aes_cmac_256_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_aes_cmac_256_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { i32, %struct.ieee80211_key* }
%struct.ieee80211_key = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_tx_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_mmie_16 = type { i32, i32, i32, i32, i32 }

@TX_DROP = common dso_local global i32 0, align 4
@TX_CONTINUE = common dso_local global i32 0, align 4
@WLAN_EID_MMIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_crypto_aes_cmac_256_encrypt(%struct.ieee80211_tx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_tx_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.ieee80211_key*, align 8
  %7 = alloca %struct.ieee80211_mmie_16*, align 8
  %8 = alloca [20 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %3, align 8
  %10 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %10, i32 0, i32 1
  %12 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  store %struct.ieee80211_key* %12, %struct.ieee80211_key** %6, align 8
  %13 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %13, i32 0, i32 0
  %15 = call i32 @skb_queue_len(i32* %14)
  %16 = icmp ne i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @TX_DROP, align 4
  store i32 %21, i32* %2, align 4
  br label %91

22:                                               ; preds = %1
  %23 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %23, i32 0, i32 0
  %25 = call %struct.sk_buff* @skb_peek(i32* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %26)
  store %struct.ieee80211_tx_info* %27, %struct.ieee80211_tx_info** %5, align 8
  %28 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %34, i32* %2, align 4
  br label %91

35:                                               ; preds = %22
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @skb_tailroom(%struct.sk_buff* %36)
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 20
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @TX_DROP, align 4
  store i32 %44, i32* %2, align 4
  br label %91

45:                                               ; preds = %35
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call %struct.ieee80211_mmie_16* @skb_put(%struct.sk_buff* %46, i32 20)
  store %struct.ieee80211_mmie_16* %47, %struct.ieee80211_mmie_16** %7, align 8
  %48 = load i32, i32* @WLAN_EID_MMIE, align 4
  %49 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %51, i32 0, i32 0
  store i32 18, i32* %52, align 4
  %53 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cpu_to_le16(i32 %56)
  %58 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %61 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = call i32 @atomic64_inc_return(i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %7, align 8
  %65 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @bip_ipn_set64(i32 %66, i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %71 = call i32 @bip_aad(%struct.sk_buff* %69, i32* %70)
  %72 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %73 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 24
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, 24
  %86 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %7, align 8
  %87 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ieee80211_aes_cmac_256(i32 %76, i32* %77, i64 %81, i64 %85, i32 %88)
  %90 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %45, %43, %33, %20
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_mmie_16* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i32 @bip_ipn_set64(i32, i32) #1

declare dso_local i32 @bip_aad(%struct.sk_buff*, i32*) #1

declare dso_local i32 @ieee80211_aes_cmac_256(i32, i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
