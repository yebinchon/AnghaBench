; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_spectmgmt.c_ieee80211_send_refuse_measurement_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_spectmgmt.c_ieee80211_send_refuse_measurement_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_9__, %struct.ieee80211_local* }
%struct.TYPE_9__ = type { i32* }
%struct.ieee80211_local = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.ieee80211_msrment_ie = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_13__, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_14__, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ACTION = common dso_local global i32 0, align 4
@WLAN_CATEGORY_SPECTRUM_MGMT = common dso_local global i32 0, align 4
@WLAN_ACTION_SPCT_MSR_RPRT = common dso_local global i32 0, align 4
@WLAN_EID_MEASURE_REPORT = common dso_local global i32 0, align 4
@IEEE80211_SPCT_MSR_RPRT_MODE_REFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_msrment_ie*, i32*, i32*, i32)* @ieee80211_send_refuse_measurement_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_send_refuse_measurement_request(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_msrment_ie* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_msrment_ie*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_local*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.ieee80211_mgmt*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.ieee80211_msrment_ie* %1, %struct.ieee80211_msrment_ie** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 1
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %15, align 8
  store %struct.ieee80211_local* %16, %struct.ieee80211_local** %11, align 8
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %18 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 48, %20
  %22 = add i64 %21, 8
  %23 = call %struct.sk_buff* @dev_alloc_skb(i64 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %12, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  br label %137

27:                                               ; preds = %5
  %28 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @skb_reserve(%struct.sk_buff* %28, i64 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %35 = call %struct.ieee80211_mgmt* @skb_put_zero(%struct.sk_buff* %34, i32 24)
  store %struct.ieee80211_mgmt* %35, %struct.ieee80211_mgmt** %13, align 8
  %36 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %37 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @memcpy(i32 %38, i32* %39, i32 %40)
  %42 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %43 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = call i32 @memcpy(i32 %44, i32* %48, i32 %49)
  %51 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %52 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* @ETH_ALEN, align 4
  %56 = call i32 @memcpy(i32 %53, i32* %54, i32 %55)
  %57 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %58 = load i32, i32* @IEEE80211_STYPE_ACTION, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @cpu_to_le16(i32 %59)
  %61 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %62 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %64 = call i32 @skb_put(%struct.sk_buff* %63, i32 29)
  %65 = load i32, i32* @WLAN_CATEGORY_SPECTRUM_MGMT, align 4
  %66 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %67 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* @WLAN_ACTION_SPCT_MSR_RPRT, align 4
  %71 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %72 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 4
  store i32 %70, i32* %76, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %79 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  store i32 %77, i32* %83, align 4
  %84 = load i32, i32* @WLAN_EID_MEASURE_REPORT, align 4
  %85 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %86 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  store i32 %84, i32* %90, align 4
  %91 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %92 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i32 8, i32* %96, align 4
  %97 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %98 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = call i32 @memset(%struct.TYPE_14__* %102, i32 0, i32 8)
  %104 = load %struct.ieee80211_msrment_ie*, %struct.ieee80211_msrment_ie** %7, align 8
  %105 = getelementptr inbounds %struct.ieee80211_msrment_ie, %struct.ieee80211_msrment_ie* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %108 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  store i32 %106, i32* %113, align 4
  %114 = load i32, i32* @IEEE80211_SPCT_MSR_RPRT_MODE_REFUSED, align 4
  %115 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %116 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %114
  store i32 %123, i32* %121, align 4
  %124 = load %struct.ieee80211_msrment_ie*, %struct.ieee80211_msrment_ie** %7, align 8
  %125 = getelementptr inbounds %struct.ieee80211_msrment_ie, %struct.ieee80211_msrment_ie* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %128 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  store i32 %126, i32* %133, align 4
  %134 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %136 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %134, %struct.sk_buff* %135)
  br label %137

137:                                              ; preds = %27, %26
  ret void
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local %struct.ieee80211_mgmt* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
