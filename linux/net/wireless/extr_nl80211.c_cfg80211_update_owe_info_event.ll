; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_update_owe_info_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_update_owe_info_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.cfg80211_update_owe_info = type { i32, i32, i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_UPDATE_OWE_INFO = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_IE = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_update_owe_info_event(%struct.net_device* %0, %struct.cfg80211_update_owe_info* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.cfg80211_update_owe_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.cfg80211_registered_device*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.cfg80211_update_owe_info* %1, %struct.cfg80211_update_owe_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.wiphy*, %struct.wiphy** %14, align 8
  store %struct.wiphy* %15, %struct.wiphy** %7, align 8
  %16 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %17 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %16)
  store %struct.cfg80211_registered_device* %17, %struct.cfg80211_registered_device** %8, align 8
  %18 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = load %struct.cfg80211_update_owe_info*, %struct.cfg80211_update_owe_info** %5, align 8
  %21 = call i32 @trace_cfg80211_update_owe_info_event(%struct.wiphy* %18, %struct.net_device* %19, %struct.cfg80211_update_owe_info* %20)
  %22 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.sk_buff* @nlmsg_new(i32 %22, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %9, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %95

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = load i32, i32* @NL80211_CMD_UPDATE_OWE_INFO, align 4
  %31 = call i8* @nl80211hdr_put(%struct.sk_buff* %29, i32 0, i32 0, i32 0, i32 %30)
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %89

35:                                               ; preds = %28
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %37 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %38 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %39 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @nla_put_u32(%struct.sk_buff* %36, i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @nla_put_u32(%struct.sk_buff* %44, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %43
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = load %struct.cfg80211_update_owe_info*, %struct.cfg80211_update_owe_info** %5, align 8
  %56 = getelementptr inbounds %struct.cfg80211_update_owe_info, %struct.cfg80211_update_owe_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @nla_put(%struct.sk_buff* %52, i32 %53, i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51, %43, %35
  br label %89

61:                                               ; preds = %51
  %62 = load %struct.cfg80211_update_owe_info*, %struct.cfg80211_update_owe_info** %5, align 8
  %63 = getelementptr inbounds %struct.cfg80211_update_owe_info, %struct.cfg80211_update_owe_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = load i32, i32* @NL80211_ATTR_IE, align 4
  %69 = load %struct.cfg80211_update_owe_info*, %struct.cfg80211_update_owe_info** %5, align 8
  %70 = getelementptr inbounds %struct.cfg80211_update_owe_info, %struct.cfg80211_update_owe_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cfg80211_update_owe_info*, %struct.cfg80211_update_owe_info** %5, align 8
  %73 = getelementptr inbounds %struct.cfg80211_update_owe_info, %struct.cfg80211_update_owe_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @nla_put(%struct.sk_buff* %67, i32 %68, i32 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66, %61
  br label %89

78:                                               ; preds = %66
  %79 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @genlmsg_end(%struct.sk_buff* %79, i8* %80)
  %82 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %83 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %82, i32 0, i32 0
  %84 = call i32 @wiphy_net(i32* %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %84, %struct.sk_buff* %85, i32 0, i32 %86, i32 %87)
  br label %95

89:                                               ; preds = %77, %60, %34
  %90 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @genlmsg_cancel(%struct.sk_buff* %90, i8* %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %94 = call i32 @nlmsg_free(%struct.sk_buff* %93)
  br label %95

95:                                               ; preds = %89, %78, %27
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_update_owe_info_event(%struct.wiphy*, %struct.net_device*, %struct.cfg80211_update_owe_info*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
