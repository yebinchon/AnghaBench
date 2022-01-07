; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_vht.c_ieee80211_sta_rx_bw_to_chan_width.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_vht.c_ieee80211_sta_rx_bw_to_chan_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, %struct.ieee80211_sta_vht_cap }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_sta_vht_cap = type { i32 }

@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_40 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_80 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_160 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_80P80 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_sta_rx_bw_to_chan_width(%struct.sta_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %6 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  %7 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %8 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %12 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store %struct.ieee80211_sta_vht_cap* %13, %struct.ieee80211_sta_vht_cap** %5, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %43 [
    i32 130, label %15
    i32 129, label %26
    i32 128, label %28
    i32 131, label %30
  ]

15:                                               ; preds = %1
  %16 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %17 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @NL80211_CHAN_WIDTH_20_NOHT, align 4
  store i32 %23, i32* %2, align 4
  br label %45

24:                                               ; preds = %15
  %25 = load i32, i32* @NL80211_CHAN_WIDTH_20, align 4
  store i32 %25, i32* %2, align 4
  br label %45

26:                                               ; preds = %1
  %27 = load i32, i32* @NL80211_CHAN_WIDTH_40, align 4
  store i32 %27, i32* %2, align 4
  br label %45

28:                                               ; preds = %1
  %29 = load i32, i32* @NL80211_CHAN_WIDTH_80, align 4
  store i32 %29, i32* %2, align 4
  br label %45

30:                                               ; preds = %1
  %31 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @NL80211_CHAN_WIDTH_160, align 4
  store i32 %40, i32* %2, align 4
  br label %45

41:                                               ; preds = %30
  %42 = load i32, i32* @NL80211_CHAN_WIDTH_80P80, align 4
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %1
  %44 = load i32, i32* @NL80211_CHAN_WIDTH_20, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %41, %39, %28, %26, %24, %22
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
