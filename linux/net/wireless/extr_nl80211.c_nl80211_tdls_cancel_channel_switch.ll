; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_tdls_cancel_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_tdls_cancel_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.net_device** }
%struct.net_device = type { %struct.wireless_dev*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.wireless_dev = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cfg80211_registered_device = type { %struct.wireless_dev*, %struct.TYPE_4__, %struct.TYPE_3__* }

@NL80211_FEATURE_TDLS_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_tdls_cancel_channel_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_tdls_cancel_channel_switch(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 1
  %12 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %13 = getelementptr inbounds %struct.net_device*, %struct.net_device** %12, i64 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  %15 = bitcast %struct.net_device* %14 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %15, %struct.cfg80211_registered_device** %6, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 1
  %18 = load %struct.net_device**, %struct.net_device*** %17, align 8
  %19 = getelementptr inbounds %struct.net_device*, %struct.net_device** %18, i64 1
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %7, align 8
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %22, align 8
  store %struct.wireless_dev* %23, %struct.wireless_dev** %8, align 8
  %24 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %25 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %2
  %31 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %32 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %39 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @NL80211_FEATURE_TDLS_CHANNEL_SWITCH, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %37, %30, %2
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %86

48:                                               ; preds = %37
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load %struct.wireless_dev*, %struct.wireless_dev** %50, align 8
  %52 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %55 [
    i32 128, label %54
    i32 129, label %54
  ]

54:                                               ; preds = %48, %48
  br label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %86

58:                                               ; preds = %54
  %59 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %60 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %86

69:                                               ; preds = %58
  %70 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32* @nla_data(i32 %75)
  store i32* %76, i32** %9, align 8
  %77 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %78 = call i32 @wdev_lock(%struct.wireless_dev* %77)
  %79 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %80 = bitcast %struct.cfg80211_registered_device* %79 to %struct.net_device*
  %81 = load %struct.net_device*, %struct.net_device** %7, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @rdev_tdls_cancel_channel_switch(%struct.net_device* %80, %struct.net_device* %81, i32* %82)
  %84 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %85 = call i32 @wdev_unlock(%struct.wireless_dev* %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %69, %66, %55, %45
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32* @nla_data(i32) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @rdev_tdls_cancel_channel_switch(%struct.net_device*, %struct.net_device*, i32*) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
