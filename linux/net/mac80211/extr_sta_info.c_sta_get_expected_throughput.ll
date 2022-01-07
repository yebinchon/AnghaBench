; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_sta_get_expected_throughput.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_sta_get_expected_throughput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, %struct.ieee80211_sub_if_data* }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { %struct.rate_control_ref* }
%struct.rate_control_ref = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@WLAN_STA_RATE_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sta_get_expected_throughput(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.rate_control_ref*, align 8
  %6 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %7 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %8 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %7, i32 0, i32 1
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  store %struct.ieee80211_sub_if_data* %9, %struct.ieee80211_sub_if_data** %3, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  store %struct.ieee80211_local* %12, %struct.ieee80211_local** %4, align 8
  store %struct.rate_control_ref* null, %struct.rate_control_ref** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %14 = load i32, i32* @WLAN_STA_RATE_CONTROL, align 4
  %15 = call i64 @test_sta_flag(%struct.sta_info* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 0
  %20 = load %struct.rate_control_ref*, %struct.rate_control_ref** %19, align 8
  store %struct.rate_control_ref* %20, %struct.rate_control_ref** %5, align 8
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.rate_control_ref*, %struct.rate_control_ref** %5, align 8
  %23 = icmp ne %struct.rate_control_ref* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load %struct.rate_control_ref*, %struct.rate_control_ref** %5, align 8
  %26 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = icmp ne i32 (i32)* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.rate_control_ref*, %struct.rate_control_ref** %5, align 8
  %33 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (i32)*, i32 (i32)** %35, align 8
  %37 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %38 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %36(i32 %39)
  store i32 %40, i32* %6, align 4
  br label %45

41:                                               ; preds = %24, %21
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %43 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %44 = call i32 @drv_get_expected_throughput(%struct.ieee80211_local* %42, %struct.sta_info* %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %31
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @drv_get_expected_throughput(%struct.ieee80211_local*, %struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
