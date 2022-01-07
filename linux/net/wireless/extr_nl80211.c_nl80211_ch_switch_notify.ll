; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_ch_switch_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_ch_switch_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_CMD_CH_SWITCH_STARTED_NOTIFY = common dso_local global i32 0, align 4
@NL80211_ATTR_CH_SWITCH_COUNT = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg80211_registered_device*, %struct.net_device*, %struct.cfg80211_chan_def*, i32, i32, i32)* @nl80211_ch_switch_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_ch_switch_notify(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, %struct.cfg80211_chan_def* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.cfg80211_chan_def*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i8*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call %struct.sk_buff* @nlmsg_new(i32 %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %13, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  br label %70

21:                                               ; preds = %6
  %22 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i8* @nl80211hdr_put(%struct.sk_buff* %22, i32 0, i32 0, i32 0, i32 %23)
  store i8* %24, i8** %14, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %29 = call i32 @nlmsg_free(%struct.sk_buff* %28)
  br label %70

30:                                               ; preds = %21
  %31 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %32 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @nla_put_u32(%struct.sk_buff* %31, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %67

39:                                               ; preds = %30
  %40 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %41 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %9, align 8
  %42 = call i64 @nl80211_send_chandef(%struct.sk_buff* %40, %struct.cfg80211_chan_def* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %67

45:                                               ; preds = %39
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @NL80211_CMD_CH_SWITCH_STARTED_NOTIFY, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %51 = load i32, i32* @NL80211_ATTR_CH_SWITCH_COUNT, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i64 @nla_put_u32(%struct.sk_buff* %50, i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %67

56:                                               ; preds = %49, %45
  %57 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = call i32 @genlmsg_end(%struct.sk_buff* %57, i8* %58)
  %60 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %61 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %60, i32 0, i32 0
  %62 = call i32 @wiphy_net(i32* %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %64 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %62, %struct.sk_buff* %63, i32 0, i32 %64, i32 %65)
  br label %70

67:                                               ; preds = %55, %44, %38
  %68 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %69 = call i32 @nlmsg_free(%struct.sk_buff* %68)
  br label %70

70:                                               ; preds = %67, %56, %27, %20
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

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
