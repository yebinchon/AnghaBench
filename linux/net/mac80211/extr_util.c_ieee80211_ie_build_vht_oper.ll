; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_ie_build_vht_oper.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_ie_build_vht_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta_vht_cap = type { i32 }
%struct.cfg80211_chan_def = type { i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_vht_operation = type { i32, i32, i32, i8* }

@WLAN_EID_VHT_OPERATION = common dso_local global i32 0, align 4
@IEEE80211_VHT_CHANWIDTH_80MHZ = common dso_local global i8* null, align 8
@IEEE80211_VHT_CHANWIDTH_USE_HT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ieee80211_ie_build_vht_oper(i32* %0, %struct.ieee80211_sta_vht_cap* %1, %struct.cfg80211_chan_def* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca %struct.ieee80211_vht_operation*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.ieee80211_sta_vht_cap* %1, %struct.ieee80211_sta_vht_cap** %5, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %6, align 8
  %8 = load i32, i32* @WLAN_EID_VHT_OPERATION, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %4, align 8
  store i32 %8, i32* %9, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %4, align 8
  store i32 24, i32* %11, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to %struct.ieee80211_vht_operation*
  store %struct.ieee80211_vht_operation* %14, %struct.ieee80211_vht_operation** %7, align 8
  %15 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %16 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i8* @ieee80211_frequency_to_channel(i64 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %23 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %28 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i8* @ieee80211_frequency_to_channel(i64 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %37

34:                                               ; preds = %3
  %35 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %26
  %38 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %39 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %78 [
    i32 130, label %41
    i32 128, label %70
    i32 129, label %74
  ]

41:                                               ; preds = %37
  %42 = load i8*, i8** @IEEE80211_VHT_CHANWIDTH_80MHZ, align 8
  %43 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %7, align 8
  %46 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %7, align 8
  %49 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %51 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %56 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %41
  %60 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %7, align 8
  %61 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 8
  store i32 %63, i32* %61, align 8
  br label %69

64:                                               ; preds = %41
  %65 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 8
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %64, %59
  br label %82

70:                                               ; preds = %37
  %71 = load i8*, i8** @IEEE80211_VHT_CHANWIDTH_80MHZ, align 8
  %72 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %7, align 8
  %73 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  br label %82

74:                                               ; preds = %37
  %75 = load i8*, i8** @IEEE80211_VHT_CHANWIDTH_80MHZ, align 8
  %76 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %7, align 8
  %77 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  br label %82

78:                                               ; preds = %37
  %79 = load i8*, i8** @IEEE80211_VHT_CHANWIDTH_USE_HT, align 8
  %80 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %7, align 8
  %81 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %78, %74, %70, %69
  %83 = call i32 @cpu_to_le16(i32 65535)
  %84 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %7, align 8
  %85 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 24
  ret i32* %87
}

declare dso_local i8* @ieee80211_frequency_to_channel(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
