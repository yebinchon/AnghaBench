; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_radar_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_radar_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.net_device = type { i32, %struct.wireless_dev* }
%struct.wireless_dev = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_RADAR_DETECT = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@NL80211_ATTR_RADAR_EVENT = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl80211_radar_notify(%struct.cfg80211_registered_device* %0, %struct.cfg80211_chan_def* %1, i32 %2, %struct.net_device* %3, i32 %4) #0 {
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.cfg80211_chan_def*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.wireless_dev*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %6, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call %struct.sk_buff* @nlmsg_new(i32 %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %11, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %89

20:                                               ; preds = %5
  %21 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %22 = load i32, i32* @NL80211_CMD_RADAR_DETECT, align 4
  %23 = call i8* @nl80211hdr_put(%struct.sk_buff* %21, i32 0, i32 0, i32 0, i32 %22)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %28 = call i32 @nlmsg_free(%struct.sk_buff* %27)
  br label %89

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %31 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %32 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %33 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @nla_put_u32(%struct.sk_buff* %30, i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %86

38:                                               ; preds = %29
  %39 = load %struct.net_device*, %struct.net_device** %9, align 8
  %40 = icmp ne %struct.net_device* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load %struct.net_device*, %struct.net_device** %9, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = load %struct.wireless_dev*, %struct.wireless_dev** %43, align 8
  store %struct.wireless_dev* %44, %struct.wireless_dev** %13, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %46 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %47 = load %struct.net_device*, %struct.net_device** %9, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @nla_put_u32(%struct.sk_buff* %45, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %41
  %53 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %54 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %55 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %56 = call i32 @wdev_id(%struct.wireless_dev* %55)
  %57 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %58 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %53, i32 %54, i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52, %41
  br label %86

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %38
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = load i32, i32* @NL80211_ATTR_RADAR_EVENT, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @nla_put_u32(%struct.sk_buff* %63, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %86

69:                                               ; preds = %62
  %70 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %71 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %72 = call i64 @nl80211_send_chandef(%struct.sk_buff* %70, %struct.cfg80211_chan_def* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %86

75:                                               ; preds = %69
  %76 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @genlmsg_end(%struct.sk_buff* %76, i8* %77)
  %79 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %80 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %79, i32 0, i32 1
  %81 = call i32 @wiphy_net(i32* %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %83 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %81, %struct.sk_buff* %82, i32 0, i32 %83, i32 %84)
  br label %89

86:                                               ; preds = %74, %68, %60, %37
  %87 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %88 = call i32 @nlmsg_free(%struct.sk_buff* %87)
  br label %89

89:                                               ; preds = %86, %75, %26, %19
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local i64 @nl80211_send_chandef(%struct.sk_buff*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
