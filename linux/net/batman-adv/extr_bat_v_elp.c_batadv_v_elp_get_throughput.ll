; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_elp.c_batadv_v_elp_get_throughput.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_elp.c_batadv_v_elp_get_throughput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hardif_neigh_node = type { i32, %struct.batadv_hard_iface* }
%struct.batadv_hard_iface = type { %struct.TYPE_6__, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.net_device = type { i32 }
%struct.station_info = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@NL80211_STA_INFO_EXPECTED_THROUGHPUT = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@BATADV_FULL_DUPLEX = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@BATADV_WARNING_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [230 x i8] c"WiFi driver or ethtool info does not provide information about link speeds on interface %s, therefore defaulting to hardcoded throughput values of %u.%1u Mbps. Consider overriding the throughput manually or checking your driver.\0A\00", align 1
@BATADV_THROUGHPUT_DEFAULT_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_hardif_neigh_node*)* @batadv_v_elp_get_throughput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_v_elp_get_throughput(%struct.batadv_hardif_neigh_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.batadv_hardif_neigh_node*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.ethtool_link_ksettings, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.station_info, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.batadv_hardif_neigh_node* %0, %struct.batadv_hardif_neigh_node** %3, align 8
  %10 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %3, align 8
  %11 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %10, i32 0, i32 1
  %12 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %11, align 8
  store %struct.batadv_hard_iface* %12, %struct.batadv_hard_iface** %4, align 8
  %13 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %14 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = call i32 @atomic_read(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %2, align 4
  br label %154

21:                                               ; preds = %1
  %22 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %23 = call i64 @batadv_is_wifi_hardif(%struct.batadv_hard_iface* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %72

25:                                               ; preds = %21
  %26 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %27 = call i32 @batadv_is_cfg80211_hardif(%struct.batadv_hard_iface* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %124

30:                                               ; preds = %25
  %31 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %32 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call %struct.net_device* @batadv_get_real_netdev(%struct.TYPE_7__* %33)
  store %struct.net_device* %34, %struct.net_device** %6, align 8
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = icmp ne %struct.net_device* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %124

38:                                               ; preds = %30
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %3, align 8
  %41 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @cfg80211_get_station(%struct.net_device* %39, i32 %42, %struct.station_info* %7)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %38
  %47 = call i32 @cfg80211_sinfo_release_content(%struct.station_info* %7)
  br label %48

48:                                               ; preds = %46, %38
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = call i32 @dev_put(%struct.net_device* %49)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %154

56:                                               ; preds = %48
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %124

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.station_info, %struct.station_info* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NL80211_STA_INFO_EXPECTED_THROUGHPUT, align 4
  %64 = call i32 @BIT(i32 %63)
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %124

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.station_info, %struct.station_info* %7, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %70, 100
  store i32 %71, i32* %2, align 4
  br label %154

72:                                               ; preds = %21
  %73 = call i32 @memset(%struct.ethtool_link_ksettings* %5, i32 0, i32 24)
  %74 = call i32 (...) @rtnl_lock()
  %75 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %76 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = call i32 @__ethtool_get_link_ksettings(%struct.TYPE_7__* %77, %struct.ethtool_link_ksettings* %5)
  store i32 %78, i32* %9, align 4
  %79 = call i32 (...) @rtnl_unlock()
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %123

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @AUTONEG_ENABLE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %123

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DUPLEX_FULL, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load i32, i32* @BATADV_FULL_DUPLEX, align 4
  %96 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %97 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 8
  br label %109

101:                                              ; preds = %88
  %102 = load i32, i32* @BATADV_FULL_DUPLEX, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %105 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %103
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %101, %94
  %110 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @SPEED_UNKNOWN, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* %8, align 4
  %121 = mul nsw i32 %120, 10
  store i32 %121, i32* %2, align 4
  br label %154

122:                                              ; preds = %115, %109
  br label %123

123:                                              ; preds = %122, %82, %72
  br label %124

124:                                              ; preds = %123, %67, %59, %37, %29
  %125 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %126 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @BATADV_WARNING_DEFAULT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %152, label %132

132:                                              ; preds = %124
  %133 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %134 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %137 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %136, i32 0, i32 1
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @BATADV_THROUGHPUT_DEFAULT_VALUE, align 4
  %142 = sdiv i32 %141, 10
  %143 = load i32, i32* @BATADV_THROUGHPUT_DEFAULT_VALUE, align 4
  %144 = srem i32 %143, 10
  %145 = call i32 @batadv_info(i32 %135, i8* getelementptr inbounds ([230 x i8], [230 x i8]* @.str, i64 0, i64 0), i32 %140, i32 %142, i32 %144)
  %146 = load i32, i32* @BATADV_WARNING_DEFAULT, align 4
  %147 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %148 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %146
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %132, %124
  %153 = load i32, i32* @BATADV_THROUGHPUT_DEFAULT_VALUE, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %152, %119, %68, %55, %19
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @batadv_is_wifi_hardif(%struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_is_cfg80211_hardif(%struct.batadv_hard_iface*) #1

declare dso_local %struct.net_device* @batadv_get_real_netdev(%struct.TYPE_7__*) #1

declare dso_local i32 @cfg80211_get_station(%struct.net_device*, i32, %struct.station_info*) #1

declare dso_local i32 @cfg80211_sinfo_release_content(%struct.station_info*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memset(%struct.ethtool_link_ksettings*, i32, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @__ethtool_get_link_ksettings(%struct.TYPE_7__*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @batadv_info(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
