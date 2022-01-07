; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_mlme_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_mlme_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_TIMED_OUT = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32*, i32)* @nl80211_send_mlme_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_send_mlme_timeout(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i8*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call %struct.sk_buff* @nlmsg_new(i32 %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %11, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %71

19:                                               ; preds = %5
  %20 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i8* @nl80211hdr_put(%struct.sk_buff* %20, i32 0, i32 0, i32 0, i32 %21)
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %27 = call i32 @nlmsg_free(%struct.sk_buff* %26)
  br label %71

28:                                               ; preds = %19
  %29 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %30 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %31 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %32 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @nla_put_u32(%struct.sk_buff* %29, i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %28
  %37 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %38 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @nla_put_u32(%struct.sk_buff* %37, i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %36
  %45 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %46 = load i32, i32* @NL80211_ATTR_TIMED_OUT, align 4
  %47 = call i64 @nla_put_flag(%struct.sk_buff* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %51 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = call i64 @nla_put(%struct.sk_buff* %50, i32 %51, i32 %52, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %44, %36, %28
  br label %68

57:                                               ; preds = %49
  %58 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = call i32 @genlmsg_end(%struct.sk_buff* %58, i8* %59)
  %61 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %62 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %61, i32 0, i32 0
  %63 = call i32 @wiphy_net(i32* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %65 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %63, %struct.sk_buff* %64, i32 0, i32 %65, i32 %66)
  br label %71

68:                                               ; preds = %56
  %69 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %70 = call i32 @nlmsg_free(%struct.sk_buff* %69)
  br label %71

71:                                               ; preds = %68, %57, %25, %18
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

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
