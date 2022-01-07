; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wds_wext_siwap.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wds_wext_siwap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.sockaddr = type { i64, i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NL80211_IFTYPE_WDS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.sockaddr*, i8*)* @cfg80211_wds_wext_siwap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_wds_wext_siwap(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.sockaddr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  store %struct.wireless_dev* %15, %struct.wireless_dev** %10, align 8
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %17 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %18)
  store %struct.cfg80211_registered_device* %19, %struct.cfg80211_registered_device** %11, align 8
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %21 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_IFTYPE_WDS, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %75

31:                                               ; preds = %4
  %32 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ARPHRD_ETHER, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %75

40:                                               ; preds = %31
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = call i64 @netif_running(%struct.net_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %75

47:                                               ; preds = %40
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %49 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %75

57:                                               ; preds = %47
  %58 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %59 = load %struct.net_device*, %struct.net_device** %6, align 8
  %60 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %61 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %60, i32 0, i32 1
  %62 = call i32 @rdev_set_wds_peer(%struct.cfg80211_registered_device* %58, %struct.net_device* %59, i32* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %75

67:                                               ; preds = %57
  %68 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %69 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %72 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %71, i32 0, i32 1
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = call i32 @memcpy(i32* %70, i32* %72, i32 %73)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %67, %65, %54, %44, %37, %28
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @rdev_set_wds_peer(%struct.cfg80211_registered_device*, %struct.net_device*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
