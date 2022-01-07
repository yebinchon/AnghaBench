; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_send_deauth_disassoc.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_send_deauth_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_13__, %struct.TYPE_11__, %struct.ieee80211_local* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32* }
%struct.ieee80211_local = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_9__, i32, i32, i32, i64, i64, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_14__ = type { i32 }

@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_DEAUTH_FRAME_LEN = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_STA_MFP_ENABLED = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_DONT_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_send_deauth_disassoc(%struct.ieee80211_sub_if_data* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ieee80211_local*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.ieee80211_mgmt*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 2
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %19, align 8
  store %struct.ieee80211_local* %20, %struct.ieee80211_local** %15, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = bitcast i8* %22 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %23, %struct.ieee80211_mgmt** %17, align 8
  %24 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %25 = load i32, i32* %11, align 4
  %26 = or i32 %24, %25
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %29 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %31 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %33 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %35 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i32 @memcpy(i32 %36, i32* %37, i32 %38)
  %40 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %41 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(i32 %42, i32* %46, i32 %47)
  %49 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %50 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = call i32 @memcpy(i32 %51, i32* %52, i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = call i8* @cpu_to_le16(i32 %55)
  %57 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %58 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i8* %56, i8** %60, align 8
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %111

63:                                               ; preds = %7
  %64 = load %struct.ieee80211_local*, %struct.ieee80211_local** %15, align 8
  %65 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IEEE80211_DEAUTH_FRAME_LEN, align 8
  %69 = add nsw i64 %67, %68
  %70 = call %struct.sk_buff* @dev_alloc_skb(i64 %69)
  store %struct.sk_buff* %70, %struct.sk_buff** %16, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %63
  br label %111

74:                                               ; preds = %63
  %75 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %76 = load %struct.ieee80211_local*, %struct.ieee80211_local** %15, align 8
  %77 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @skb_reserve(%struct.sk_buff* %75, i64 %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %82 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %17, align 8
  %83 = load i64, i64* @IEEE80211_DEAUTH_FRAME_LEN, align 8
  %84 = call i32 @skb_put_data(%struct.sk_buff* %81, %struct.ieee80211_mgmt* %82, i64 %83)
  %85 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %86 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %100, label %91

91:                                               ; preds = %74
  %92 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %93 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @IEEE80211_STA_MFP_ENABLED, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %91, %74
  %101 = load i32, i32* @IEEE80211_TX_INTFL_DONT_ENCRYPT, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %103 = call %struct.TYPE_14__* @IEEE80211_SKB_CB(%struct.sk_buff* %102)
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %101
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %100, %91
  %108 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %110 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %108, %struct.sk_buff* %109)
  br label %111

111:                                              ; preds = %73, %107, %7
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, %struct.ieee80211_mgmt*, i64) #1

declare dso_local %struct.TYPE_14__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
