; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_aes_cmac_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_aes_cmac_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { i32, %struct.ieee80211_key* }
%struct.ieee80211_key = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_tx_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ieee80211_mmie = type { i32, i32, i32, i32, i32 }

@TX_DROP = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIE = common dso_local global i32 0, align 4
@TX_CONTINUE = common dso_local global i32 0, align 4
@WLAN_EID_MMIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_crypto_aes_cmac_encrypt(%struct.ieee80211_tx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_tx_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.ieee80211_key*, align 8
  %7 = alloca %struct.ieee80211_mmie*, align 8
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
  br label %107

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
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %22
  %34 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %42, i32* %2, align 4
  br label %107

43:                                               ; preds = %33, %22
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @skb_tailroom(%struct.sk_buff* %44)
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %46, 20
  %48 = zext i1 %47 to i32
  %49 = call i64 @WARN_ON(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @TX_DROP, align 4
  store i32 %52, i32* %2, align 4
  br label %107

53:                                               ; preds = %43
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call %struct.ieee80211_mmie* @skb_put(%struct.sk_buff* %54, i32 20)
  store %struct.ieee80211_mmie* %55, %struct.ieee80211_mmie** %7, align 8
  %56 = load i32, i32* @WLAN_EID_MMIE, align 4
  %57 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %7, align 8
  %58 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %59, i32 0, i32 0
  store i32 18, i32* %60, align 4
  %61 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cpu_to_le16(i32 %64)
  %66 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %69 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = call i32 @atomic64_inc_return(i32* %70)
  store i32 %71, i32* %9, align 4
  %72 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %7, align 8
  %73 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @bip_ipn_set64(i32 %74, i32 %75)
  %77 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %53
  %83 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %83, i32* %2, align 4
  br label %107

84:                                               ; preds = %53
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %87 = call i32 @bip_aad(%struct.sk_buff* %85, i32* %86)
  %88 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %89 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 24
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %100, 24
  %102 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %7, align 8
  %103 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ieee80211_aes_cmac(i32 %92, i32* %93, i64 %97, i64 %101, i32 %104)
  %106 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %84, %82, %51, %41, %20
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_mmie* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i32 @bip_ipn_set64(i32, i32) #1

declare dso_local i32 @bip_aad(%struct.sk_buff*, i32*) #1

declare dso_local i32 @ieee80211_aes_cmac(i32, i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
