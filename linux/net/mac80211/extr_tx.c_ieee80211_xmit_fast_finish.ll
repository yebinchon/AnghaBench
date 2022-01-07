; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_xmit_fast_finish.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_xmit_fast_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.sta_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32*, i64* }
%struct.ieee80211_key = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.sk_buff = type { i64*, i64, i64, i32 }
%struct.ieee80211_tx_info = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_9__* }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }

@IEEE80211_NUM_TIDS = common dso_local global i64 0, align 8
@IEEE80211_STYPE_QOS_DATA = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_TAG1D_MASK = common dso_local global i64 0, align 8
@IEEE80211_TX_CTL_ASSIGN_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sta_info*, i64, %struct.ieee80211_key*, %struct.sk_buff*)* @ieee80211_xmit_fast_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_xmit_fast_finish(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, i64 %2, %struct.ieee80211_key* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee80211_key*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.ieee80211_hdr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.sta_info* %1, %struct.sta_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ieee80211_key* %3, %struct.ieee80211_key** %9, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %17 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %16)
  store %struct.ieee80211_tx_info* %17, %struct.ieee80211_tx_info** %11, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = bitcast i64* %20 to i8*
  %22 = bitcast i8* %21 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %22, %struct.ieee80211_hdr** %12, align 8
  %23 = load i64, i64* @IEEE80211_NUM_TIDS, align 8
  store i64 %23, i64* %13, align 8
  %24 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %25 = icmp ne %struct.ieee80211_key* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %28 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %27, i32 0, i32 0
  %29 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %30 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %31, align 8
  br label %32

32:                                               ; preds = %26, %5
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @ieee80211_tx_stats(i32 %35, i64 %38)
  %40 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %41 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IEEE80211_STYPE_QOS_DATA, align 4
  %44 = call i32 @cpu_to_le16(i32 %43)
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %32
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IEEE80211_QOS_CTL_TAG1D_MASK, align 8
  %52 = and i64 %50, %51
  store i64 %52, i64* %13, align 8
  %53 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %54 = load i64, i64* %13, align 8
  %55 = call i32 @ieee80211_tx_next_seq(%struct.sta_info* %53, i64 %54)
  %56 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %74

58:                                               ; preds = %32
  %59 = load i32, i32* @IEEE80211_TX_CTL_ASSIGN_SEQ, align 4
  %60 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @cpu_to_le16(i32 %66)
  %68 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %69 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %71 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 16
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %58, %47
  %75 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %76 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %75)
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %74
  %81 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %85 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %84)
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @DIV_ROUND_UP(i64 %83, i64 %87)
  %89 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %90 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %88
  store i64 %96, i64* %94, align 8
  br label %106

97:                                               ; preds = %74
  %98 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %99 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* %13, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8
  br label %106

106:                                              ; preds = %97, %80
  %107 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %108 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %112 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %111)
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %116 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %121 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %125 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %124)
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %119
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %126, align 4
  %131 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %132 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %136 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %135)
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load i64, i64* %8, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %196

142:                                              ; preds = %106
  %143 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* %8, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  store i64* %147, i64** %15, align 8
  %148 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %149 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  switch i32 %151, label %195 [
    i32 131, label %152
    i32 130, label %152
    i32 129, label %152
    i32 128, label %152
  ]

152:                                              ; preds = %142, %142, %142, %142
  %153 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %154 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  %156 = call i32 @atomic64_inc_return(i32* %155)
  store i32 %156, i32* %14, align 4
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64*, i64** %15, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 0
  store i64 %158, i64* %160, align 8
  %161 = load i32, i32* %14, align 4
  %162 = ashr i32 %161, 8
  %163 = sext i32 %162 to i64
  %164 = load i64*, i64** %15, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 1
  store i64 %163, i64* %165, align 8
  %166 = load %struct.ieee80211_key*, %struct.ieee80211_key** %9, align 8
  %167 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 6
  %171 = or i32 32, %170
  %172 = sext i32 %171 to i64
  %173 = load i64*, i64** %15, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 3
  store i64 %172, i64* %174, align 8
  %175 = load i32, i32* %14, align 4
  %176 = ashr i32 %175, 16
  %177 = sext i32 %176 to i64
  %178 = load i64*, i64** %15, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 4
  store i64 %177, i64* %179, align 8
  %180 = load i32, i32* %14, align 4
  %181 = ashr i32 %180, 24
  %182 = sext i32 %181 to i64
  %183 = load i64*, i64** %15, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 5
  store i64 %182, i64* %184, align 8
  %185 = load i32, i32* %14, align 4
  %186 = ashr i32 %185, 32
  %187 = sext i32 %186 to i64
  %188 = load i64*, i64** %15, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 6
  store i64 %187, i64* %189, align 8
  %190 = load i32, i32* %14, align 4
  %191 = ashr i32 %190, 40
  %192 = sext i32 %191 to i64
  %193 = load i64*, i64** %15, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 7
  store i64 %192, i64* %194, align 8
  br label %195

195:                                              ; preds = %142, %152
  br label %196

196:                                              ; preds = %195, %106
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_stats(i32, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ieee80211_tx_next_seq(%struct.sta_info*, i64) #1

declare dso_local %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
