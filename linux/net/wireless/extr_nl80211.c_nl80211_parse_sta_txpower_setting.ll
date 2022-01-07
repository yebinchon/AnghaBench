; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_sta_txpower_setting.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_sta_txpower_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i64*, %struct.cfg80211_registered_device** }
%struct.cfg80211_registered_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.station_parameters = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@NL80211_ATTR_STA_TX_POWER_SETTING = common dso_local global i64 0, align 8
@NL80211_EXT_FEATURE_STA_TX_PWR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_TX_POWER_LIMITED = common dso_local global i32 0, align 4
@NL80211_ATTR_STA_TX_POWER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@STATION_PARAM_APPLY_STA_TXPOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.station_parameters*)* @nl80211_parse_sta_txpower_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_parse_sta_txpower_setting(%struct.genl_info* %0, %struct.station_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.station_parameters*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.station_parameters* %1, %struct.station_parameters** %5, align 8
  %8 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %9 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %8, i32 0, i32 1
  %10 = load %struct.cfg80211_registered_device**, %struct.cfg80211_registered_device*** %9, align 8
  %11 = getelementptr inbounds %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, i64 0
  %12 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  store %struct.cfg80211_registered_device* %12, %struct.cfg80211_registered_device** %6, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @NL80211_ATTR_STA_TX_POWER_SETTING, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %88

20:                                               ; preds = %2
  %21 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %22 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %29 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %28, i32 0, i32 0
  %30 = load i32, i32* @NL80211_EXT_FEATURE_STA_TX_PWR, align 4
  %31 = call i32 @wiphy_ext_feature_isset(i32* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27, %20
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %89

36:                                               ; preds = %27
  %37 = load i64, i64* @NL80211_ATTR_STA_TX_POWER_SETTING, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %40 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @nla_get_u8(i64 %45)
  %47 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %48 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %51 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @NL80211_TX_POWER_LIMITED, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %36
  %57 = load i32, i32* @NL80211_ATTR_STA_TX_POWER, align 4
  store i32 %57, i32* %7, align 4
  %58 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %59 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %56
  %67 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %68 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @nla_get_s16(i64 %73)
  %75 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %76 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  br label %81

78:                                               ; preds = %56
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %89

81:                                               ; preds = %66
  br label %82

82:                                               ; preds = %81, %36
  %83 = load i32, i32* @STATION_PARAM_APPLY_STA_TXPOWER, align 4
  %84 = load %struct.station_parameters*, %struct.station_parameters** %5, align 8
  %85 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %2
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %78, %33
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @wiphy_ext_feature_isset(i32*, i32) #1

declare dso_local i32 @nla_get_u8(i64) #1

declare dso_local i32 @nla_get_s16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
