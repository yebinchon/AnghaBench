; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_giwessid.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_giwessid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i64 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@IW_ESSID_MAX_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_mgd_wext_giwessid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  store %struct.wireless_dev* %15, %struct.wireless_dev** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %17 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %112

27:                                               ; preds = %4
  %28 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %29 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %31 = call i32 @wdev_lock(%struct.wireless_dev* %30)
  %32 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %33 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %73

36:                                               ; preds = %27
  %37 = call i32 (...) @rcu_read_lock()
  %38 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %39 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* @WLAN_EID_SSID, align 4
  %43 = call i64* @ieee80211_bss_get_ie(i32* %41, i32 %42)
  store i64* %43, i64** %12, align 8
  %44 = load i64*, i64** %12, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %71

46:                                               ; preds = %36
  %47 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %48 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i64*, i64** %12, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %53 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %55 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IW_ESSID_MAX_SIZE, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %11, align 4
  br label %70

62:                                               ; preds = %46
  %63 = load i8*, i8** %9, align 8
  %64 = load i64*, i64** %12, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 2
  %66 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %67 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @memcpy(i8* %63, i64* %65, i64 %68)
  br label %70

70:                                               ; preds = %62, %59
  br label %71

71:                                               ; preds = %70, %36
  %72 = call i32 (...) @rcu_read_unlock()
  br label %108

73:                                               ; preds = %27
  %74 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %75 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = icmp ne i64* %78, null
  br i1 %79, label %80, label %107

80:                                               ; preds = %73
  %81 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %82 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %80
  %88 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %89 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %91 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %96 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %99 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %104 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @memcpy(i8* %97, i64* %102, i64 %105)
  br label %107

107:                                              ; preds = %87, %80, %73
  br label %108

108:                                              ; preds = %107, %71
  %109 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %110 = call i32 @wdev_unlock(%struct.wireless_dev* %109)
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %108, %24
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64* @ieee80211_bss_get_ie(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i64*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
