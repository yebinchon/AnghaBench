; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_dump_station.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_dump_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.station_info = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NL80211_CMD_NEW_STATION = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @nl80211_dump_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_dump_station(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.station_info, align 4
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %13 = load i32, i32* @ETH_ALEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %18 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = call i32 (...) @rtnl_lock()
  %23 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %24 = call i32 @nl80211_prepare_wdev_dump(%struct.netlink_callback* %23, %struct.cfg80211_registered_device** %6, %struct.wireless_dev** %7)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %101

28:                                               ; preds = %2
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  br label %101

36:                                               ; preds = %28
  %37 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %38 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %101

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %88, %46
  br label %48

48:                                               ; preds = %47
  %49 = call i32 @memset(%struct.station_info* %5, i32 0, i32 4)
  %50 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %51 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %52 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @rdev_dump_station(%struct.cfg80211_registered_device* %50, i32 %53, i32 %54, i32* %16, %struct.station_info* %5)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %91

61:                                               ; preds = %48
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %101

65:                                               ; preds = %61
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = load i32, i32* @NL80211_CMD_NEW_STATION, align 4
  %68 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %69 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @NETLINK_CB(i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %76 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @NLM_F_MULTI, align 4
  %81 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %82 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %83 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @nl80211_send_station(%struct.sk_buff* %66, i32 %67, i32 %74, i32 %79, i32 %80, %struct.cfg80211_registered_device* %81, i32 %84, i32* %16, %struct.station_info* %5)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %65
  br label %92

88:                                               ; preds = %65
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %47

91:                                               ; preds = %60
  br label %92

92:                                               ; preds = %91, %87
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %95 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32 %93, i32* %97, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %92, %64, %43, %33, %27
  %102 = call i32 (...) @rtnl_unlock()
  %103 = load i32, i32* %11, align 4
  %104 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %104)
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rtnl_lock(...) #2

declare dso_local i32 @nl80211_prepare_wdev_dump(%struct.netlink_callback*, %struct.cfg80211_registered_device**, %struct.wireless_dev**) #2

declare dso_local i32 @memset(%struct.station_info*, i32, i32) #2

declare dso_local i32 @rdev_dump_station(%struct.cfg80211_registered_device*, i32, i32, i32*, %struct.station_info*) #2

declare dso_local i64 @nl80211_send_station(%struct.sk_buff*, i32, i32, i32, i32, %struct.cfg80211_registered_device*, i32, i32*, %struct.station_info*) #2

declare dso_local i32 @NETLINK_CB(i32) #2

declare dso_local i32 @rtnl_unlock(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
