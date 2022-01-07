; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_rx_unprot_mlme_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_rx_unprot_mlme_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.ieee80211_mgmt = type { i32 }

@NL80211_CMD_UNPROT_DEAUTHENTICATE = common dso_local global i32 0, align 4
@NL80211_CMD_UNPROT_DISASSOCIATE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_rx_unprot_mlme_mgmt(%struct.net_device* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.wiphy*, align 8
  %9 = alloca %struct.cfg80211_registered_device*, align 8
  %10 = alloca %struct.ieee80211_mgmt*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  store %struct.wireless_dev* %14, %struct.wireless_dev** %7, align 8
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 0
  %17 = load %struct.wiphy*, %struct.wiphy** %16, align 8
  store %struct.wiphy* %17, %struct.wiphy** %8, align 8
  %18 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %19 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %18)
  store %struct.cfg80211_registered_device* %19, %struct.cfg80211_registered_device** %9, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = bitcast i8* %21 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %22, %struct.ieee80211_mgmt** %10, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %23, 2
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %51

29:                                               ; preds = %3
  %30 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %31 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ieee80211_is_deauth(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @NL80211_CMD_UNPROT_DEAUTHENTICATE, align 4
  store i32 %36, i32* %11, align 4
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @NL80211_CMD_UNPROT_DISASSOCIATE, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @trace_cfg80211_rx_unprot_mlme_mgmt(%struct.net_device* %40, i32* %41, i64 %42)
  %44 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call i32 @nl80211_send_mlme_event(%struct.cfg80211_registered_device* %44, %struct.net_device* %45, i32* %46, i64 %47, i32 %48, i32 %49, i32 -1, i32* null, i32 0)
  br label %51

51:                                               ; preds = %39, %28
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ieee80211_is_deauth(i32) #1

declare dso_local i32 @trace_cfg80211_rx_unprot_mlme_mgmt(%struct.net_device*, i32*, i64) #1

declare dso_local i32 @nl80211_send_mlme_event(%struct.cfg80211_registered_device*, %struct.net_device*, i32*, i64, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
