; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_cancel_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_cancel_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Invalid TDLS peer %pM for channel switch cancel\0A\00", align 1
@WLAN_STA_TDLS_OFF_CHANNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"TDLS channel switch not initiated by %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_tdls_cancel_channel_switch(%struct.wiphy* %0, %struct.net_device* %1, i32* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.sta_info*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %10)
  store %struct.ieee80211_sub_if_data* %11, %struct.ieee80211_sub_if_data** %7, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  store %struct.ieee80211_local* %14, %struct.ieee80211_local** %8, align 8
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %18, i32* %19)
  store %struct.sta_info* %20, %struct.sta_info** %9, align 8
  %21 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %22 = icmp ne %struct.sta_info* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @tdls_dbg(%struct.ieee80211_sub_if_data* %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32* %25)
  br label %45

27:                                               ; preds = %3
  %28 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %29 = load i32, i32* @WLAN_STA_TDLS_OFF_CHANNEL, align 4
  %30 = call i32 @test_sta_flag(%struct.sta_info* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @tdls_dbg(%struct.ieee80211_sub_if_data* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32* %34)
  br label %45

36:                                               ; preds = %27
  %37 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %39 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 0
  %41 = call i32 @drv_tdls_cancel_channel_switch(%struct.ieee80211_local* %37, %struct.ieee80211_sub_if_data* %38, i32* %40)
  %42 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %43 = load i32, i32* @WLAN_STA_TDLS_OFF_CHANNEL, align 4
  %44 = call i32 @clear_sta_flag(%struct.sta_info* %42, i32 %43)
  br label %45

45:                                               ; preds = %36, %32, %23
  %46 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %47 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  ret void
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @tdls_dbg(%struct.ieee80211_sub_if_data*, i8*, i32*) #1

declare dso_local i32 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @drv_tdls_cancel_channel_switch(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @clear_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
