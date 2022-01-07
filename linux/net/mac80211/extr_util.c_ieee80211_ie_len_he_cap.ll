; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_ie_len_he_cap.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_ie_len_he_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_sta_he_cap = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_supported_band = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ieee80211_ie_len_he_cap(%struct.ieee80211_sub_if_data* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211_sta_he_cap*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %10 = call %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data* %9)
  store %struct.ieee80211_supported_band* %10, %struct.ieee80211_supported_band** %7, align 8
  %11 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %12 = icmp ne %struct.ieee80211_supported_band* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call %struct.ieee80211_sta_he_cap* @ieee80211_get_he_iftype_cap(%struct.ieee80211_supported_band* %15, i64 %16)
  store %struct.ieee80211_sta_he_cap* %17, %struct.ieee80211_sta_he_cap** %6, align 8
  %18 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %6, align 8
  %19 = icmp ne %struct.ieee80211_sta_he_cap* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i64 0, i64* %3, align 8
  br label %38

21:                                               ; preds = %14
  %22 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %22, i32 0, i32 0
  %24 = call i64 @ieee80211_he_mcs_nss_size(%struct.TYPE_2__* %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add i64 7, %25
  %27 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @ieee80211_he_ppe_size(i32 %31, i32 %35)
  %37 = add i64 %26, %36
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %21, %20, %13
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.ieee80211_sta_he_cap* @ieee80211_get_he_iftype_cap(%struct.ieee80211_supported_band*, i64) #1

declare dso_local i64 @ieee80211_he_mcs_nss_size(%struct.TYPE_2__*) #1

declare dso_local i64 @ieee80211_he_ppe_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
