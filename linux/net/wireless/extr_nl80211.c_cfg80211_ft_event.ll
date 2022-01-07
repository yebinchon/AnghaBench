; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_ft_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_ft_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.cfg80211_ft_event_params = type { i64, i64, i64, i64, i64 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.sk_buff = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NL80211_CMD_FT_EVENT = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@NL80211_ATTR_IE = common dso_local global i32 0, align 4
@NL80211_ATTR_IE_RIC = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_ft_event(%struct.net_device* %0, %struct.cfg80211_ft_event_params* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cfg80211_ft_event_params*, align 8
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.cfg80211_ft_event_params* %1, %struct.cfg80211_ft_event_params** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  store %struct.wiphy* %13, %struct.wiphy** %5, align 8
  %14 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %15 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %14)
  store %struct.cfg80211_registered_device* %15, %struct.cfg80211_registered_device** %6, align 8
  %16 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %19 = call i32 @trace_cfg80211_ft_event(%struct.wiphy* %16, %struct.net_device* %17, %struct.cfg80211_ft_event_params* %18)
  %20 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %21 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %120

25:                                               ; preds = %2
  %26 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %27 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 100, %28
  %30 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %31 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.sk_buff* @nlmsg_new(i64 %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %7, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  br label %120

39:                                               ; preds = %25
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = load i32, i32* @NL80211_CMD_FT_EVENT, align 4
  %42 = call i8* @nl80211hdr_put(%struct.sk_buff* %40, i32 0, i32 0, i32 0, i32 %41)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %117

46:                                               ; preds = %39
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %49 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %50 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @nla_put_u32(%struct.sk_buff* %47, i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %71, label %54

54:                                               ; preds = %46
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @nla_put_u32(%struct.sk_buff* %55, i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %54
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %65 = load i64, i64* @ETH_ALEN, align 8
  %66 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %67 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @nla_put(%struct.sk_buff* %63, i32 %64, i64 %65, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62, %54, %46
  br label %117

72:                                               ; preds = %62
  %73 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %74 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = load i32, i32* @NL80211_ATTR_IE, align 4
  %80 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %81 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %84 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @nla_put(%struct.sk_buff* %78, i32 %79, i64 %82, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %117

89:                                               ; preds = %77, %72
  %90 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %91 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %96 = load i32, i32* @NL80211_ATTR_IE_RIC, align 4
  %97 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %98 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %101 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @nla_put(%struct.sk_buff* %95, i32 %96, i64 %99, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %117

106:                                              ; preds = %94, %89
  %107 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @genlmsg_end(%struct.sk_buff* %107, i8* %108)
  %110 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %111 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %110, i32 0, i32 0
  %112 = call i32 @wiphy_net(i32* %111)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %114 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %112, %struct.sk_buff* %113, i32 0, i32 %114, i32 %115)
  br label %120

117:                                              ; preds = %105, %88, %71, %45
  %118 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %119 = call i32 @nlmsg_free(%struct.sk_buff* %118)
  br label %120

120:                                              ; preds = %117, %106, %38, %24
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_ft_event(%struct.wiphy*, %struct.net_device*, %struct.cfg80211_ft_event_params*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i64, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i64) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
