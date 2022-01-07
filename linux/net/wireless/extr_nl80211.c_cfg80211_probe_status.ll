; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_probe_status.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_probe_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.wireless_dev* }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_PROBE_CLIENT = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_COOKIE = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@NL80211_ATTR_ACK = common dso_local global i32 0, align 4
@NL80211_ATTR_ACK_SIGNAL = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_probe_status(%struct.net_device* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.wireless_dev*, align 8
  %16 = alloca %struct.cfg80211_registered_device*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 1
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %20, align 8
  store %struct.wireless_dev* %21, %struct.wireless_dev** %15, align 8
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %24)
  store %struct.cfg80211_registered_device* %25, %struct.cfg80211_registered_device** %16, align 8
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @trace_cfg80211_probe_status(%struct.net_device* %26, i32* %27, i32 %28, i32 %29)
  %31 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call %struct.sk_buff* @nlmsg_new(i32 %31, i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %17, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %7
  br label %108

37:                                               ; preds = %7
  %38 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %39 = load i32, i32* @NL80211_CMD_PROBE_CLIENT, align 4
  %40 = call i8* @nl80211hdr_put(%struct.sk_buff* %38, i32 0, i32 0, i32 0, i32 %39)
  store i8* %40, i8** %18, align 8
  %41 = load i8*, i8** %18, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %45 = call i32 @nlmsg_free(%struct.sk_buff* %44)
  br label %108

46:                                               ; preds = %37
  %47 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %48 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %49 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %16, align 8
  %50 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @nla_put_u32(%struct.sk_buff* %47, i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %93, label %54

54:                                               ; preds = %46
  %55 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %56 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %57 = load %struct.net_device*, %struct.net_device** %8, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @nla_put_u32(%struct.sk_buff* %55, i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %54
  %63 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %64 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i64 @nla_put(%struct.sk_buff* %63, i32 %64, i32 %65, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %93, label %69

69:                                               ; preds = %62
  %70 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %71 = load i32, i32* @NL80211_ATTR_COOKIE, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %74 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %70, i32 %71, i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %93, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %81 = load i32, i32* @NL80211_ATTR_ACK, align 4
  %82 = call i64 @nla_put_flag(%struct.sk_buff* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %79, %76
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %89 = load i32, i32* @NL80211_ATTR_ACK_SIGNAL, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i64 @nla_put_s32(%struct.sk_buff* %88, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87, %79, %69, %62, %54, %46
  br label %105

94:                                               ; preds = %87, %84
  %95 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %96 = load i8*, i8** %18, align 8
  %97 = call i32 @genlmsg_end(%struct.sk_buff* %95, i8* %96)
  %98 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %16, align 8
  %99 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %98, i32 0, i32 0
  %100 = call i32 @wiphy_net(i32* %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %102 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %100, %struct.sk_buff* %101, i32 0, i32 %102, i32 %103)
  br label %108

105:                                              ; preds = %93
  %106 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %107 = call i32 @nlmsg_free(%struct.sk_buff* %106)
  br label %108

108:                                              ; preds = %105, %94, %43, %36
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @trace_cfg80211_probe_status(%struct.net_device*, i32*, i32, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_s32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
