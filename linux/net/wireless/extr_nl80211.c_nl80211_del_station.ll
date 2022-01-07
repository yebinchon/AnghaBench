; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_del_station.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_del_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.station_del_parameters = type { i32, i64, i32 }

@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_GO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_MGMT_SUBTYPE = common dso_local global i64 0, align 8
@IEEE80211_STYPE_DISASSOC = common dso_local global i32 0, align 4
@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4
@NL80211_ATTR_REASON_CODE = common dso_local global i64 0, align 8
@WLAN_REASON_PREV_AUTH_NOT_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_del_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_del_station(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.station_del_parameters, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 1
  %11 = load %struct.net_device**, %struct.net_device*** %10, align 8
  %12 = getelementptr inbounds %struct.net_device*, %struct.net_device** %11, i64 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  %14 = bitcast %struct.net_device* %13 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %14, %struct.cfg80211_registered_device** %6, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 1
  %17 = load %struct.net_device**, %struct.net_device*** %16, align 8
  %18 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 1
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %7, align 8
  %20 = call i32 @memset(%struct.station_del_parameters* %8, i32 0, i32 24)
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %30 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @nla_data(i64 %34)
  %36 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %8, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  br label %37

37:                                               ; preds = %28, %2
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %37
  %46 = load %struct.net_device*, %struct.net_device** %7, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %45
  %54 = load %struct.net_device*, %struct.net_device** %7, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = load %struct.net_device*, %struct.net_device** %7, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %150

72:                                               ; preds = %61, %53, %45, %37
  %73 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %74 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @EOPNOTSUPP, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %150

82:                                               ; preds = %72
  %83 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %84 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @NL80211_ATTR_MGMT_SUBTYPE, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %82
  %91 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %92 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* @NL80211_ATTR_MGMT_SUBTYPE, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @nla_get_u8(i64 %96)
  %98 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %8, i32 0, i32 0
  store i32 %97, i32* %98, align 8
  %99 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %8, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IEEE80211_STYPE_DISASSOC, align 4
  %102 = ashr i32 %101, 4
  %103 = icmp ne i32 %100, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %90
  %105 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %8, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %108 = ashr i32 %107, 4
  %109 = icmp ne i32 %106, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %150

113:                                              ; preds = %104, %90
  br label %118

114:                                              ; preds = %82
  %115 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %116 = ashr i32 %115, 4
  %117 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %8, i32 0, i32 0
  store i32 %116, i32* %117, align 8
  br label %118

118:                                              ; preds = %114, %113
  %119 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %120 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* @NL80211_ATTR_REASON_CODE, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %118
  %127 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %128 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* @NL80211_ATTR_REASON_CODE, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @nla_get_u16(i64 %132)
  %134 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %8, i32 0, i32 1
  store i64 %133, i64* %134, align 8
  %135 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %8, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %126
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %3, align 4
  br label %150

141:                                              ; preds = %126
  br label %145

142:                                              ; preds = %118
  %143 = load i64, i64* @WLAN_REASON_PREV_AUTH_NOT_VALID, align 8
  %144 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %8, i32 0, i32 1
  store i64 %143, i64* %144, align 8
  br label %145

145:                                              ; preds = %142, %141
  %146 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %147 = bitcast %struct.cfg80211_registered_device* %146 to %struct.net_device*
  %148 = load %struct.net_device*, %struct.net_device** %7, align 8
  %149 = call i32 @rdev_del_station(%struct.net_device* %147, %struct.net_device* %148, %struct.station_del_parameters* %8)
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %145, %138, %110, %79, %69
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @memset(%struct.station_del_parameters*, i32, i32) #1

declare dso_local i32 @nla_data(i64) #1

declare dso_local i32 @nla_get_u8(i64) #1

declare dso_local i64 @nla_get_u16(i64) #1

declare dso_local i32 @rdev_del_station(%struct.net_device*, %struct.net_device*, %struct.station_del_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
