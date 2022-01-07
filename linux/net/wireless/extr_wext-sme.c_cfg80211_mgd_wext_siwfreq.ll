; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_siwfreq.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_siwfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ieee80211_channel*, i64 }
%struct.ieee80211_channel = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_mgd_wext_siwfreq(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_freq* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_freq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.ieee80211_channel*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  store %struct.wireless_dev* %18, %struct.wireless_dev** %10, align 8
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %20 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %21)
  store %struct.cfg80211_registered_device* %22, %struct.cfg80211_registered_device** %11, align 8
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %12, align 8
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %113

34:                                               ; preds = %4
  %35 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %36 = call i32 @cfg80211_wext_freq(%struct.iw_freq* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %5, align 4
  br label %113

41:                                               ; preds = %34
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %46 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call %struct.ieee80211_channel* @ieee80211_get_channel(i32 %47, i32 %48)
  store %struct.ieee80211_channel* %49, %struct.ieee80211_channel** %12, align 8
  %50 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %51 = icmp ne %struct.ieee80211_channel* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %113

55:                                               ; preds = %44
  %56 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %57 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %113

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %41
  %67 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %68 = call i32 @wdev_lock(%struct.wireless_dev* %67)
  %69 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %70 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %66
  store i32 1, i32* %15, align 4
  %74 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %75 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %77, align 8
  %79 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %80 = icmp eq %struct.ieee80211_channel* %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i32 0, i32* %13, align 4
  br label %109

82:                                               ; preds = %73
  %83 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %84 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %89, %82
  %91 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %92 = load %struct.net_device*, %struct.net_device** %6, align 8
  %93 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @cfg80211_disconnect(%struct.cfg80211_registered_device* %91, %struct.net_device* %92, i32 %93, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %109

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %66
  %101 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %102 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %103 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store %struct.ieee80211_channel* %101, %struct.ieee80211_channel** %105, align 8
  %106 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %107 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %108 = call i32 @cfg80211_mgd_wext_connect(%struct.cfg80211_registered_device* %106, %struct.wireless_dev* %107)
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %100, %98, %81
  %110 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %111 = call i32 @wdev_unlock(%struct.wireless_dev* %110)
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %109, %62, %52, %39, %31
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_wext_freq(%struct.iw_freq*) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(i32, i32) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_disconnect(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @cfg80211_mgd_wext_connect(%struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
