; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_add_station.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_add_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_parameters = type { i32, %struct.net_device* }
%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_TDLS_PEER = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WLAN_STA_TDLS_PEER = common dso_local global i32 0, align 4
@WLAN_STA_ASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, %struct.station_parameters*)* @ieee80211_add_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_add_station(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, %struct.station_parameters* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.station_parameters*, align 8
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.sta_info*, align 8
  %12 = alloca %struct.ieee80211_sub_if_data*, align 8
  %13 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.station_parameters* %3, %struct.station_parameters** %9, align 8
  %14 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %15 = call %struct.ieee80211_local* @wiphy_priv(%struct.wiphy* %14)
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %10, align 8
  %16 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %17 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %16, i32 0, i32 1
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  %19 = icmp ne %struct.net_device* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %4
  %21 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %22 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %21, i32 0, i32 1
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  %24 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %23)
  store %struct.ieee80211_sub_if_data* %24, %struct.ieee80211_sub_if_data** %12, align 8
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %20
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %145

41:                                               ; preds = %31, %20
  br label %45

42:                                               ; preds = %4
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %43)
  store %struct.ieee80211_sub_if_data* %44, %struct.ieee80211_sub_if_data** %12, align 8
  br label %45

45:                                               ; preds = %42, %41
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @ether_addr_equal(i32* %46, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %145

56:                                               ; preds = %45
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @is_valid_ether_addr(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %145

63:                                               ; preds = %56
  %64 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %65 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @NL80211_STA_FLAG_TDLS_PEER, align 4
  %68 = call i32 @BIT(i32 %67)
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %63
  %72 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %73 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %71
  %79 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %80 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %145

88:                                               ; preds = %78, %71, %63
  %89 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call %struct.sta_info* @sta_info_alloc(%struct.ieee80211_sub_if_data* %89, i32* %90, i32 %91)
  store %struct.sta_info* %92, %struct.sta_info** %11, align 8
  %93 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %94 = icmp ne %struct.sta_info* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %145

98:                                               ; preds = %88
  %99 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %100 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @NL80211_STA_FLAG_TDLS_PEER, align 4
  %103 = call i32 @BIT(i32 %102)
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %108 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %106, %98
  %111 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %112 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %113 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %114 = call i32 @sta_apply_parameters(%struct.ieee80211_local* %111, %struct.sta_info* %112, %struct.station_parameters* %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %119 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %120 = call i32 @sta_info_free(%struct.ieee80211_local* %118, %struct.sta_info* %119)
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %5, align 4
  br label %145

122:                                              ; preds = %110
  %123 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %124 = load i32, i32* @WLAN_STA_TDLS_PEER, align 4
  %125 = call i64 @test_sta_flag(%struct.sta_info* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %122
  %128 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %129 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %130 = call i64 @test_sta_flag(%struct.sta_info* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %134 = call i32 @rate_control_rate_init(%struct.sta_info* %133)
  br label %135

135:                                              ; preds = %132, %127, %122
  %136 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %137 = call i32 @sta_info_insert_rcu(%struct.sta_info* %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = call i32 (...) @rcu_read_unlock()
  %142 = load i32, i32* %13, align 4
  store i32 %142, i32* %5, align 4
  br label %145

143:                                              ; preds = %135
  %144 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %143, %140, %117, %95, %85, %60, %53, %38
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local %struct.ieee80211_local* @wiphy_priv(%struct.wiphy*) #1

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i64 @ether_addr_equal(i32*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.sta_info* @sta_info_alloc(%struct.ieee80211_sub_if_data*, i32*, i32) #1

declare dso_local i32 @sta_apply_parameters(%struct.ieee80211_local*, %struct.sta_info*, %struct.station_parameters*) #1

declare dso_local i32 @sta_info_free(%struct.ieee80211_local*, %struct.sta_info*) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @rate_control_rate_init(%struct.sta_info*) #1

declare dso_local i32 @sta_info_insert_rcu(%struct.sta_info*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
