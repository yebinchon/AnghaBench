; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wep.c_ieee80211_crypto_wep_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wep.c_ieee80211_crypto_wep_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@RX_CONTINUE = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_DROP_UNUSABLE = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@IEEE80211_WEP_IV_LEN = common dso_local global i64 0, align 8
@RX_FLAG_ICV_STRIPPED = common dso_local global i32 0, align 4
@IEEE80211_WEP_ICV_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_crypto_wep_decrypt(%struct.ieee80211_rx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_rx_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_rx_status*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %3, align 8
  %8 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %8, i32 0, i32 0
  %10 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %10, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %11)
  store %struct.ieee80211_rx_status* %12, %struct.ieee80211_rx_status** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %6, align 8
  %17 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ieee80211_is_data(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ieee80211_is_auth(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %28, i32* %2, align 4
  br label %114

29:                                               ; preds = %23, %1
  %30 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %29
  %37 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %37, i32 0, i32 0
  %39 = load %struct.sk_buff*, %struct.sk_buff** %38, align 8
  %40 = call i64 @skb_linearize(%struct.sk_buff* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %43, i32* %2, align 4
  br label %114

44:                                               ; preds = %36
  %45 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %49 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %48, i32 0, i32 0
  %50 = load %struct.sk_buff*, %struct.sk_buff** %49, align 8
  %51 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %52 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @ieee80211_wep_decrypt(i32 %47, %struct.sk_buff* %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %57, i32* %2, align 4
  br label %114

58:                                               ; preds = %44
  br label %112

59:                                               ; preds = %29
  %60 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %111, label %66

66:                                               ; preds = %59
  %67 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %68 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %67, i32 0, i32 0
  %69 = load %struct.sk_buff*, %struct.sk_buff** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @ieee80211_hdrlen(i32 %70)
  %72 = load i64, i64* @IEEE80211_WEP_IV_LEN, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @pskb_may_pull(%struct.sk_buff* %69, i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %66
  %77 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %77, i32* %2, align 4
  br label %114

78:                                               ; preds = %66
  %79 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %80 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %83 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %82, i32 0, i32 0
  %84 = load %struct.sk_buff*, %struct.sk_buff** %83, align 8
  %85 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %86 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ieee80211_wep_remove_iv(i32 %81, %struct.sk_buff* %84, i32 %87)
  %89 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %90 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @RX_FLAG_ICV_STRIPPED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %78
  %96 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %97 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %96, i32 0, i32 0
  %98 = load %struct.sk_buff*, %struct.sk_buff** %97, align 8
  %99 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %100 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %99, i32 0, i32 0
  %101 = load %struct.sk_buff*, %struct.sk_buff** %100, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @IEEE80211_WEP_ICV_LEN, align 8
  %105 = sub nsw i64 %103, %104
  %106 = call i64 @pskb_trim(%struct.sk_buff* %98, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %95
  %109 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %109, i32* %2, align 4
  br label %114

110:                                              ; preds = %95, %78
  br label %111

111:                                              ; preds = %110, %59
  br label %112

112:                                              ; preds = %111, %58
  %113 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %108, %76, %56, %42, %27
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @ieee80211_is_auth(i32) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_wep_decrypt(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @ieee80211_wep_remove_iv(i32, %struct.sk_buff*, i32) #1

declare dso_local i64 @pskb_trim(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
