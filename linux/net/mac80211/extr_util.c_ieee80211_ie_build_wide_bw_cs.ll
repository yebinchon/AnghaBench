; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_ie_build_wide_bw_cs.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_ie_build_wide_bw_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_chan_def = type { i32, i64, i64 }

@WLAN_EID_WIDE_BW_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@IEEE80211_VHT_CHANWIDTH_80MHZ = common dso_local global i32 0, align 4
@IEEE80211_VHT_CHANWIDTH_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_VHT_CHANWIDTH_80P80MHZ = common dso_local global i32 0, align 4
@IEEE80211_VHT_CHANWIDTH_USE_HT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ie_build_wide_bw_cs(i32* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %4, align 8
  %5 = load i32, i32* @WLAN_EID_WIDE_BW_CHANNEL_SWITCH, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %7, i32** %3, align 8
  store i32 %5, i32* %6, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %9, i32** %3, align 8
  store i32 3, i32* %8, align 4
  %10 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %11 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %25 [
    i32 129, label %13
    i32 130, label %17
    i32 128, label %21
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @IEEE80211_VHT_CHANWIDTH_80MHZ, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %3, align 8
  store i32 %14, i32* %15, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load i32, i32* @IEEE80211_VHT_CHANWIDTH_160MHZ, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %3, align 8
  store i32 %18, i32* %19, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load i32, i32* @IEEE80211_VHT_CHANWIDTH_80P80MHZ, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %3, align 8
  store i32 %22, i32* %23, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @IEEE80211_VHT_CHANWIDTH_USE_HT, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %3, align 8
  store i32 %26, i32* %27, align 4
  br label %29

29:                                               ; preds = %25, %21, %17, %13
  %30 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %31 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i8* @ieee80211_frequency_to_channel(i64 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %3, align 8
  store i32 %34, i32* %35, align 4
  %37 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %38 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %43 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i8* @ieee80211_frequency_to_channel(i64 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %3, align 8
  store i32 %46, i32* %47, align 4
  br label %52

49:                                               ; preds = %29
  %50 = load i32*, i32** %3, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %3, align 8
  store i32 0, i32* %50, align 4
  br label %52

52:                                               ; preds = %49, %41
  ret void
}

declare dso_local i8* @ieee80211_frequency_to_channel(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
