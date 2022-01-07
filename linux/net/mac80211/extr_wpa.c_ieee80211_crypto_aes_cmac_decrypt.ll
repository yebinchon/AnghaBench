; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_aes_cmac_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_aes_cmac_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { %struct.ieee80211_key*, %struct.sk_buff* }
%struct.ieee80211_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_mmie = type { i64, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@RX_CONTINUE = common dso_local global i32 0, align 4
@RX_DROP_UNUSABLE = common dso_local global i32 0, align 4
@WLAN_EID_MMIE = common dso_local global i64 0, align 8
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_crypto_aes_cmac_decrypt(%struct.ieee80211_rx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_rx_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_rx_status*, align 8
  %6 = alloca %struct.ieee80211_key*, align 8
  %7 = alloca %struct.ieee80211_mmie*, align 8
  %8 = alloca [20 x i32], align 16
  %9 = alloca [8 x i32], align 16
  %10 = alloca [6 x i32], align 16
  %11 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %3, align 8
  %12 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %12, i32 0, i32 1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %15)
  store %struct.ieee80211_rx_status* %16, %struct.ieee80211_rx_status** %5, align 8
  %17 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %17, i32 0, i32 0
  %19 = load %struct.ieee80211_key*, %struct.ieee80211_key** %18, align 8
  store %struct.ieee80211_key* %19, %struct.ieee80211_key** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %24, %struct.ieee80211_hdr** %11, align 8
  %25 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %26 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ieee80211_is_mgmt(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %31, i32* %2, align 4
  br label %145

32:                                               ; preds = %1
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 48
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %39, i32* %2, align 4
  br label %145

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = sext i32 %47 to i64
  %49 = sub i64 %48, 24
  %50 = inttoptr i64 %49 to %struct.ieee80211_mmie*
  store %struct.ieee80211_mmie* %50, %struct.ieee80211_mmie** %7, align 8
  %51 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @WLAN_EID_MMIE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %40
  %57 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %7, align 8
  %58 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = icmp ne i64 %60, 22
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %40
  %63 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %63, i32* %2, align 4
  br label %145

64:                                               ; preds = %56
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %66 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @bip_ipn_swap(i32* %65, i32 %68)
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %71 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %72 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @memcmp(i32* %70, i32 %75, i32 6)
  %77 = icmp sle i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %64
  %79 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %85, i32* %2, align 4
  br label %145

86:                                               ; preds = %64
  %87 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %88 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %128, label %93

93:                                               ; preds = %86
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %96 = call i32 @bip_aad(%struct.sk_buff* %94, i32* %95)
  %97 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %98 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 24
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %109, 24
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %112 = call i32 @ieee80211_aes_cmac(i32 %101, i32* %102, i32 %106, i32 %110, i32* %111)
  %113 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %114 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %7, align 8
  %115 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @crypto_memneq(i32* %113, i32 %116, i32 4)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %93
  %120 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %121 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %126, i32* %2, align 4
  br label %145

127:                                              ; preds = %93
  br label %128

128:                                              ; preds = %127, %86
  %129 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %130 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %135 = call i32 @memcpy(i32 %133, i32* %134, i32 6)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = sub i64 %140, 24
  %142 = trunc i64 %141 to i32
  %143 = call i32 @skb_trim(%struct.sk_buff* %136, i32 %142)
  %144 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %128, %119, %78, %62, %38, %30
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_is_mgmt(i32) #1

declare dso_local i32 @bip_ipn_swap(i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @bip_aad(%struct.sk_buff*, i32*) #1

declare dso_local i32 @ieee80211_aes_cmac(i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @crypto_memneq(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
