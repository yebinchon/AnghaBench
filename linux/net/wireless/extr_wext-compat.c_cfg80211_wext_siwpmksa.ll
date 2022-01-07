; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_siwpmksa.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_siwpmksa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.cfg80211_pmksa = type { i32, i32 }
%struct.iw_pmksa = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @cfg80211_wext_siwpmksa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_wext_siwpmksa(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.cfg80211_pmksa, align 4
  %13 = alloca %struct.iw_pmksa*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  store %struct.wireless_dev* %16, %struct.wireless_dev** %10, align 8
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %19)
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %11, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.iw_pmksa*
  store %struct.iw_pmksa* %22, %struct.iw_pmksa** %13, align 8
  %23 = call i32 @memset(%struct.cfg80211_pmksa* %12, i32 0, i32 8)
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %25 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %90

32:                                               ; preds = %4
  %33 = load %struct.iw_pmksa*, %struct.iw_pmksa** %13, align 8
  %34 = getelementptr inbounds %struct.iw_pmksa, %struct.iw_pmksa* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.cfg80211_pmksa, %struct.cfg80211_pmksa* %12, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.iw_pmksa*, %struct.iw_pmksa** %13, align 8
  %39 = getelementptr inbounds %struct.iw_pmksa, %struct.iw_pmksa* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.cfg80211_pmksa, %struct.cfg80211_pmksa* %12, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.iw_pmksa*, %struct.iw_pmksa** %13, align 8
  %43 = getelementptr inbounds %struct.iw_pmksa, %struct.iw_pmksa* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %87 [
    i32 130, label %45
    i32 128, label %59
    i32 129, label %73
  ]

45:                                               ; preds = %32
  %46 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %47 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %90

55:                                               ; preds = %45
  %56 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = call i32 @rdev_set_pmksa(%struct.cfg80211_registered_device* %56, %struct.net_device* %57, %struct.cfg80211_pmksa* %12)
  store i32 %58, i32* %5, align 4
  br label %90

59:                                               ; preds = %32
  %60 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %61 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @EOPNOTSUPP, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %90

69:                                               ; preds = %59
  %70 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %71 = load %struct.net_device*, %struct.net_device** %6, align 8
  %72 = call i32 @rdev_del_pmksa(%struct.cfg80211_registered_device* %70, %struct.net_device* %71, %struct.cfg80211_pmksa* %12)
  store i32 %72, i32* %5, align 4
  br label %90

73:                                               ; preds = %32
  %74 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %75 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* @EOPNOTSUPP, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %90

83:                                               ; preds = %73
  %84 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %85 = load %struct.net_device*, %struct.net_device** %6, align 8
  %86 = call i32 @rdev_flush_pmksa(%struct.cfg80211_registered_device* %84, %struct.net_device* %85)
  store i32 %86, i32* %5, align 4
  br label %90

87:                                               ; preds = %32
  %88 = load i32, i32* @EOPNOTSUPP, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %87, %83, %80, %69, %66, %55, %52, %29
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @memset(%struct.cfg80211_pmksa*, i32, i32) #1

declare dso_local i32 @rdev_set_pmksa(%struct.cfg80211_registered_device*, %struct.net_device*, %struct.cfg80211_pmksa*) #1

declare dso_local i32 @rdev_del_pmksa(%struct.cfg80211_registered_device*, %struct.net_device*, %struct.cfg80211_pmksa*) #1

declare dso_local i32 @rdev_flush_pmksa(%struct.cfg80211_registered_device*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
