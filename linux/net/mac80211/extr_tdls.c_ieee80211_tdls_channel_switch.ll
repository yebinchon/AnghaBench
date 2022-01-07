; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Invalid TDLS peer %pM for channel switch request\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@WLAN_STA_TDLS_CHAN_SWITCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"TDLS channel switch unsupported by %pM\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@WLAN_STA_TDLS_OFF_CHANNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_tdls_channel_switch(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, i32 %3, %struct.cfg80211_chan_def* %4) #0 {
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cfg80211_chan_def*, align 8
  %11 = alloca %struct.ieee80211_sub_if_data*, align 8
  %12 = alloca %struct.ieee80211_local*, align 8
  %13 = alloca %struct.sta_info*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.cfg80211_chan_def* %4, %struct.cfg80211_chan_def** %10, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %17)
  store %struct.ieee80211_sub_if_data* %18, %struct.ieee80211_sub_if_data** %11, align 8
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %20, align 8
  store %struct.ieee80211_local* %21, %struct.ieee80211_local** %12, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %14, align 8
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %23 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %25, i32* %26)
  store %struct.sta_info* %27, %struct.sta_info** %13, align 8
  %28 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %29 = icmp ne %struct.sta_info* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %5
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @tdls_dbg(%struct.ieee80211_sub_if_data* %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32* %32)
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %16, align 4
  br label %74

36:                                               ; preds = %5
  %37 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %38 = load i32, i32* @WLAN_STA_TDLS_CHAN_SWITCH, align 4
  %39 = call i32 @test_sta_flag(%struct.sta_info* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @tdls_dbg(%struct.ieee80211_sub_if_data* %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32* %43)
  %45 = load i32, i32* @ENOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %16, align 4
  br label %74

47:                                               ; preds = %36
  %48 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %10, align 8
  %51 = call %struct.sk_buff* @ieee80211_tdls_ch_sw_tmpl_get(%struct.sta_info* %48, i32 %49, %struct.cfg80211_chan_def* %50, i32* %15)
  store %struct.sk_buff* %51, %struct.sk_buff** %14, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %16, align 4
  br label %74

57:                                               ; preds = %47
  %58 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %59 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %60 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %61 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %60, i32 0, i32 0
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %10, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @drv_tdls_channel_switch(%struct.ieee80211_local* %58, %struct.ieee80211_sub_if_data* %59, i32* %61, i32 %62, %struct.cfg80211_chan_def* %63, %struct.sk_buff* %64, i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %57
  %70 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %71 = load i32, i32* @WLAN_STA_TDLS_OFF_CHANNEL, align 4
  %72 = call i32 @set_sta_flag(%struct.sta_info* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %57
  br label %74

74:                                               ; preds = %73, %54, %41, %30
  %75 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %76 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %79 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %78)
  %80 = load i32, i32* %16, align 4
  ret i32 %80
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @tdls_dbg(%struct.ieee80211_sub_if_data*, i8*, i32*) #1

declare dso_local i32 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local %struct.sk_buff* @ieee80211_tdls_ch_sw_tmpl_get(%struct.sta_info*, i32, %struct.cfg80211_chan_def*, i32*) #1

declare dso_local i32 @drv_tdls_channel_switch(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32*, i32, %struct.cfg80211_chan_def*, %struct.sk_buff*, i32) #1

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
