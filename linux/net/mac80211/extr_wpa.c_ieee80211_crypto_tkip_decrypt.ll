; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_tkip_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_tkip_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.sk_buff*, %struct.ieee80211_key* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_key = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_rx_status = type { i32 }

@RX_CONTINUE = common dso_local global i32 0, align 4
@RX_DROP_UNUSABLE = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@TKIP_DECRYPT_OK = common dso_local global i32 0, align 4
@RX_FLAG_ICV_STRIPPED = common dso_local global i32 0, align 4
@IEEE80211_TKIP_ICV_LEN = common dso_local global i64 0, align 8
@IEEE80211_TKIP_IV_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_crypto_tkip_decrypt(%struct.ieee80211_rx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_rx_data*, align 8
  %4 = alloca %struct.ieee80211_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_key*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ieee80211_rx_status*, align 8
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %3, align 8
  %11 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %11, i32 0, i32 5
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %4, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %17, i32 0, i32 6
  %19 = load %struct.ieee80211_key*, %struct.ieee80211_key** %18, align 8
  store %struct.ieee80211_key* %19, %struct.ieee80211_key** %8, align 8
  %20 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %20, i32 0, i32 5
  %22 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  store %struct.sk_buff* %22, %struct.sk_buff** %9, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %23)
  store %struct.ieee80211_rx_status* %24, %struct.ieee80211_rx_status** %10, align 8
  %25 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ieee80211_hdrlen(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ieee80211_is_data(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %35, i32* %2, align 4
  br label %142

36:                                               ; preds = %1
  %37 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %44, %45
  %47 = icmp slt i32 %46, 12
  br i1 %47, label %48, label %50

48:                                               ; preds = %41, %36
  %49 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %49, i32* %2, align 4
  br label %142

50:                                               ; preds = %41
  %51 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %52 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %51, i32 0, i32 5
  %53 = load %struct.sk_buff*, %struct.sk_buff** %52, align 8
  %54 = call i64 @skb_linearize(%struct.sk_buff* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %57, i32* %2, align 4
  br label %142

58:                                               ; preds = %50
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = bitcast i8* %62 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %63, %struct.ieee80211_hdr** %4, align 8
  %64 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %65 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  store i32 1, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %58
  %72 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %73 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %72, i32 0, i32 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sub nsw i32 %85, %86
  %88 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %89 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %88, i32 0, i32 3
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %95 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %99 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %102 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %101, i32 0, i32 1
  %103 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %104 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %103, i32 0, i32 0
  %105 = call i32 @ieee80211_tkip_decrypt_data(i32* %75, %struct.ieee80211_key* %76, i64 %82, i32 %87, i32 %93, i32 %96, i32 %97, i32 %100, i32* %102, i32* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @TKIP_DECRYPT_OK, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %71
  %110 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %110, i32* %2, align 4
  br label %142

111:                                              ; preds = %71
  %112 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %113 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @RX_FLAG_ICV_STRIPPED, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %111
  %119 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* @IEEE80211_TKIP_ICV_LEN, align 8
  %125 = sub nsw i64 %123, %124
  %126 = call i32 @skb_trim(%struct.sk_buff* %119, i64 %125)
  br label %127

127:                                              ; preds = %118, %111
  %128 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @IEEE80211_TKIP_IV_LEN, align 8
  %132 = add nsw i64 %130, %131
  %133 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @memmove(i64 %132, i64 %135, i32 %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %139 = load i64, i64* @IEEE80211_TKIP_IV_LEN, align 8
  %140 = call i32 @skb_pull(%struct.sk_buff* %138, i64 %139)
  %141 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %127, %109, %56, %48, %34
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tkip_decrypt_data(i32*, %struct.ieee80211_key*, i64, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
