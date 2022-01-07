; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_notify_new_peer_candidate.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_notify_new_peer_candidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_CMD_NEW_PEER_CANDIDATE = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@NL80211_ATTR_IE = common dso_local global i32 0, align 4
@NL80211_ATTR_RX_SIGNAL_DBM = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_notify_new_peer_candidate(%struct.net_device* %0, i64* %1, i64* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wireless_dev*, align 8
  %14 = alloca %struct.cfg80211_registered_device*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  store %struct.wireless_dev* %19, %struct.wireless_dev** %13, align 8
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %21 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %22)
  store %struct.cfg80211_registered_device* %23, %struct.cfg80211_registered_device** %14, align 8
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %25 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  br label %113

33:                                               ; preds = %6
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = load i64*, i64** %8, align 8
  %36 = call i32 @trace_cfg80211_notify_new_peer_candidate(%struct.net_device* %34, i64* %35)
  %37 = load i64, i64* %10, align 8
  %38 = add nsw i64 100, %37
  %39 = load i32, i32* %12, align 4
  %40 = call %struct.sk_buff* @nlmsg_new(i64 %38, i32 %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %15, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %113

44:                                               ; preds = %33
  %45 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %46 = load i32, i32* @NL80211_CMD_NEW_PEER_CANDIDATE, align 4
  %47 = call i8* @nl80211hdr_put(%struct.sk_buff* %45, i32 0, i32 0, i32 0, i32 %46)
  store i8* %47, i8** %16, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %52 = call i32 @nlmsg_free(%struct.sk_buff* %51)
  br label %113

53:                                               ; preds = %44
  %54 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %55 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %56 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %14, align 8
  %57 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @nla_put_u32(%struct.sk_buff* %54, i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %98, label %61

61:                                               ; preds = %53
  %62 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %63 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %64 = load %struct.net_device*, %struct.net_device** %7, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @nla_put_u32(%struct.sk_buff* %62, i32 %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %98, label %69

69:                                               ; preds = %61
  %70 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %71 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %72 = load i64, i64* @ETH_ALEN, align 8
  %73 = load i64*, i64** %8, align 8
  %74 = call i64 @nla_put(%struct.sk_buff* %70, i32 %71, i64 %72, i64* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %98, label %76

76:                                               ; preds = %69
  %77 = load i64, i64* %10, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i64*, i64** %9, align 8
  %81 = icmp ne i64* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %84 = load i32, i32* @NL80211_ATTR_IE, align 4
  %85 = load i64, i64* %10, align 8
  %86 = load i64*, i64** %9, align 8
  %87 = call i64 @nla_put(%struct.sk_buff* %83, i32 %84, i64 %85, i64* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %82, %79, %76
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %94 = load i32, i32* @NL80211_ATTR_RX_SIGNAL_DBM, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i64 @nla_put_u32(%struct.sk_buff* %93, i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92, %82, %69, %61, %53
  br label %110

99:                                               ; preds = %92, %89
  %100 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = call i32 @genlmsg_end(%struct.sk_buff* %100, i8* %101)
  %103 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %14, align 8
  %104 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %103, i32 0, i32 1
  %105 = call i32 @wiphy_net(i32* %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %107 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %105, %struct.sk_buff* %106, i32 0, i32 %107, i32 %108)
  br label %113

110:                                              ; preds = %98
  %111 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %112 = call i32 @nlmsg_free(%struct.sk_buff* %111)
  br label %113

113:                                              ; preds = %110, %99, %50, %43, %32
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @trace_cfg80211_notify_new_peer_candidate(%struct.net_device*, i64*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i64, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i64*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
