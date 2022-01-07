; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_vht.c_ieee80211_vht_handle_opmode.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_vht.c_ieee80211_vht_handle_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.sta_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_vht_handle_opmode(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_local*, align 8
  %10 = alloca %struct.ieee80211_supported_band*, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  store %struct.ieee80211_local* %14, %struct.ieee80211_local** %9, align 8
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %16 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %20, i64 %22
  %24 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %23, align 8
  store %struct.ieee80211_supported_band* %24, %struct.ieee80211_supported_band** %10, align 8
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %26 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @__ieee80211_vht_handle_opmode(%struct.ieee80211_sub_if_data* %25, %struct.sta_info* %26, i32 %27, i32 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %4
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %34 = call i32 @ieee80211_recalc_min_chandef(%struct.ieee80211_sub_if_data* %33)
  %35 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %36 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %37 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @rate_control_rate_update(%struct.ieee80211_local* %35, %struct.ieee80211_supported_band* %36, %struct.sta_info* %37, i64 %38)
  br label %40

40:                                               ; preds = %32, %4
  ret void
}

declare dso_local i64 @__ieee80211_vht_handle_opmode(%struct.ieee80211_sub_if_data*, %struct.sta_info*, i32, i32) #1

declare dso_local i32 @ieee80211_recalc_min_chandef(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @rate_control_rate_update(%struct.ieee80211_local*, %struct.ieee80211_supported_band*, %struct.sta_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
