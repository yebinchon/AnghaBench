; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_siwap.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_siwap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32* }
%struct.iw_request_info = type { i32 }
%struct.sockaddr = type { i64, i32* }
%struct.cfg80211_registered_device = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_mgd_wext_siwap(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.sockaddr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  store %struct.wireless_dev* %16, %struct.wireless_dev** %10, align 8
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %19)
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %11, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %25 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %132

35:                                               ; preds = %4
  %36 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ARPHRD_ETHER, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %132

44:                                               ; preds = %35
  %45 = load i32*, i32** %12, align 8
  %46 = call i64 @is_zero_ether_addr(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %12, align 8
  %50 = call i64 @is_broadcast_ether_addr(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %44
  store i32* null, i32** %12, align 8
  br label %53

53:                                               ; preds = %52, %48
  %54 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %55 = call i32 @wdev_lock(%struct.wireless_dev* %54)
  %56 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %57 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %65 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  br label %128

71:                                               ; preds = %63, %60
  %72 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %73 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %71
  %79 = load i32*, i32** %12, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i32*, i32** %12, align 8
  %83 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %84 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @ether_addr_equal(i32* %82, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %128

91:                                               ; preds = %81, %78, %71
  %92 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %93 = load %struct.net_device*, %struct.net_device** %6, align 8
  %94 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %95 = call i32 @cfg80211_disconnect(%struct.cfg80211_registered_device* %92, %struct.net_device* %93, i32 %94, i32 0)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %128

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %53
  %101 = load i32*, i32** %12, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %119

103:                                              ; preds = %100
  %104 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %105 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = load i32, i32* @ETH_ALEN, align 4
  %110 = call i32 @memcpy(i32* %107, i32* %108, i32 %109)
  %111 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %112 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %116 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32* %114, i32** %118, align 8
  br label %124

119:                                              ; preds = %100
  %120 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %121 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  store i32* null, i32** %123, align 8
  br label %124

124:                                              ; preds = %119, %103
  %125 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %126 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %127 = call i32 @cfg80211_mgd_wext_connect(%struct.cfg80211_registered_device* %125, %struct.wireless_dev* %126)
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %124, %98, %90, %70
  %129 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %130 = call i32 @wdev_unlock(%struct.wireless_dev* %129)
  %131 = load i32, i32* %13, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %128, %41, %32
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i64 @is_broadcast_ether_addr(i32*) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

declare dso_local i32 @cfg80211_disconnect(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cfg80211_mgd_wext_connect(%struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
