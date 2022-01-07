; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_get_bss_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_get_bss_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ieee80211_ht_operation = type { i32 }

@WLAN_EID_DS_PARAMS = common dso_local global i32 0, align 4
@WLAN_EID_HT_OPERATION = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BSS_CHAN_WIDTH_10 = common dso_local global i32 0, align 4
@NL80211_BSS_CHAN_WIDTH_5 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_channel* (%struct.wiphy*, i32*, i64, %struct.ieee80211_channel*, i32)* @cfg80211_get_bss_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_channel* @cfg80211_get_bss_channel(%struct.wiphy* %0, i32* %1, i64 %2, %struct.ieee80211_channel* %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_channel*, align 8
  %16 = alloca %struct.ieee80211_ht_operation*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 -1, i32* %14, align 4
  %17 = load i32, i32* @WLAN_EID_DS_PARAMS, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32* @cfg80211_find_ie(i32 %17, i32* %18, i64 %19)
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %5
  %24 = load i32*, i32** %12, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  br label %54

32:                                               ; preds = %23, %5
  %33 = load i32, i32* @WLAN_EID_HT_OPERATION, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32* @cfg80211_find_ie(i32 %33, i32* %34, i64 %35)
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load i32*, i32** %12, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp uge i64 %43, 4
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = bitcast i32* %47 to i8*
  %49 = bitcast i8* %48 to %struct.ieee80211_ht_operation*
  store %struct.ieee80211_ht_operation* %49, %struct.ieee80211_ht_operation** %16, align 8
  %50 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %16, align 8
  %51 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %45, %39, %32
  br label %54

54:                                               ; preds = %53, %28
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  store %struct.ieee80211_channel* %58, %struct.ieee80211_channel** %6, align 8
  br label %99

59:                                               ; preds = %54
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %62 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ieee80211_channel_to_frequency(i32 %60, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %65, i32 %66)
  store %struct.ieee80211_channel* %67, %struct.ieee80211_channel** %15, align 8
  %68 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  %69 = icmp ne %struct.ieee80211_channel* %68, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %59
  %71 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %72 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %6, align 8
  br label %99

77:                                               ; preds = %70
  %78 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  store %struct.ieee80211_channel* %78, %struct.ieee80211_channel** %6, align 8
  br label %99

79:                                               ; preds = %59
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @NL80211_BSS_CHAN_WIDTH_10, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @NL80211_BSS_CHAN_WIDTH_5, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83, %79
  %88 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  store %struct.ieee80211_channel* %88, %struct.ieee80211_channel** %6, align 8
  br label %99

89:                                               ; preds = %83
  %90 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  %91 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %6, align 8
  br label %99

97:                                               ; preds = %89
  %98 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  store %struct.ieee80211_channel* %98, %struct.ieee80211_channel** %6, align 8
  br label %99

99:                                               ; preds = %97, %96, %87, %77, %76, %57
  %100 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  ret %struct.ieee80211_channel* %100
}

declare dso_local i32* @cfg80211_find_ie(i32, i32*, i64) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
