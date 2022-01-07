; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_ready_on_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_ready_on_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@NL80211_CMD_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_ready_on_channel(%struct.wireless_dev* %0, i32 %1, %struct.ieee80211_channel* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wiphy*, align 8
  %12 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %14 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %13, i32 0, i32 0
  %15 = load %struct.wiphy*, %struct.wiphy** %14, align 8
  store %struct.wiphy* %15, %struct.wiphy** %11, align 8
  %16 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %17 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %16)
  store %struct.cfg80211_registered_device* %17, %struct.cfg80211_registered_device** %12, align 8
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @trace_cfg80211_ready_on_channel(%struct.wireless_dev* %18, i32 %19, %struct.ieee80211_channel* %20, i32 %21)
  %23 = load i32, i32* @NL80211_CMD_REMAIN_ON_CHANNEL, align 4
  %24 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @nl80211_send_remain_on_chan_event(i32 %23, %struct.cfg80211_registered_device* %24, %struct.wireless_dev* %25, i32 %26, %struct.ieee80211_channel* %27, i32 %28, i32 %29)
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_ready_on_channel(%struct.wireless_dev*, i32, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @nl80211_send_remain_on_chan_event(i32, %struct.cfg80211_registered_device*, %struct.wireless_dev*, i32, %struct.ieee80211_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
