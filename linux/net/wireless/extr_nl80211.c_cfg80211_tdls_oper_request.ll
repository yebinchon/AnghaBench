; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_tdls_oper_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_tdls_oper_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.wireless_dev* }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_TDLS_OPER = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_TDLS_OPERATION = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_REASON_CODE = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_tdls_oper_request(%struct.net_device* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wireless_dev*, align 8
  %12 = alloca %struct.cfg80211_registered_device*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  store %struct.wireless_dev* %17, %struct.wireless_dev** %11, align 8
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %20)
  store %struct.cfg80211_registered_device* %21, %struct.cfg80211_registered_device** %12, align 8
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @trace_cfg80211_tdls_oper_request(i32 %24, %struct.net_device* %25, i32* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.sk_buff* @nlmsg_new(i32 %30, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %13, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %5
  br label %98

36:                                               ; preds = %5
  %37 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %38 = load i32, i32* @NL80211_CMD_TDLS_OPER, align 4
  %39 = call i8* @nl80211hdr_put(%struct.sk_buff* %37, i32 0, i32 0, i32 0, i32 %38)
  store i8* %39, i8** %14, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %44 = call i32 @nlmsg_free(%struct.sk_buff* %43)
  br label %98

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %47 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %49 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @nla_put_u32(%struct.sk_buff* %46, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %83, label %53

53:                                               ; preds = %45
  %54 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %55 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @nla_put_u32(%struct.sk_buff* %54, i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %83, label %61

61:                                               ; preds = %53
  %62 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %63 = load i32, i32* @NL80211_ATTR_TDLS_OPERATION, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @nla_put_u8(%struct.sk_buff* %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %61
  %68 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %69 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %70 = load i32, i32* @ETH_ALEN, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = call i64 @nla_put(%struct.sk_buff* %68, i32 %69, i32 %70, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %79 = load i32, i32* @NL80211_ATTR_REASON_CODE, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @nla_put_u16(%struct.sk_buff* %78, i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77, %67, %61, %53, %45
  br label %95

84:                                               ; preds = %77, %74
  %85 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = call i32 @genlmsg_end(%struct.sk_buff* %85, i8* %86)
  %88 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %89 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %88, i32 0, i32 0
  %90 = call i32 @wiphy_net(i32* %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %92 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %90, %struct.sk_buff* %91, i32 0, i32 %92, i32 %93)
  br label %98

95:                                               ; preds = %83
  %96 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %97 = call i32 @nlmsg_free(%struct.sk_buff* %96)
  br label %98

98:                                               ; preds = %95, %84, %42, %35
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @trace_cfg80211_tdls_oper_request(i32, %struct.net_device*, i32*, i32, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
