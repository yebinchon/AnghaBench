; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_remain_on_chan_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_remain_on_chan_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, i32 }
%struct.wireless_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_FREQ = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_CHANNEL_TYPE = common dso_local global i32 0, align 4
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@NL80211_ATTR_COOKIE = common dso_local global i32 0, align 4
@NL80211_CMD_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@NL80211_ATTR_DURATION = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cfg80211_registered_device*, %struct.wireless_dev*, i32, %struct.ieee80211_channel*, i32, i32)* @nl80211_send_remain_on_chan_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_send_remain_on_chan_event(i32 %0, %struct.cfg80211_registered_device* %1, %struct.wireless_dev* %2, i32 %3, %struct.ieee80211_channel* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cfg80211_registered_device*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_channel*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.cfg80211_registered_device* %1, %struct.cfg80211_registered_device** %9, align 8
  store %struct.wireless_dev* %2, %struct.wireless_dev** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ieee80211_channel* %4, %struct.ieee80211_channel** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %18 = load i32, i32* %14, align 4
  %19 = call %struct.sk_buff* @nlmsg_new(i32 %17, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %15, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %7
  br label %110

23:                                               ; preds = %7
  %24 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i8* @nl80211hdr_put(%struct.sk_buff* %24, i32 0, i32 0, i32 0, i32 %25)
  store i8* %26, i8** %16, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %31 = call i32 @nlmsg_free(%struct.sk_buff* %30)
  br label %110

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %34 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %35 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %36 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @nla_put_u32(%struct.sk_buff* %33, i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %84, label %40

40:                                               ; preds = %32
  %41 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %42 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %47 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %49 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @nla_put_u32(%struct.sk_buff* %46, i32 %47, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %84, label %55

55:                                               ; preds = %45, %40
  %56 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %57 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %58 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %59 = call i32 @wdev_id(%struct.wireless_dev* %58)
  %60 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %61 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %56, i32 %57, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %84, label %63

63:                                               ; preds = %55
  %64 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %65 = load i32, i32* @NL80211_ATTR_WIPHY_FREQ, align 4
  %66 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %67 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @nla_put_u32(%struct.sk_buff* %64, i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %63
  %72 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %73 = load i32, i32* @NL80211_ATTR_WIPHY_CHANNEL_TYPE, align 4
  %74 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %75 = call i64 @nla_put_u32(%struct.sk_buff* %72, i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %71
  %78 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %79 = load i32, i32* @NL80211_ATTR_COOKIE, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %82 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %78, i32 %79, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77, %71, %63, %55, %45, %32
  br label %107

85:                                               ; preds = %77
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @NL80211_CMD_REMAIN_ON_CHANNEL, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %91 = load i32, i32* @NL80211_ATTR_DURATION, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i64 @nla_put_u32(%struct.sk_buff* %90, i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %107

96:                                               ; preds = %89, %85
  %97 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %98 = load i8*, i8** %16, align 8
  %99 = call i32 @genlmsg_end(%struct.sk_buff* %97, i8* %98)
  %100 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %101 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %100, i32 0, i32 1
  %102 = call i32 @wiphy_net(i32* %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %104 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %102, %struct.sk_buff* %103, i32 0, i32 %104, i32 %105)
  br label %110

107:                                              ; preds = %95, %84
  %108 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %109 = call i32 @nlmsg_free(%struct.sk_buff* %108)
  br label %110

110:                                              ; preds = %107, %96, %29, %22
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
