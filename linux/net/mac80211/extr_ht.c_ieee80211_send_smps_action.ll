; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_ht.c_ieee80211_send_smps_action.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_ht.c_ieee80211_send_smps_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_9__*, %struct.ieee80211_local* }
%struct.TYPE_9__ = type { i32* }
%struct.ieee80211_local = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_13__, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ACTION = common dso_local global i32 0, align 4
@WLAN_CATEGORY_HT = common dso_local global i32 0, align 4
@WLAN_HT_ACTION_SMPS = common dso_local global i32 0, align 4
@WLAN_HT_SMPS_CONTROL_DISABLED = common dso_local global i32 0, align 4
@WLAN_HT_SMPS_CONTROL_STATIC = common dso_local global i32 0, align 4
@WLAN_HT_SMPS_CONTROL_DYNAMIC = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_send_smps_action(%struct.ieee80211_sub_if_data* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ieee80211_mgmt*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 1
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %10, align 8
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 27, %19
  %21 = call %struct.sk_buff* @dev_alloc_skb(i64 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %11, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %113

27:                                               ; preds = %4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @skb_reserve(%struct.sk_buff* %28, i64 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = call %struct.ieee80211_mgmt* @skb_put(%struct.sk_buff* %34, i32 27)
  store %struct.ieee80211_mgmt* %35, %struct.ieee80211_mgmt** %12, align 8
  %36 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %37 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @memcpy(i32 %38, i32* %39, i32 %40)
  %42 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %43 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = call i32 @memcpy(i32 %44, i32* %49, i32 %50)
  %52 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %53 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @memcpy(i32 %54, i32* %55, i32 %56)
  %58 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %59 = load i32, i32* @IEEE80211_STYPE_ACTION, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @cpu_to_le16(i32 %60)
  %62 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %63 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @WLAN_CATEGORY_HT, align 4
  %65 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %66 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* @WLAN_HT_ACTION_SMPS, align 4
  %70 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %71 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  store i32 %69, i32* %75, align 4
  %76 = load i32, i32* %7, align 4
  switch i32 %76, label %103 [
    i32 132, label %77
    i32 130, label %77
    i32 129, label %79
    i32 128, label %87
    i32 131, label %95
  ]

77:                                               ; preds = %27, %27
  %78 = call i32 @WARN_ON(i32 1)
  br label %79

79:                                               ; preds = %27, %77
  %80 = load i32, i32* @WLAN_HT_SMPS_CONTROL_DISABLED, align 4
  %81 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %82 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  store i32 %80, i32* %86, align 4
  br label %103

87:                                               ; preds = %27
  %88 = load i32, i32* @WLAN_HT_SMPS_CONTROL_STATIC, align 4
  %89 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %90 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i32 %88, i32* %94, align 4
  br label %103

95:                                               ; preds = %27
  %96 = load i32, i32* @WLAN_HT_SMPS_CONTROL_DYNAMIC, align 4
  %97 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %98 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i32 %96, i32* %102, align 4
  br label %103

103:                                              ; preds = %27, %95, %87, %79
  %104 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %106 = call %struct.TYPE_14__* @IEEE80211_SKB_CB(%struct.sk_buff* %105)
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %104
  store i32 %109, i32* %107, align 4
  %110 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %112 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %110, %struct.sk_buff* %111)
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %103, %24
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local %struct.ieee80211_mgmt* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_14__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
