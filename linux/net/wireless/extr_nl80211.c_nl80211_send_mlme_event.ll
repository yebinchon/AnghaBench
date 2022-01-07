; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_mlme_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_mlme_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_FRAME = common dso_local global i32 0, align 4
@NL80211_ATTR_REQ_IE = common dso_local global i32 0, align 4
@NL80211_ATTR_STA_WME = common dso_local global i32 0, align 4
@NL80211_STA_WME_UAPSD_QUEUES = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg80211_registered_device*, %struct.net_device*, i32*, i64, i32, i32, i32, i32*, i64)* @nl80211_send_mlme_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_send_mlme_event(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32* %2, i64 %3, i32 %4, i32 %5, i32 %6, i32* %7, i64 %8) #0 {
  %10 = alloca %struct.cfg80211_registered_device*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.nlattr*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %10, align 8
  store %struct.net_device* %1, %struct.net_device** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i64 %8, i64* %18, align 8
  %22 = load i64, i64* %13, align 8
  %23 = add i64 100, %22
  %24 = load i64, i64* %18, align 8
  %25 = add i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %15, align 4
  %28 = call %struct.sk_buff* @nlmsg_new(i32 %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %19, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %9
  br label %110

32:                                               ; preds = %9
  %33 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i8* @nl80211hdr_put(%struct.sk_buff* %33, i32 0, i32 0, i32 0, i32 %34)
  store i8* %35, i8** %20, align 8
  %36 = load i8*, i8** %20, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %40 = call i32 @nlmsg_free(%struct.sk_buff* %39)
  br label %110

41:                                               ; preds = %32
  %42 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %43 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %44 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %45 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @nla_put_u32(%struct.sk_buff* %42, i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %74, label %49

49:                                               ; preds = %41
  %50 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %51 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %52 = load %struct.net_device*, %struct.net_device** %11, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @nla_put_u32(%struct.sk_buff* %50, i32 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %49
  %58 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %59 = load i32, i32* @NL80211_ATTR_FRAME, align 4
  %60 = load i64, i64* %13, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i64 @nla_put(%struct.sk_buff* %58, i32 %59, i64 %60, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %57
  %65 = load i32*, i32** %17, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %69 = load i32, i32* @NL80211_ATTR_REQ_IE, align 4
  %70 = load i64, i64* %18, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = call i64 @nla_put(%struct.sk_buff* %68, i32 %69, i64 %70, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67, %57, %49, %41
  br label %107

75:                                               ; preds = %67, %64
  %76 = load i32, i32* %16, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %80 = load i32, i32* @NL80211_ATTR_STA_WME, align 4
  %81 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %79, i32 %80)
  store %struct.nlattr* %81, %struct.nlattr** %21, align 8
  %82 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %83 = icmp ne %struct.nlattr* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %107

85:                                               ; preds = %78
  %86 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %87 = load i32, i32* @NL80211_STA_WME_UAPSD_QUEUES, align 4
  %88 = load i32, i32* %16, align 4
  %89 = call i64 @nla_put_u8(%struct.sk_buff* %86, i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %107

92:                                               ; preds = %85
  %93 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %94 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %95 = call i32 @nla_nest_end(%struct.sk_buff* %93, %struct.nlattr* %94)
  br label %96

96:                                               ; preds = %92, %75
  %97 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %98 = load i8*, i8** %20, align 8
  %99 = call i32 @genlmsg_end(%struct.sk_buff* %97, i8* %98)
  %100 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %101 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %100, i32 0, i32 0
  %102 = call i32 @wiphy_net(i32* %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %104 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %102, %struct.sk_buff* %103, i32 0, i32 %104, i32 %105)
  br label %110

107:                                              ; preds = %91, %84, %74
  %108 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %109 = call i32 @nlmsg_free(%struct.sk_buff* %108)
  br label %110

110:                                              ; preds = %107, %96, %38, %31
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
