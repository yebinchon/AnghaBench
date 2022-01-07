; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_cqm_rssi_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_cqm_rssi_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i64, i32, i64* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.station_info = type { i32, i64 }

@NL80211_STA_INFO_BEACON_SIGNAL_AVG = common dso_local global i32 0, align 4
@S32_MIN = common dso_local global i64 0, align 8
@S32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.net_device*)* @cfg80211_cqm_rssi_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_cqm_rssi_update(%struct.cfg80211_registered_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.station_info, align 8
  %16 = alloca i32*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  store %struct.wireless_dev* %19, %struct.wireless_dev** %6, align 8
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %21 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 @rdev_set_cqm_rssi_range_config(%struct.cfg80211_registered_device* %25, %struct.net_device* %26, i64 0, i64 0)
  store i32 %27, i32* %3, align 4
  br label %168

28:                                               ; preds = %2
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %78, label %35

35:                                               ; preds = %28
  %36 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %37 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %78

40:                                               ; preds = %35
  %41 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %42 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %40
  %48 = bitcast %struct.station_info* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %48, i8 0, i64 16, i1 false)
  %49 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %50 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %16, align 8
  %55 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = call i32 @rdev_get_station(%struct.cfg80211_registered_device* %55, %struct.net_device* %56, i32* %57, %struct.station_info* %15)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %3, align 4
  br label %168

63:                                               ; preds = %47
  %64 = getelementptr inbounds %struct.station_info, %struct.station_info* %15, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @NL80211_STA_INFO_BEACON_SIGNAL_AVG, align 4
  %67 = call i32 @BIT_ULL(i32 %66)
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.station_info, %struct.station_info* %15, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %74 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i64 %72, i64* %76, align 8
  br label %77

77:                                               ; preds = %70, %63
  br label %78

78:                                               ; preds = %77, %40, %35, %28
  %79 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %80 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %7, align 8
  %84 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %85 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %10, align 8
  %89 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %90 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %115, %78
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %118

98:                                               ; preds = %94
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @array_index_nospec(i32 %99, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i64, i64* %7, align 8
  %103 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %104 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %102, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %98
  br label %118

114:                                              ; preds = %98
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %94

118:                                              ; preds = %113, %94
  %119 = load i32, i32* %11, align 4
  %120 = sub nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %118
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @array_index_nospec(i32 %124, i32 %125)
  store i32 %126, i32* %13, align 4
  %127 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %128 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %10, align 8
  %137 = sub nsw i64 %135, %136
  store i64 %137, i64* %8, align 8
  br label %140

138:                                              ; preds = %118
  %139 = load i64, i64* @S32_MIN, align 8
  store i64 %139, i64* %8, align 8
  br label %140

140:                                              ; preds = %138, %123
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %140
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @array_index_nospec(i32 %145, i32 %146)
  store i32 %147, i32* %11, align 4
  %148 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %149 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %148, i32 0, i32 0
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %10, align 8
  %158 = add nsw i64 %156, %157
  %159 = sub nsw i64 %158, 1
  store i64 %159, i64* %9, align 8
  br label %162

160:                                              ; preds = %140
  %161 = load i64, i64* @S32_MAX, align 8
  store i64 %161, i64* %9, align 8
  br label %162

162:                                              ; preds = %160, %144
  %163 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %164 = load %struct.net_device*, %struct.net_device** %5, align 8
  %165 = load i64, i64* %8, align 8
  %166 = load i64, i64* %9, align 8
  %167 = call i32 @rdev_set_cqm_rssi_range_config(%struct.cfg80211_registered_device* %163, %struct.net_device* %164, i64 %165, i64 %166)
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %162, %61, %24
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @rdev_set_cqm_rssi_range_config(%struct.cfg80211_registered_device*, %struct.net_device*, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rdev_get_station(%struct.cfg80211_registered_device*, %struct.net_device*, i32*, %struct.station_info*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @array_index_nospec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
