; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_power_save.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_power_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_2__*, %struct.wireless_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.wireless_dev = type { i32, i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__*, %struct.wireless_dev* }

@NL80211_ATTR_PS_STATE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_PS_ENABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_power_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_power_save(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 1
  %14 = load %struct.net_device**, %struct.net_device*** %13, align 8
  %15 = getelementptr inbounds %struct.net_device*, %struct.net_device** %14, i64 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = bitcast %struct.net_device* %16 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %17, %struct.cfg80211_registered_device** %6, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 1
  %20 = load %struct.net_device**, %struct.net_device*** %19, align 8
  %21 = getelementptr inbounds %struct.net_device*, %struct.net_device** %20, i64 1
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %8, align 8
  %23 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %24 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @NL80211_ATTR_PS_STATE, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %82

33:                                               ; preds = %2
  %34 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @NL80211_ATTR_PS_STATE, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @nla_get_u32(i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load %struct.net_device*, %struct.net_device** %8, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 1
  %43 = load %struct.wireless_dev*, %struct.wireless_dev** %42, align 8
  store %struct.wireless_dev* %43, %struct.wireless_dev** %7, align 8
  %44 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %45 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %33
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %82

53:                                               ; preds = %33
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @NL80211_PS_ENABLED, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %61 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %82

65:                                               ; preds = %53
  %66 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %67 = bitcast %struct.cfg80211_registered_device* %66 to %struct.net_device*
  %68 = load %struct.net_device*, %struct.net_device** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %71 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @rdev_set_power_mgmt(%struct.net_device* %67, %struct.net_device* %68, i32 %69, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %79 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %65
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %64, %50, %30
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @nla_get_u32(i32) #1

declare dso_local i32 @rdev_set_power_mgmt(%struct.net_device*, %struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
