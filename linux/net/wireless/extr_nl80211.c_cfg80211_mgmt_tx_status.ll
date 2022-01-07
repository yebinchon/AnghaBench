; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_mgmt_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_mgmt_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { %struct.net_device*, %struct.wiphy* }
%struct.net_device = type { i32 }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NL80211_CMD_FRAME_TX_STATUS = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@NL80211_ATTR_FRAME = common dso_local global i32 0, align 4
@NL80211_ATTR_COOKIE = common dso_local global i32 0, align 4
@NL80211_ATTR_ACK = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_mgmt_tx_status(%struct.wireless_dev* %0, i32 %1, i32* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wiphy*, align 8
  %14 = alloca %struct.cfg80211_registered_device*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i8*, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 1
  %20 = load %struct.wiphy*, %struct.wiphy** %19, align 8
  store %struct.wiphy* %20, %struct.wiphy** %13, align 8
  %21 = load %struct.wiphy*, %struct.wiphy** %13, align 8
  %22 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %21)
  store %struct.cfg80211_registered_device* %22, %struct.cfg80211_registered_device** %14, align 8
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %15, align 8
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @trace_cfg80211_mgmt_tx_status(%struct.wireless_dev* %26, i32 %27, i32 %28)
  %30 = load i64, i64* %10, align 8
  %31 = add i64 100, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %12, align 4
  %34 = call %struct.sk_buff* @nlmsg_new(i32 %32, i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %16, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %6
  br label %111

38:                                               ; preds = %6
  %39 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %40 = load i32, i32* @NL80211_CMD_FRAME_TX_STATUS, align 4
  %41 = call i8* @nl80211hdr_put(%struct.sk_buff* %39, i32 0, i32 0, i32 0, i32 %40)
  store i8* %41, i8** %17, align 8
  %42 = load i8*, i8** %17, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %46 = call i32 @nlmsg_free(%struct.sk_buff* %45)
  br label %111

47:                                               ; preds = %38
  %48 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %49 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %50 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %14, align 8
  %51 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @nla_put_u32(%struct.sk_buff* %48, i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %96, label %55

55:                                               ; preds = %47
  %56 = load %struct.net_device*, %struct.net_device** %15, align 8
  %57 = icmp ne %struct.net_device* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %60 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %61 = load %struct.net_device*, %struct.net_device** %15, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @nla_put_u32(%struct.sk_buff* %59, i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %96, label %66

66:                                               ; preds = %58, %55
  %67 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %68 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %69 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %70 = call i32 @wdev_id(%struct.wireless_dev* %69)
  %71 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %72 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %67, i32 %68, i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %96, label %74

74:                                               ; preds = %66
  %75 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %76 = load i32, i32* @NL80211_ATTR_FRAME, align 4
  %77 = load i64, i64* %10, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = call i64 @nla_put(%struct.sk_buff* %75, i32 %76, i64 %77, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %74
  %82 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %83 = load i32, i32* @NL80211_ATTR_COOKIE, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %86 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %82, i32 %83, i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %93 = load i32, i32* @NL80211_ATTR_ACK, align 4
  %94 = call i64 @nla_put_flag(%struct.sk_buff* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %81, %74, %66, %58, %47
  br label %108

97:                                               ; preds = %91, %88
  %98 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = call i32 @genlmsg_end(%struct.sk_buff* %98, i8* %99)
  %101 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %14, align 8
  %102 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %101, i32 0, i32 0
  %103 = call i32 @wiphy_net(i32* %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %105 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %103, %struct.sk_buff* %104, i32 0, i32 %105, i32 %106)
  br label %111

108:                                              ; preds = %96
  %109 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %110 = call i32 @nlmsg_free(%struct.sk_buff* %109)
  br label %111

111:                                              ; preds = %108, %97, %44, %37
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_mgmt_tx_status(%struct.wireless_dev*, i32, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32*) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
