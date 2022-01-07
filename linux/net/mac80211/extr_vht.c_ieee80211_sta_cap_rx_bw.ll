; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_vht.c_ieee80211_sta_cap_rx_bw.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_vht.c_ieee80211_sta_cap_rx_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.ieee80211_sta_vht_cap }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_sta_vht_cap = type { i32, i32 }

@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_40 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_20 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_160 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_EXT_NSS_BW_MASK = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_80 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_sta_cap_rx_bw(%struct.sta_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %5 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  %6 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %7 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store %struct.ieee80211_sta_vht_cap* %8, %struct.ieee80211_sta_vht_cap** %4, align 8
  %9 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %1
  %14 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* @IEEE80211_STA_RX_BW_40, align 4
  br label %26

24:                                               ; preds = %13
  %25 = load i32, i32* @IEEE80211_STA_RX_BW_20, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %2, align 4
  br label %54

28:                                               ; preds = %1
  %29 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %28
  %42 = load i32, i32* @IEEE80211_STA_RX_BW_160, align 4
  store i32 %42, i32* %2, align 4
  br label %54

43:                                               ; preds = %37
  %44 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IEEE80211_VHT_CAP_EXT_NSS_BW_MASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @IEEE80211_STA_RX_BW_160, align 4
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @IEEE80211_STA_RX_BW_80, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %50, %41, %26
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
