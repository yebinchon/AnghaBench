; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_del_sta_sinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_del_sta_sinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.station_info = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_DEL_STATION = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_del_sta_sinfo(%struct.net_device* %0, i32* %1, %struct.station_info* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.station_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wiphy*, align 8
  %10 = alloca %struct.cfg80211_registered_device*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.station_info, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.station_info* %2, %struct.station_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.wiphy*, %struct.wiphy** %16, align 8
  store %struct.wiphy* %17, %struct.wiphy** %9, align 8
  %18 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %19 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %18)
  store %struct.cfg80211_registered_device* %19, %struct.cfg80211_registered_device** %10, align 8
  %20 = bitcast %struct.station_info* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = load %struct.station_info*, %struct.station_info** %7, align 8
  %22 = icmp ne %struct.station_info* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store %struct.station_info* %12, %struct.station_info** %7, align 8
  br label %24

24:                                               ; preds = %23, %4
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @trace_cfg80211_del_sta(%struct.net_device* %25, i32* %26)
  %28 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.sk_buff* @nlmsg_new(i32 %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %11, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load %struct.station_info*, %struct.station_info** %7, align 8
  %35 = call i32 @cfg80211_sinfo_release_content(%struct.station_info* %34)
  br label %56

36:                                               ; preds = %24
  %37 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %38 = load i32, i32* @NL80211_CMD_DEL_STATION, align 4
  %39 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.station_info*, %struct.station_info** %7, align 8
  %43 = call i64 @nl80211_send_station(%struct.sk_buff* %37, i32 %38, i32 0, i32 0, i32 0, %struct.cfg80211_registered_device* %39, %struct.net_device* %40, i32* %41, %struct.station_info* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %47 = call i32 @nlmsg_free(%struct.sk_buff* %46)
  br label %56

48:                                               ; preds = %36
  %49 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %50 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %49, i32 0, i32 0
  %51 = call i32 @wiphy_net(i32* %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %53 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %51, %struct.sk_buff* %52, i32 0, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %48, %45, %33
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @trace_cfg80211_del_sta(%struct.net_device*, i32*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @cfg80211_sinfo_release_content(%struct.station_info*) #1

declare dso_local i64 @nl80211_send_station(%struct.sk_buff*, i32, i32, i32, i32, %struct.cfg80211_registered_device*, %struct.net_device*, i32*, %struct.station_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
