; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_status.c_ieee80211_frame_acked.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_status.c_ieee80211_frame_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, %struct.TYPE_8__, %struct.ieee80211_sub_if_data*, %struct.ieee80211_local* }
%struct.TYPE_8__ = type { i32, i32, i64, i32 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.ieee80211_local = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_mgmt = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.ieee80211_hdr = type { i32 }

@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@WLAN_CATEGORY_HT = common dso_local global i64 0, align 8
@WLAN_HT_ACTION_SMPS = common dso_local global i64 0, align 8
@IEEE80211_SMPS_DYNAMIC = common dso_local global i32 0, align 4
@IEEE80211_SMPS_STATIC = common dso_local global i32 0, align 4
@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*, %struct.sk_buff*)* @ieee80211_frame_acked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_frame_acked(%struct.sta_info* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %17, %struct.ieee80211_mgmt** %5, align 8
  %18 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 3
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %19, align 8
  store %struct.ieee80211_local* %20, %struct.ieee80211_local** %6, align 8
  %21 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 2
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  store %struct.ieee80211_sub_if_data* %23, %struct.ieee80211_sub_if_data** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %24)
  store %struct.ieee80211_tx_info* %25, %struct.ieee80211_tx_info** %8, align 8
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %26, i32 0, i32 0
  %28 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %29 = call i64 @ieee80211_hw_check(i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %2
  %32 = load i32, i32* @jiffies, align 4
  %33 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 8
  %36 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %37 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %31
  %42 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %47 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  store i64 %45, i64* %48, align 8
  %49 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %56 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 0, %58
  %60 = call i32 @ewma_avg_signal_add(i32* %54, i64 %59)
  br label %61

61:                                               ; preds = %41, %31
  br label %62

62:                                               ; preds = %61, %2
  %63 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %64 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @ieee80211_is_data_qos(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %62
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = bitcast i8* %72 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %73, %struct.ieee80211_hdr** %9, align 8
  %74 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %75 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %74)
  store i32* %75, i32** %10, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 15
  store i32 %79, i32* %11, align 4
  %80 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %81 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %82 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @ieee80211_check_pending_bar(%struct.sta_info* %80, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %68, %62
  %87 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %88 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @ieee80211_is_action(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %171

92:                                               ; preds = %86
  %93 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %94 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ieee80211_has_protected(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %171, label %98

98:                                               ; preds = %92
  %99 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %100 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @WLAN_CATEGORY_HT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %171

106:                                              ; preds = %98
  %107 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %108 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @WLAN_HT_ACTION_SMPS, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %171

116:                                              ; preds = %106
  %117 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %118 = call i64 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %171

120:                                              ; preds = %116
  %121 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %122 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  switch i32 %127, label %133 [
    i32 129, label %128
    i32 128, label %130
    i32 130, label %132
  ]

128:                                              ; preds = %120
  %129 = load i32, i32* @IEEE80211_SMPS_DYNAMIC, align 4
  store i32 %129, i32* %12, align 4
  br label %135

130:                                              ; preds = %120
  %131 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  store i32 %131, i32* %12, align 4
  br label %135

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %120, %132
  %134 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %133, %130, %128
  %136 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %137 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %135
  %143 = load i32, i32* %12, align 4
  %144 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %145 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %147 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %146, i32 0, i32 0
  %148 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %149 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %148, i32 0, i32 2
  %150 = call i32 @ieee80211_queue_work(i32* %147, i32* %149)
  br label %170

151:                                              ; preds = %135
  %152 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %153 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %165, label %158

158:                                              ; preds = %151
  %159 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %160 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %158, %151
  %166 = load i32, i32* %12, align 4
  %167 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %168 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %165, %158
  br label %170

170:                                              ; preds = %169, %142
  br label %171

171:                                              ; preds = %170, %116, %106, %98, %92, %86
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @ewma_avg_signal_add(i32*, i64) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @ieee80211_check_pending_bar(%struct.sta_info*, i32, i32) #1

declare dso_local i64 @ieee80211_is_action(i32) #1

declare dso_local i32 @ieee80211_has_protected(i32) #1

declare dso_local i64 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_queue_work(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
