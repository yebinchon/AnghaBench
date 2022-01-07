; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, i32 }
%struct.wireless_dev = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NL80211_CMD_FRAME = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_FREQ = common dso_local global i32 0, align 4
@NL80211_ATTR_RX_SIGNAL_DBM = common dso_local global i32 0, align 4
@NL80211_ATTR_FRAME = common dso_local global i32 0, align 4
@NL80211_ATTR_RXMGMT_FLAGS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl80211_send_mgmt(%struct.cfg80211_registered_device* %0, %struct.wireless_dev* %1, i32 %2, i32 %3, i32 %4, i32* %5, i64 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.wireless_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.net_device*, align 8
  %21 = alloca %struct.sk_buff*, align 8
  %22 = alloca i8*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %11, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i64 %6, i64* %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %20, align 8
  %26 = load i64, i64* %17, align 8
  %27 = add i64 100, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* %19, align 4
  %30 = call %struct.sk_buff* @nlmsg_new(i32 %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %21, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %9
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  br label %121

36:                                               ; preds = %9
  %37 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %38 = load i32, i32* @NL80211_CMD_FRAME, align 4
  %39 = call i8* @nl80211hdr_put(%struct.sk_buff* %37, i32 0, i32 0, i32 0, i32 %38)
  store i8* %39, i8** %22, align 8
  %40 = load i8*, i8** %22, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %44 = call i32 @nlmsg_free(%struct.sk_buff* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  br label %121

47:                                               ; preds = %36
  %48 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %49 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %50 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %51 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @nla_put_u32(%struct.sk_buff* %48, i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %105, label %55

55:                                               ; preds = %47
  %56 = load %struct.net_device*, %struct.net_device** %20, align 8
  %57 = icmp ne %struct.net_device* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %60 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %61 = load %struct.net_device*, %struct.net_device** %20, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @nla_put_u32(%struct.sk_buff* %59, i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %105, label %66

66:                                               ; preds = %58, %55
  %67 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %68 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %69 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %70 = call i32 @wdev_id(%struct.wireless_dev* %69)
  %71 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %72 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %67, i32 %68, i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %105, label %74

74:                                               ; preds = %66
  %75 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %76 = load i32, i32* @NL80211_ATTR_WIPHY_FREQ, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i64 @nla_put_u32(%struct.sk_buff* %75, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %105, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %85 = load i32, i32* @NL80211_ATTR_RX_SIGNAL_DBM, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i64 @nla_put_u32(%struct.sk_buff* %84, i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %105, label %89

89:                                               ; preds = %83, %80
  %90 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %91 = load i32, i32* @NL80211_ATTR_FRAME, align 4
  %92 = load i64, i64* %17, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = call i64 @nla_put(%struct.sk_buff* %90, i32 %91, i64 %92, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %18, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %101 = load i32, i32* @NL80211_ATTR_RXMGMT_FLAGS, align 4
  %102 = load i32, i32* %18, align 4
  %103 = call i64 @nla_put_u32(%struct.sk_buff* %100, i32 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99, %89, %83, %74, %66, %58, %47
  br label %116

106:                                              ; preds = %99, %96
  %107 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %108 = load i8*, i8** %22, align 8
  %109 = call i32 @genlmsg_end(%struct.sk_buff* %107, i8* %108)
  %110 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %111 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %110, i32 0, i32 1
  %112 = call i32 @wiphy_net(i32* %111)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @genlmsg_unicast(i32 %112, %struct.sk_buff* %113, i32 %114)
  store i32 %115, i32* %10, align 4
  br label %121

116:                                              ; preds = %105
  %117 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %118 = call i32 @nlmsg_free(%struct.sk_buff* %117)
  %119 = load i32, i32* @ENOBUFS, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %116, %106, %42, %33
  %122 = load i32, i32* %10, align 4
  ret i32 %122
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
