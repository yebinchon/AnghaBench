; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_ie_build_ht_oper.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_ie_build_ht_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta_ht_cap = type { i32, i32 }
%struct.cfg80211_chan_def = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_ht_operation = type { i32, i32, i32, i32, i32 }

@WLAN_EID_HT_OPERATION = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_ABOVE = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_BELOW = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_NONE = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHAN_WIDTH_ANY = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_RIFS_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ieee80211_ie_build_ht_oper(i32* %0, %struct.ieee80211_sta_ht_cap* %1, %struct.cfg80211_chan_def* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %8 = alloca %struct.cfg80211_chan_def*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_ht_operation*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ieee80211_sta_ht_cap* %1, %struct.ieee80211_sta_ht_cap** %7, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @WLAN_EID_HT_OPERATION, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %6, align 8
  store i32 %12, i32* %13, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %6, align 8
  store i32 20, i32* %15, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = bitcast i32* %17 to %struct.ieee80211_ht_operation*
  store %struct.ieee80211_ht_operation* %18, %struct.ieee80211_ht_operation** %11, align 8
  %19 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %20 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ieee80211_frequency_to_channel(i32 %23)
  %25 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %11, align 8
  %26 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %28 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %49 [
    i32 131, label %30
    i32 128, label %30
    i32 129, label %30
    i32 130, label %30
  ]

30:                                               ; preds = %5, %5, %5, %5
  %31 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %32 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %35 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %33, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_ABOVE, align 4
  %42 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %11, align 8
  %43 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  br label %48

44:                                               ; preds = %30
  %45 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_BELOW, align 4
  %46 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %11, align 8
  %47 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %40
  br label %53

49:                                               ; preds = %5
  %50 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_NONE, align 4
  %51 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %11, align 8
  %52 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %48
  %54 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %53
  %61 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %62 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NL80211_CHAN_WIDTH_20_NOHT, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %68 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @NL80211_CHAN_WIDTH_20, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i32, i32* @IEEE80211_HT_PARAM_CHAN_WIDTH_ANY, align 4
  %74 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %11, align 8
  %75 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %66, %60, %53
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* @IEEE80211_HT_PARAM_RIFS_MODE, align 4
  %83 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %11, align 8
  %84 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @cpu_to_le16(i32 %88)
  %90 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %11, align 8
  %91 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %11, align 8
  %93 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %92, i32 0, i32 0
  store i32 0, i32* %93, align 4
  %94 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %11, align 8
  %95 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %94, i32 0, i32 1
  %96 = call i32 @memset(i32* %95, i32 0, i32 16)
  %97 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %11, align 8
  %98 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %97, i32 0, i32 1
  %99 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %100 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %99, i32 0, i32 1
  %101 = call i32 @memcpy(i32* %98, i32* %100, i32 10)
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 20
  ret i32* %103
}

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
