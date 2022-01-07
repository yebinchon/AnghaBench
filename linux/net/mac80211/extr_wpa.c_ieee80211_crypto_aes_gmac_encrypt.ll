; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_aes_gmac_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_aes_gmac_encrypt.c"
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
%struct.ieee80211_hdr = type { i32 }

@GMAC_AAD_LEN = common dso_local global i32 0, align 4
@GMAC_NONCE_LEN = common dso_local global i32 0, align 4
@TX_DROP = common dso_local global i32 0, align 4
@TX_CONTINUE = common dso_local global i32 0, align 4
@WLAN_EID_MMIE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_crypto_aes_gmac_encrypt(%struct.ieee80211_tx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_tx_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.ieee80211_key*, align 8
  %7 = alloca %struct.ieee80211_mmie_16*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %3, align 8
  %14 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %14, i32 0, i32 1
  %16 = load %struct.ieee80211_key*, %struct.ieee80211_key** %15, align 8
  store %struct.ieee80211_key* %16, %struct.ieee80211_key** %6, align 8
  %17 = load i32, i32* @GMAC_AAD_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i32, i32* @GMAC_NONCE_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %24 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %24, i32 0, i32 0
  %26 = call i32 @skb_queue_len(i32* %25)
  %27 = icmp ne i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @TX_DROP, align 4
  store i32 %32, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %120

33:                                               ; preds = %1
  %34 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %34, i32 0, i32 0
  %36 = call %struct.sk_buff* @skb_peek(i32* %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %4, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %37)
  store %struct.ieee80211_tx_info* %38, %struct.ieee80211_tx_info** %5, align 8
  %39 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %45, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %120

46:                                               ; preds = %33
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @skb_tailroom(%struct.sk_buff* %47)
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, 20
  %51 = zext i1 %50 to i32
  %52 = call i64 @WARN_ON(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @TX_DROP, align 4
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %120

56:                                               ; preds = %46
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call %struct.ieee80211_mmie_16* @skb_put(%struct.sk_buff* %57, i32 20)
  store %struct.ieee80211_mmie_16* %58, %struct.ieee80211_mmie_16** %7, align 8
  %59 = load i32, i32* @WLAN_EID_MMIE, align 4
  %60 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %7, align 8
  %61 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %7, align 8
  %63 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %62, i32 0, i32 0
  store i32 18, i32* %63, align 4
  %64 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cpu_to_le16(i32 %67)
  %69 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %7, align 8
  %70 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %72 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = call i32 @atomic64_inc_return(i32* %73)
  store i32 %74, i32* %11, align 4
  %75 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %7, align 8
  %76 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @bip_ipn_set64(i32 %77, i32 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @bip_aad(%struct.sk_buff* %80, i32* %20)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %85, %struct.ieee80211_hdr** %8, align 8
  %86 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %87 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ETH_ALEN, align 4
  %90 = call i32 @memcpy(i32* %23, i32 %88, i32 %89)
  %91 = load i32, i32* @ETH_ALEN, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %23, i64 %92
  %94 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %7, align 8
  %95 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @bip_ipn_swap(i32* %93, i32 %96)
  %98 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %99 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 24
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, 24
  %111 = load %struct.ieee80211_mmie_16*, %struct.ieee80211_mmie_16** %7, align 8
  %112 = getelementptr inbounds %struct.ieee80211_mmie_16, %struct.ieee80211_mmie_16* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @ieee80211_aes_gmac(i32 %102, i32* %20, i32* %23, i64 %106, i64 %110, i32 %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %56
  %117 = load i32, i32* @TX_DROP, align 4
  store i32 %117, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %120

118:                                              ; preds = %56
  %119 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %119, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %120

120:                                              ; preds = %118, %116, %54, %44, %31
  %121 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @skb_queue_len(i32*) #2

declare dso_local %struct.sk_buff* @skb_peek(i32*) #2

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #2

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #2

declare dso_local %struct.ieee80211_mmie_16* @skb_put(%struct.sk_buff*, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @atomic64_inc_return(i32*) #2

declare dso_local i32 @bip_ipn_set64(i32, i32) #2

declare dso_local i32 @bip_aad(%struct.sk_buff*, i32*) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @bip_ipn_swap(i32*, i32) #2

declare dso_local i64 @ieee80211_aes_gmac(i32, i32*, i32*, i64, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
