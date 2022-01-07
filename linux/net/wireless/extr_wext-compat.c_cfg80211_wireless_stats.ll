; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wireless_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wireless_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_statistics = type { i32, i32, i32, %struct.TYPE_12__, i32, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.station_info = type { i32, i32, i32, %struct.TYPE_12__, i32, %struct.TYPE_11__ }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@cfg80211_wireless_stats.wstats = internal global %struct.iw_statistics zeroinitializer, align 4
@cfg80211_wireless_stats.sinfo = internal global %struct.station_info zeroinitializer, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_STA_INFO_SIGNAL = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_QUAL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_DBM = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_INVALID = common dso_local global i32 0, align 4
@IW_QUAL_QUAL_INVALID = common dso_local global i32 0, align 4
@IW_QUAL_NOISE_INVALID = common dso_local global i32 0, align 4
@NL80211_STA_INFO_RX_DROP_MISC = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iw_statistics* (%struct.net_device*)* @cfg80211_wireless_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iw_statistics* @cfg80211_wireless_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.iw_statistics*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.wireless_dev*, align 8
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  store %struct.wireless_dev* %12, %struct.wireless_dev** %4, align 8
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %14 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %15)
  store %struct.cfg80211_registered_device* %16, %struct.cfg80211_registered_device** %5, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %22, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store %struct.iw_statistics* null, %struct.iw_statistics** %2, align 8
  store i32 1, i32* %8, align 4
  br label %144

29:                                               ; preds = %1
  %30 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %31 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store %struct.iw_statistics* null, %struct.iw_statistics** %2, align 8
  store i32 1, i32* %8, align 4
  br label %144

37:                                               ; preds = %29
  %38 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %39 = call i32 @wdev_lock(%struct.wireless_dev* %38)
  %40 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %41 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = icmp ne %struct.TYPE_9__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %46 = call i32 @wdev_unlock(%struct.wireless_dev* %45)
  store %struct.iw_statistics* null, %struct.iw_statistics** %2, align 8
  store i32 1, i32* %8, align 4
  br label %144

47:                                               ; preds = %37
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %49 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy(i32* %20, i32 %53, i32 %54)
  %56 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %57 = call i32 @wdev_unlock(%struct.wireless_dev* %56)
  %58 = call i32 @memset(%struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 36)
  %59 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = call i64 @rdev_get_station(%struct.cfg80211_registered_device* %59, %struct.net_device* %60, i32* %20, %struct.station_info* @cfg80211_wireless_stats.sinfo)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  store %struct.iw_statistics* null, %struct.iw_statistics** %2, align 8
  store i32 1, i32* %8, align 4
  br label %144

64:                                               ; preds = %47
  %65 = call i32 @memset(%struct.station_info* bitcast (%struct.iw_statistics* @cfg80211_wireless_stats.wstats to %struct.station_info*), i32 0, i32 36)
  %66 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %67 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %116 [
    i32 129, label %70
    i32 128, label %100
  ]

70:                                               ; preds = %64
  %71 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 0), align 4
  %72 = load i32, i32* @NL80211_STA_INFO_SIGNAL, align 4
  %73 = call i32 @BIT_ULL(i32 %72)
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %70
  %77 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 1), align 4
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @IW_QUAL_LEVEL_UPDATED, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 2), align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 2), align 4
  %81 = load i32, i32* @IW_QUAL_QUAL_UPDATED, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 2), align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 2), align 4
  %84 = load i32, i32* @IW_QUAL_DBM, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 2), align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 2), align 4
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 0), align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, -110
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  store i32 -110, i32* %9, align 4
  br label %96

91:                                               ; preds = %76
  %92 = load i32, i32* %9, align 4
  %93 = icmp sgt i32 %92, -40
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 -40, i32* %9, align 4
  br label %95

95:                                               ; preds = %94, %91
  br label %96

96:                                               ; preds = %95, %90
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 110
  store i32 %98, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 1), align 4
  br label %123

99:                                               ; preds = %70
  br label %100

100:                                              ; preds = %64, %99
  %101 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 0), align 4
  %102 = load i32, i32* @NL80211_STA_INFO_SIGNAL, align 4
  %103 = call i32 @BIT_ULL(i32 %102)
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load i32, i32* @IW_QUAL_LEVEL_UPDATED, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 2), align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 2), align 4
  %110 = load i32, i32* @IW_QUAL_QUAL_UPDATED, align 4
  %111 = load i32, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 2), align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 2), align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 1), align 4
  store i32 %113, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 0), align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 1), align 4
  store i32 %114, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 1), align 4
  br label %123

115:                                              ; preds = %100
  br label %116

116:                                              ; preds = %64, %115
  %117 = load i32, i32* @IW_QUAL_LEVEL_INVALID, align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 2), align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 2), align 4
  %120 = load i32, i32* @IW_QUAL_QUAL_INVALID, align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 2), align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 2), align 4
  br label %123

123:                                              ; preds = %116, %106, %96
  %124 = load i32, i32* @IW_QUAL_NOISE_INVALID, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 2), align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 5, i32 2), align 4
  %127 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 0), align 4
  %128 = load i32, i32* @NL80211_STA_INFO_RX_DROP_MISC, align 4
  %129 = call i32 @BIT_ULL(i32 %128)
  %130 = and i32 %127, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %123
  %133 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 4), align 4
  store i32 %133, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 3, i32 1), align 4
  br label %134

134:                                              ; preds = %132, %123
  %135 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 0), align 4
  %136 = load i32, i32* @NL80211_STA_INFO_TX_FAILED, align 4
  %137 = call i32 @BIT_ULL(i32 %136)
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 2), align 4
  store i32 %141, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 3, i32 0), align 4
  br label %142

142:                                              ; preds = %140, %134
  %143 = call i32 @cfg80211_sinfo_release_content(%struct.station_info* @cfg80211_wireless_stats.sinfo)
  store %struct.iw_statistics* @cfg80211_wireless_stats.wstats, %struct.iw_statistics** %2, align 8
  store i32 1, i32* %8, align 4
  br label %144

144:                                              ; preds = %142, %63, %44, %36, %28
  %145 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load %struct.iw_statistics*, %struct.iw_statistics** %2, align 8
  ret %struct.iw_statistics* %146
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.station_info*, i32, i32) #1

declare dso_local i64 @rdev_get_station(%struct.cfg80211_registered_device*, %struct.net_device*, i32*, %struct.station_info*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @cfg80211_sinfo_release_content(%struct.station_info*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
