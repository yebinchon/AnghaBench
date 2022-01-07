; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_siwmode.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_siwmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.vif_params = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_WDS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_wext_siwmode(%struct.net_device* %0, %struct.iw_request_info* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.vif_params, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  store %struct.wireless_dev* %16, %struct.wireless_dev** %10, align 8
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %19)
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %11, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %31 [
    i32 130, label %23
    i32 131, label %25
    i32 128, label %27
    i32 129, label %29
  ]

23:                                               ; preds = %4
  %24 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  store i32 %24, i32* %13, align 4
  br label %34

25:                                               ; preds = %4
  %26 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  store i32 %26, i32* %13, align 4
  br label %34

27:                                               ; preds = %4
  %28 = load i32, i32* @NL80211_IFTYPE_WDS, align 4
  store i32 %28, i32* %13, align 4
  br label %34

29:                                               ; preds = %4
  %30 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  store i32 %30, i32* %13, align 4
  br label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %47

34:                                               ; preds = %29, %27, %25, %23
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %37 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %47

41:                                               ; preds = %34
  %42 = call i32 @memset(%struct.vif_params* %12, i32 0, i32 4)
  %43 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @cfg80211_change_iface(%struct.cfg80211_registered_device* %43, %struct.net_device* %44, i32 %45, %struct.vif_params* %12)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %41, %40, %31
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @memset(%struct.vif_params*, i32, i32) #1

declare dso_local i32 @cfg80211_change_iface(%struct.cfg80211_registered_device*, %struct.net_device*, i32, %struct.vif_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
