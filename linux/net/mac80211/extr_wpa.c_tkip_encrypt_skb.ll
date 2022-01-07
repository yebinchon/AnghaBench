; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_tkip_encrypt_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_tkip_encrypt_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { %struct.TYPE_7__*, %struct.ieee80211_key* }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_key = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PUT_IV_SPACE = common dso_local global i32 0, align 4
@IEEE80211_TKIP_ICV_LEN = common dso_local global i32 0, align 4
@IEEE80211_TKIP_IV_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_data*, %struct.sk_buff*)* @tkip_encrypt_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tkip_encrypt_skb(%struct.ieee80211_tx_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_tx_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.ieee80211_key*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %17, %struct.ieee80211_hdr** %6, align 8
  %18 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %18, i32 0, i32 1
  %20 = load %struct.ieee80211_key*, %struct.ieee80211_key** %19, align 8
  store %struct.ieee80211_key* %20, %struct.ieee80211_key** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %21)
  store %struct.ieee80211_tx_info* %22, %struct.ieee80211_tx_info** %8, align 8
  %23 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %2
  %29 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %28
  %39 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %142

49:                                               ; preds = %38, %28, %2
  %50 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %51 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ieee80211_hdrlen(i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sub i32 %56, %57
  store i32 %58, i32* %10, align 4
  %59 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %60 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = icmp ne %struct.TYPE_5__* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %67

65:                                               ; preds = %49
  %66 = load i32, i32* @IEEE80211_TKIP_ICV_LEN, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i32 @skb_tailroom(%struct.sk_buff* %68)
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call i64 @skb_headroom(%struct.sk_buff* %73)
  %75 = load i64, i64* @IEEE80211_TKIP_IV_LEN, align 8
  %76 = icmp slt i64 %74, %75
  br label %77

77:                                               ; preds = %72, %67
  %78 = phi i1 [ true, %67 ], [ %76, %72 ]
  %79 = zext i1 %78 to i32
  %80 = call i64 @WARN_ON(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 -1, i32* %3, align 4
  br label %142

83:                                               ; preds = %77
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = load i64, i64* @IEEE80211_TKIP_IV_LEN, align 8
  %86 = call i32* @skb_push(%struct.sk_buff* %84, i64 %85)
  store i32* %86, i32** %13, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = load i64, i64* @IEEE80211_TKIP_IV_LEN, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @memmove(i32* %87, i32* %90, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i32*, i32** %13, align 8
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %13, align 8
  %97 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %98 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = icmp ne %struct.TYPE_5__* %100, null
  br i1 %101, label %102, label %113

102:                                              ; preds = %83
  %103 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %104 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %142

113:                                              ; preds = %102, %83
  %114 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %115 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = call i32 @atomic64_inc_return(i32* %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32*, i32** %13, align 8
  %119 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %120 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %119, i32 0, i32 0
  %121 = load i32, i32* %12, align 4
  %122 = call i32* @ieee80211_tkip_add_iv(i32* %118, %struct.TYPE_8__* %120, i32 %121)
  store i32* %122, i32** %13, align 8
  %123 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %124 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = icmp ne %struct.TYPE_5__* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %142

129:                                              ; preds = %113
  %130 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %131 = load i32, i32* @IEEE80211_TKIP_ICV_LEN, align 4
  %132 = call i32 @skb_put(%struct.sk_buff* %130, i32 %131)
  %133 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %4, align 8
  %134 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %139 = load i32*, i32** %13, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @ieee80211_tkip_encrypt_data(i32* %136, %struct.ieee80211_key* %137, %struct.sk_buff* %138, i32* %139, i32 %140)
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %129, %128, %112, %82, %48
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i32* @ieee80211_tkip_add_iv(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_tkip_encrypt_data(i32*, %struct.ieee80211_key*, %struct.sk_buff*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
