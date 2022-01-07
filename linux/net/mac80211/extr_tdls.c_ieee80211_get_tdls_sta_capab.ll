; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_get_tdls_sta_capab.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_get_tdls_sta_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_supported_band = type { i64 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_SHORT_SLOT_TIME = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_sub_if_data*, i64)* @ieee80211_get_tdls_sta_capab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee80211_get_tdls_sta_capab(%struct.ieee80211_sub_if_data* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i64 0, i64* %3, align 8
  br label %26

10:                                               ; preds = %2
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %12 = call %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data* %11)
  store %struct.ieee80211_supported_band* %12, %struct.ieee80211_supported_band** %6, align 8
  %13 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %14 = icmp ne %struct.ieee80211_supported_band* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i64, i64* @WLAN_CAPABILITY_SHORT_SLOT_TIME, align 8
  %23 = load i64, i64* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 8
  %24 = or i64 %22, %23
  store i64 %24, i64* %3, align 8
  br label %26

25:                                               ; preds = %15, %10
  store i64 0, i64* %3, align 8
  br label %26

26:                                               ; preds = %25, %21, %9
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

declare dso_local %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
