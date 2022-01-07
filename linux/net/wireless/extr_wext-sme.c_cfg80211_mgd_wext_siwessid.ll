; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_siwessid.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_siwessid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i64, i32 }
%struct.cfg80211_registered_device = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_mgd_wext_siwessid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  store %struct.wireless_dev* %17, %struct.wireless_dev** %10, align 8
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %20)
  store %struct.cfg80211_registered_device* %21, %struct.cfg80211_registered_device** %11, align 8
  %22 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %23 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %26 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %149

36:                                               ; preds = %4
  %37 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %38 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i64 0, i64* %12, align 8
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i64, i64* %12, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %12, align 8
  %48 = sub i64 %47, 1
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %12, align 8
  br label %56

56:                                               ; preds = %53, %45, %42
  %57 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %58 = call i32 @wdev_lock(%struct.wireless_dev* %57)
  store i32 0, i32* %13, align 4
  %59 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %60 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %106

63:                                               ; preds = %56
  store i32 1, i32* %14, align 4
  %64 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %65 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %63
  %71 = load i64, i64* %12, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %76 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %74, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %73
  %82 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %83 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i64 @memcmp(i64 %86, i8* %87, i64 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %145

92:                                               ; preds = %81, %73, %70, %63
  %93 = load i64, i64* %12, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 0, i32* %14, align 4
  br label %96

96:                                               ; preds = %95, %92
  %97 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %98 = load %struct.net_device*, %struct.net_device** %6, align 8
  %99 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @cfg80211_disconnect(%struct.cfg80211_registered_device* %97, %struct.net_device* %98, i32 %99, i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %145

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %56
  %107 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %108 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  %110 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %111 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %115 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  store i64 %113, i64* %117, align 8
  %118 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %119 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @memcpy(i64 %121, i8* %122, i64 %123)
  %125 = load i64, i64* %12, align 8
  %126 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %127 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  store i64 %125, i64* %129, align 8
  %130 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %131 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i32 0, i32* %134, align 8
  %135 = load i32, i32* @ETH_P_PAE, align 4
  %136 = call i32 @cpu_to_be16(i32 %135)
  %137 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %138 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  store i32 %136, i32* %141, align 4
  %142 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %143 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %144 = call i32 @cfg80211_mgd_wext_connect(%struct.cfg80211_registered_device* %142, %struct.wireless_dev* %143)
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %106, %104, %91
  %146 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %147 = call i32 @wdev_unlock(%struct.wireless_dev* %146)
  %148 = load i32, i32* %13, align 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %145, %33
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i64 @memcmp(i64, i8*, i64) #1

declare dso_local i32 @cfg80211_disconnect(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cfg80211_mgd_wext_connect(%struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
