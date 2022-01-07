; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_external_auth_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_external_auth_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32 }
%struct.cfg80211_external_auth_params = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.sk_buff = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_CMD_EXTERNAL_AUTH = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_AKM_SUITES = common dso_local global i32 0, align 4
@NL80211_ATTR_EXTERNAL_AUTH_ACTION = common dso_local global i32 0, align 4
@NL80211_ATTR_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_SSID = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_external_auth_request(%struct.net_device* %0, %struct.cfg80211_external_auth_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cfg80211_external_auth_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.cfg80211_registered_device*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.cfg80211_external_auth_params* %1, %struct.cfg80211_external_auth_params** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  store %struct.wireless_dev* %14, %struct.wireless_dev** %8, align 8
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %17)
  store %struct.cfg80211_registered_device* %18, %struct.cfg80211_registered_device** %9, align 8
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %20 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %114

26:                                               ; preds = %3
  %27 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.sk_buff* @nlmsg_new(i32 %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %10, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %114

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = load i32, i32* @NL80211_CMD_EXTERNAL_AUTH, align 4
  %38 = call i8* @nl80211hdr_put(%struct.sk_buff* %36, i32 0, i32 0, i32 0, i32 %37)
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %109

42:                                               ; preds = %35
  %43 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %44 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %45 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %46 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @nla_put_u32(%struct.sk_buff* %43, i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %96, label %50

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %52 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @nla_put_u32(%struct.sk_buff* %51, i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %96, label %58

58:                                               ; preds = %50
  %59 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %60 = load i32, i32* @NL80211_ATTR_AKM_SUITES, align 4
  %61 = load %struct.cfg80211_external_auth_params*, %struct.cfg80211_external_auth_params** %6, align 8
  %62 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @nla_put_u32(%struct.sk_buff* %59, i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %96, label %66

66:                                               ; preds = %58
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = load i32, i32* @NL80211_ATTR_EXTERNAL_AUTH_ACTION, align 4
  %69 = load %struct.cfg80211_external_auth_params*, %struct.cfg80211_external_auth_params** %6, align 8
  %70 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @nla_put_u32(%struct.sk_buff* %67, i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %96, label %74

74:                                               ; preds = %66
  %75 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %76 = load i32, i32* @NL80211_ATTR_BSSID, align 4
  %77 = load i32, i32* @ETH_ALEN, align 4
  %78 = load %struct.cfg80211_external_auth_params*, %struct.cfg80211_external_auth_params** %6, align 8
  %79 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @nla_put(%struct.sk_buff* %75, i32 %76, i32 %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %74
  %84 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %85 = load i32, i32* @NL80211_ATTR_SSID, align 4
  %86 = load %struct.cfg80211_external_auth_params*, %struct.cfg80211_external_auth_params** %6, align 8
  %87 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.cfg80211_external_auth_params*, %struct.cfg80211_external_auth_params** %6, align 8
  %91 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @nla_put(%struct.sk_buff* %84, i32 %85, i32 %89, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %83, %74, %66, %58, %50, %42
  br label %109

97:                                               ; preds = %83
  %98 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @genlmsg_end(%struct.sk_buff* %98, i8* %99)
  %101 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %102 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %101, i32 0, i32 0
  %103 = call i32 @wiphy_net(i32* %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %105 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %106 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @genlmsg_unicast(i32 %103, %struct.sk_buff* %104, i32 %107)
  store i32 0, i32* %4, align 4
  br label %114

109:                                              ; preds = %96, %41
  %110 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %111 = call i32 @nlmsg_free(%struct.sk_buff* %110)
  %112 = load i32, i32* @ENOBUFS, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %109, %97, %32, %23
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
