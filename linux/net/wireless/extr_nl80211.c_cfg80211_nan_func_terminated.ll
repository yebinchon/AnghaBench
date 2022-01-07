; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_nan_func_terminated.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_nan_func_terminated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32, %struct.TYPE_2__*, %struct.wiphy* }
%struct.TYPE_2__ = type { i32 }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_DEL_NAN_FUNCTION = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@NL80211_ATTR_COOKIE = common dso_local global i32 0, align 4
@NL80211_ATTR_NAN_FUNC = common dso_local global i32 0, align 4
@NL80211_NAN_FUNC_INSTANCE_ID = common dso_local global i32 0, align 4
@NL80211_NAN_FUNC_TERM_REASON = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_NAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_nan_func_terminated(%struct.wireless_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wiphy*, align 8
  %12 = alloca %struct.cfg80211_registered_device*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca i8*, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %17 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %16, i32 0, i32 2
  %18 = load %struct.wiphy*, %struct.wiphy** %17, align 8
  store %struct.wiphy* %18, %struct.wiphy** %11, align 8
  %19 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %20 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %19)
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %136

28:                                               ; preds = %5
  %29 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call %struct.sk_buff* @nlmsg_new(i32 %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %13, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %136

35:                                               ; preds = %28
  %36 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %37 = load i32, i32* @NL80211_CMD_DEL_NAN_FUNCTION, align 4
  %38 = call i8* @nl80211hdr_put(%struct.sk_buff* %36, i32 0, i32 0, i32 0, i32 %37)
  store i8* %38, i8** %15, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %43 = call i32 @nlmsg_free(%struct.sk_buff* %42)
  br label %136

44:                                               ; preds = %35
  %45 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %46 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %47 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %48 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @nla_put_u32(%struct.sk_buff* %45, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %75, label %52

52:                                               ; preds = %44
  %53 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %54 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = icmp ne %struct.TYPE_2__* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %59 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %60 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %61 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @nla_put_u32(%struct.sk_buff* %58, i32 %59, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %57, %52
  %68 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %69 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %70 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %71 = call i32 @wdev_id(%struct.wireless_dev* %70)
  %72 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %73 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %68, i32 %69, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67, %57, %44
  br label %133

76:                                               ; preds = %67
  %77 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %78 = load i32, i32* @NL80211_ATTR_COOKIE, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %81 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %77, i32 %78, i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %133

84:                                               ; preds = %76
  %85 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %86 = load i32, i32* @NL80211_ATTR_NAN_FUNC, align 4
  %87 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %85, i32 %86)
  store %struct.nlattr* %87, %struct.nlattr** %14, align 8
  %88 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %89 = icmp ne %struct.nlattr* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  br label %133

91:                                               ; preds = %84
  %92 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %93 = load i32, i32* @NL80211_NAN_FUNC_INSTANCE_ID, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i64 @nla_put_u8(%struct.sk_buff* %92, i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %99 = load i32, i32* @NL80211_NAN_FUNC_TERM_REASON, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i64 @nla_put_u8(%struct.sk_buff* %98, i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97, %91
  br label %133

104:                                              ; preds = %97
  %105 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %106 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %107 = call i32 @nla_nest_end(%struct.sk_buff* %105, %struct.nlattr* %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = call i32 @genlmsg_end(%struct.sk_buff* %108, i8* %109)
  %111 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %112 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %104
  %116 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %117 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %116, i32 0, i32 0
  %118 = call i32 @wiphy_net(i32* %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %120 = load i32, i32* @NL80211_MCGRP_NAN, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %118, %struct.sk_buff* %119, i32 0, i32 %120, i32 %121)
  br label %132

123:                                              ; preds = %104
  %124 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %125 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %124, i32 0, i32 0
  %126 = call i32 @wiphy_net(i32* %125)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %128 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %129 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @genlmsg_unicast(i32 %126, %struct.sk_buff* %127, i32 %130)
  br label %132

132:                                              ; preds = %123, %115
  br label %136

133:                                              ; preds = %103, %90, %83, %75
  %134 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %135 = call i32 @nlmsg_free(%struct.sk_buff* %134)
  br label %136

136:                                              ; preds = %133, %132, %41, %34, %27
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

declare dso_local i32 @genlmsg_unicast(i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
