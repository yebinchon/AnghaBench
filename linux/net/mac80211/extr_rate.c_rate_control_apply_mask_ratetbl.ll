; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_rate_control_apply_mask_ratetbl.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_rate_control_apply_mask_ratetbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_sta_rates = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }

@IEEE80211_HT_MCS_MASK_LEN = common dso_local global i32 0, align 4
@NL80211_VHT_NSS_MAX = common dso_local global i32 0, align 4
@IEEE80211_TX_RATE_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta_rates*)* @rate_control_apply_mask_ratetbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_control_apply_mask_ratetbl(%struct.sta_info* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_sta_rates* %2) #0 {
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.ieee80211_sta_rates*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %4, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %5, align 8
  store %struct.ieee80211_sta_rates* %2, %struct.ieee80211_sta_rates** %6, align 8
  %14 = load i32, i32* @IEEE80211_HT_MCS_MASK_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @NL80211_VHT_NSS_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %25 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 1
  %27 = call i32 @rate_control_cap_mask(%struct.TYPE_10__* %23, %struct.ieee80211_supported_band* %24, i32* %26, i32* %8, i32* %17, i32* %20)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i32 1, i32* %13, align 4
  br label %77

30:                                               ; preds = %3
  %31 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %32 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %73, %30
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @IEEE80211_TX_RATE_TABLE_SIZE, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %39
  %44 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %76

54:                                               ; preds = %43
  %55 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %6, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %6, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @rate_idx_match_mask(i64* %61, i32* %68, %struct.ieee80211_supported_band* %69, i32 %70, i32 %71, i32* %17, i32* %20)
  br label %73

73:                                               ; preds = %54
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %39

76:                                               ; preds = %53, %39
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %76, %29
  %78 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %13, align 4
  switch i32 %79, label %81 [
    i32 0, label %80
    i32 1, label %80
  ]

80:                                               ; preds = %77, %77
  ret void

81:                                               ; preds = %77
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rate_control_cap_mask(%struct.TYPE_10__*, %struct.ieee80211_supported_band*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @rate_idx_match_mask(i64*, i32*, %struct.ieee80211_supported_band*, i32, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
