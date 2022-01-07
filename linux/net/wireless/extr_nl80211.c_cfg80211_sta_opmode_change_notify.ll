; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_sta_opmode_change_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_sta_opmode_change_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.wireless_dev* }
%struct.wireless_dev = type { i32 }
%struct.sta_opmode_info = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_STA_OPMODE_CHANGED = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@STA_OPMODE_SMPS_MODE_CHANGED = common dso_local global i32 0, align 4
@NL80211_ATTR_SMPS_MODE = common dso_local global i32 0, align 4
@STA_OPMODE_MAX_BW_CHANGED = common dso_local global i32 0, align 4
@NL80211_ATTR_CHANNEL_WIDTH = common dso_local global i32 0, align 4
@STA_OPMODE_N_SS_CHANGED = common dso_local global i32 0, align 4
@NL80211_ATTR_NSS = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_sta_opmode_change_notify(%struct.net_device* %0, i32* %1, %struct.sta_opmode_info* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sta_opmode_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sta_opmode_info* %2, %struct.sta_opmode_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  store %struct.wireless_dev* %15, %struct.wireless_dev** %10, align 8
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %17 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %18)
  store %struct.cfg80211_registered_device* %19, %struct.cfg80211_registered_device** %11, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %131

27:                                               ; preds = %4
  %28 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.sk_buff* @nlmsg_new(i32 %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %9, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %131

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = load i32, i32* @NL80211_CMD_STA_OPMODE_CHANGED, align 4
  %37 = call i8* @nl80211hdr_put(%struct.sk_buff* %35, i32 0, i32 0, i32 0, i32 %36)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %42 = call i32 @nlmsg_free(%struct.sk_buff* %41)
  br label %131

43:                                               ; preds = %34
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %46 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %47 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @nla_put_u32(%struct.sk_buff* %44, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %128

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @nla_put_u32(%struct.sk_buff* %53, i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %128

61:                                               ; preds = %52
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = call i64 @nla_put(%struct.sk_buff* %62, i32 %63, i32 %64, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %128

69:                                               ; preds = %61
  %70 = load %struct.sta_opmode_info*, %struct.sta_opmode_info** %7, align 8
  %71 = getelementptr inbounds %struct.sta_opmode_info, %struct.sta_opmode_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @STA_OPMODE_SMPS_MODE_CHANGED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = load i32, i32* @NL80211_ATTR_SMPS_MODE, align 4
  %79 = load %struct.sta_opmode_info*, %struct.sta_opmode_info** %7, align 8
  %80 = getelementptr inbounds %struct.sta_opmode_info, %struct.sta_opmode_info* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @nla_put_u8(%struct.sk_buff* %77, i32 %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %128

85:                                               ; preds = %76, %69
  %86 = load %struct.sta_opmode_info*, %struct.sta_opmode_info** %7, align 8
  %87 = getelementptr inbounds %struct.sta_opmode_info, %struct.sta_opmode_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @STA_OPMODE_MAX_BW_CHANGED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %94 = load i32, i32* @NL80211_ATTR_CHANNEL_WIDTH, align 4
  %95 = load %struct.sta_opmode_info*, %struct.sta_opmode_info** %7, align 8
  %96 = getelementptr inbounds %struct.sta_opmode_info, %struct.sta_opmode_info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @nla_put_u8(%struct.sk_buff* %93, i32 %94, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %128

101:                                              ; preds = %92, %85
  %102 = load %struct.sta_opmode_info*, %struct.sta_opmode_info** %7, align 8
  %103 = getelementptr inbounds %struct.sta_opmode_info, %struct.sta_opmode_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @STA_OPMODE_N_SS_CHANGED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %101
  %109 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %110 = load i32, i32* @NL80211_ATTR_NSS, align 4
  %111 = load %struct.sta_opmode_info*, %struct.sta_opmode_info** %7, align 8
  %112 = getelementptr inbounds %struct.sta_opmode_info, %struct.sta_opmode_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @nla_put_u8(%struct.sk_buff* %109, i32 %110, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %128

117:                                              ; preds = %108, %101
  %118 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 @genlmsg_end(%struct.sk_buff* %118, i8* %119)
  %121 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %122 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %121, i32 0, i32 0
  %123 = call i32 @wiphy_net(i32* %122)
  %124 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %125 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %123, %struct.sk_buff* %124, i32 0, i32 %125, i32 %126)
  br label %131

128:                                              ; preds = %116, %100, %84, %68, %60, %51
  %129 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %130 = call i32 @nlmsg_free(%struct.sk_buff* %129)
  br label %131

131:                                              ; preds = %128, %117, %40, %33, %26
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
