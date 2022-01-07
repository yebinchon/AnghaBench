; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_port_authorized.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_port_authorized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NL80211_CMD_PORT_AUTHORIZED = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl80211_send_port_authorized(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32* %2) #0 {
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sk_buff* @nlmsg_new(i32 %9, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %62

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = load i32, i32* @NL80211_CMD_PORT_AUTHORIZED, align 4
  %18 = call i8* @nl80211hdr_put(%struct.sk_buff* %16, i32 0, i32 0, i32 0, i32 %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call i32 @nlmsg_free(%struct.sk_buff* %22)
  br label %62

24:                                               ; preds = %15
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %27 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %28 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @nla_put_u32(%struct.sk_buff* %25, i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %24
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @nla_put_u32(%struct.sk_buff* %33, i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %43 = load i32, i32* @ETH_ALEN, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i64 @nla_put(%struct.sk_buff* %41, i32 %42, i32 %43, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %32, %24
  br label %59

48:                                               ; preds = %40
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @genlmsg_end(%struct.sk_buff* %49, i8* %50)
  %52 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %53 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %52, i32 0, i32 0
  %54 = call i32 @wiphy_net(i32* %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %54, %struct.sk_buff* %55, i32 0, i32 %56, i32 %57)
  br label %62

59:                                               ; preds = %47
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = call i32 @nlmsg_free(%struct.sk_buff* %60)
  br label %62

62:                                               ; preds = %59, %48, %21, %14
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
