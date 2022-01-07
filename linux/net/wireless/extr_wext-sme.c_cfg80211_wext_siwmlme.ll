; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-sme.c_cfg80211_wext_siwmlme.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-sme.c_cfg80211_wext_siwmlme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.iw_mlme = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.cfg80211_registered_device = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_wext_siwmlme(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.iw_mlme*, align 8
  %12 = alloca %struct.cfg80211_registered_device*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  store %struct.wireless_dev* %16, %struct.wireless_dev** %10, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.iw_mlme*
  store %struct.iw_mlme* %18, %struct.iw_mlme** %11, align 8
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %20 = icmp ne %struct.wireless_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %67

24:                                               ; preds = %4
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %26 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %27)
  store %struct.cfg80211_registered_device* %28, %struct.cfg80211_registered_device** %12, align 8
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %67

37:                                               ; preds = %24
  %38 = load %struct.iw_mlme*, %struct.iw_mlme** %11, align 8
  %39 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ARPHRD_ETHER, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %67

47:                                               ; preds = %37
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %49 = call i32 @wdev_lock(%struct.wireless_dev* %48)
  %50 = load %struct.iw_mlme*, %struct.iw_mlme** %11, align 8
  %51 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %60 [
    i32 129, label %53
    i32 128, label %53
  ]

53:                                               ; preds = %47, %47
  %54 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = load %struct.iw_mlme*, %struct.iw_mlme** %11, align 8
  %57 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cfg80211_disconnect(%struct.cfg80211_registered_device* %54, %struct.net_device* %55, i32 %58, i32 1)
  store i32 %59, i32* %13, align 4
  br label %63

60:                                               ; preds = %47
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %60, %53
  %64 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %65 = call i32 @wdev_unlock(%struct.wireless_dev* %64)
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %44, %34, %21
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_disconnect(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
