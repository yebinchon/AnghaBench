; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_ap_stopped.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_ap_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { %struct.TYPE_2__*, %struct.wiphy* }
%struct.TYPE_2__ = type { i32 }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NL80211_CMD_STOP_AP = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl80211_send_ap_stopped(%struct.wireless_dev* %0) #0 {
  %2 = alloca %struct.wireless_dev*, align 8
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %2, align 8
  %7 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %8 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %7, i32 0, i32 1
  %9 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  store %struct.wiphy* %9, %struct.wiphy** %3, align 8
  %10 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %11 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %10)
  store %struct.cfg80211_registered_device* %11, %struct.cfg80211_registered_device** %4, align 8
  %12 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sk_buff* @nlmsg_new(i32 %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %65

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = load i32, i32* @NL80211_CMD_STOP_AP, align 4
  %21 = call i8* @nl80211hdr_put(%struct.sk_buff* %19, i32 0, i32 0, i32 0, i32 %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %62

25:                                               ; preds = %18
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %28 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %29 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @nla_put_u32(%struct.sk_buff* %26, i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %25
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %36 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %37 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @nla_put_u32(%struct.sk_buff* %34, i32 %35, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %33
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %46 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %47 = call i32 @wdev_id(%struct.wireless_dev* %46)
  %48 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %49 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %44, i32 %45, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %33, %25
  br label %62

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @genlmsg_end(%struct.sk_buff* %53, i8* %54)
  %56 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %57 = call i32 @wiphy_net(%struct.wiphy* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %57, %struct.sk_buff* %58, i32 0, i32 %59, i32 %60)
  br label %65

62:                                               ; preds = %51, %24
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @nlmsg_free(%struct.sk_buff* %63)
  br label %65

65:                                               ; preds = %62, %52, %17
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(%struct.wiphy*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
