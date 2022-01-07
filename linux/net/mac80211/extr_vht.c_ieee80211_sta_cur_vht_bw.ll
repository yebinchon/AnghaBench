; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_vht.c_ieee80211_sta_cur_vht_bw.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_vht.c_ieee80211_sta_cur_vht_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, %struct.ieee80211_sub_if_data* }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@WLAN_STA_TDLS_PEER = common dso_local global i32 0, align 4
@WLAN_STA_TDLS_WIDER_BW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_sta_cur_vht_bw(%struct.sta_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  %7 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %8 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %7, i32 0, i32 1
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  store %struct.ieee80211_sub_if_data* %9, %struct.ieee80211_sub_if_data** %4, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %17 = call i32 @ieee80211_sta_cap_rx_bw(%struct.sta_info* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %20 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @min(i32 %18, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %24 = load i32, i32* @WLAN_STA_TDLS_PEER, align 4
  %25 = call i64 @test_sta_flag(%struct.sta_info* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %29 = load i32, i32* @WLAN_STA_TDLS_WIDER_BW, align 4
  %30 = call i64 @test_sta_flag(%struct.sta_info* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %40

34:                                               ; preds = %27, %1
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ieee80211_chan_width_to_rx_bw(i32 %36)
  %38 = call i32 @min(i32 %35, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %32
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ieee80211_sta_cap_rx_bw(%struct.sta_info*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @ieee80211_chan_width_to_rx_bw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
