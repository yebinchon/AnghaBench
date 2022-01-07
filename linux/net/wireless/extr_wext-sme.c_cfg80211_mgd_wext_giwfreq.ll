; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_giwfreq.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_giwfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ieee80211_channel* }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i32, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_mgd_wext_giwfreq(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_freq* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_freq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.ieee80211_channel*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  store %struct.wireless_dev* %14, %struct.wireless_dev** %10, align 8
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %11, align 8
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %70

26:                                               ; preds = %4
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %28 = call i32 @wdev_lock(%struct.wireless_dev* %27)
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %35 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %38, align 8
  store %struct.ieee80211_channel* %39, %struct.ieee80211_channel** %11, align 8
  br label %54

40:                                               ; preds = %26
  %41 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %42 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %44, align 8
  %46 = icmp ne %struct.ieee80211_channel* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %49 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %51, align 8
  store %struct.ieee80211_channel* %52, %struct.ieee80211_channel** %11, align 8
  br label %53

53:                                               ; preds = %47, %40
  br label %54

54:                                               ; preds = %53, %33
  %55 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %56 = call i32 @wdev_unlock(%struct.wireless_dev* %55)
  %57 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %58 = icmp ne %struct.ieee80211_channel* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %61 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %64 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %66 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %65, i32 0, i32 0
  store i32 6, i32* %66, align 4
  store i32 0, i32* %5, align 4
  br label %70

67:                                               ; preds = %54
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %59, %23
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
