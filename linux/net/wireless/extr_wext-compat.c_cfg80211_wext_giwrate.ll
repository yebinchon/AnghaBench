; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_giwrate.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_giwrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.station_info = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_BITRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @cfg80211_wext_giwrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_wext_giwrate(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.station_info, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  store %struct.wireless_dev* %19, %struct.wireless_dev** %10, align 8
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %21 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %22)
  store %struct.cfg80211_registered_device* %23, %struct.cfg80211_registered_device** %11, align 8
  %24 = bitcast %struct.station_info* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 8, i1 false)
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %13, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %100

37:                                               ; preds = %4
  %38 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %39 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %100

47:                                               ; preds = %37
  store i32 0, i32* %15, align 4
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %49 = call i32 @wdev_lock(%struct.wireless_dev* %48)
  %50 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %51 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = icmp ne %struct.TYPE_6__* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %56 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ETH_ALEN, align 4
  %62 = call i32 @memcpy(i32* %28, i32 %60, i32 %61)
  br label %66

63:                                               ; preds = %47
  %64 = load i32, i32* @EOPNOTSUPP, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %63, %54
  %67 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %68 = call i32 @wdev_unlock(%struct.wireless_dev* %67)
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %100

73:                                               ; preds = %66
  %74 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = call i32 @rdev_get_station(%struct.cfg80211_registered_device* %74, %struct.net_device* %75, i32* %28, %struct.station_info* %12)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %15, align 4
  store i32 %80, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %100

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.station_info, %struct.station_info* %12, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @NL80211_STA_INFO_TX_BITRATE, align 4
  %85 = call i32 @BIT_ULL(i32 %84)
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* @EOPNOTSUPP, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %15, align 4
  br label %97

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.station_info, %struct.station_info* %12, i32 0, i32 1
  %93 = call i32 @cfg80211_calculate_bitrate(i32* %92)
  %94 = mul nsw i32 100000, %93
  %95 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %96 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %88
  %98 = call i32 @cfg80211_sinfo_release_content(%struct.station_info* %12)
  %99 = load i32, i32* %15, align 4
  store i32 %99, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %100

100:                                              ; preds = %97, %79, %71, %44, %34
  %101 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @rdev_get_station(%struct.cfg80211_registered_device*, %struct.net_device*, i32*, %struct.station_info*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @cfg80211_calculate_bitrate(i32*) #1

declare dso_local i32 @cfg80211_sinfo_release_content(%struct.station_info*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
