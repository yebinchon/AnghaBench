; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_del_station.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_del_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_del_parameters = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.station_del_parameters*)* @ieee80211_del_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_del_station(%struct.wiphy* %0, %struct.net_device* %1, %struct.station_del_parameters* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.station_del_parameters*, align 8
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.station_del_parameters* %2, %struct.station_del_parameters** %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %6, align 8
  %10 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %9)
  store %struct.ieee80211_sub_if_data* %10, %struct.ieee80211_sub_if_data** %8, align 8
  %11 = load %struct.station_del_parameters*, %struct.station_del_parameters** %7, align 8
  %12 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %17 = load %struct.station_del_parameters*, %struct.station_del_parameters** %7, align 8
  %18 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sta_info_destroy_addr_bss(%struct.ieee80211_sub_if_data* %16, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %24

21:                                               ; preds = %3
  %22 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %23 = call i32 @sta_info_flush(%struct.ieee80211_sub_if_data* %22)
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @sta_info_destroy_addr_bss(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @sta_info_flush(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
