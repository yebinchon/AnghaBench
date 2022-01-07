; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_michael_mic_failure.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_michael_mic_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_MICHAEL_MIC_FAILURE = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_KEY_TYPE = common dso_local global i32 0, align 4
@NL80211_ATTR_KEY_IDX = common dso_local global i32 0, align 4
@NL80211_ATTR_KEY_SEQ = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl80211_michael_mic_failure(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32* %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.cfg80211_registered_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i8*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %18 = load i32, i32* %14, align 4
  %19 = call %struct.sk_buff* @nlmsg_new(i32 %17, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %15, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %7
  br label %97

23:                                               ; preds = %7
  %24 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %25 = load i32, i32* @NL80211_CMD_MICHAEL_MIC_FAILURE, align 4
  %26 = call i8* @nl80211hdr_put(%struct.sk_buff* %24, i32 0, i32 0, i32 0, i32 %25)
  store i8* %26, i8** %16, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %31 = call i32 @nlmsg_free(%struct.sk_buff* %30)
  br label %97

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %34 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %35 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %36 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @nla_put_u32(%struct.sk_buff* %33, i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %82, label %40

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %42 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %43 = load %struct.net_device*, %struct.net_device** %9, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @nla_put_u32(%struct.sk_buff* %41, i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %82, label %48

48:                                               ; preds = %40
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %53 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = call i64 @nla_put(%struct.sk_buff* %52, i32 %53, i32 %54, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %51, %48
  %59 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %60 = load i32, i32* @NL80211_ATTR_KEY_TYPE, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @nla_put_u32(%struct.sk_buff* %59, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %69 = load i32, i32* @NL80211_ATTR_KEY_IDX, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i64 @nla_put_u8(%struct.sk_buff* %68, i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %67, %64
  %74 = load i32*, i32** %13, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %78 = load i32, i32* @NL80211_ATTR_KEY_SEQ, align 4
  %79 = load i32*, i32** %13, align 8
  %80 = call i64 @nla_put(%struct.sk_buff* %77, i32 %78, i32 6, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76, %67, %58, %51, %40, %32
  br label %94

83:                                               ; preds = %76, %73
  %84 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %85 = load i8*, i8** %16, align 8
  %86 = call i32 @genlmsg_end(%struct.sk_buff* %84, i8* %85)
  %87 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %88 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %87, i32 0, i32 1
  %89 = call i32 @wiphy_net(i32* %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %91 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %89, %struct.sk_buff* %90, i32 0, i32 %91, i32 %92)
  br label %97

94:                                               ; preds = %82
  %95 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %96 = call i32 @nlmsg_free(%struct.sk_buff* %95)
  br label %97

97:                                               ; preds = %94, %83, %29, %22
  ret void
}

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
