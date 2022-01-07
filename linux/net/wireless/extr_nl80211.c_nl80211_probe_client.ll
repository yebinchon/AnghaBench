; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_probe_client.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_probe_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, i32, i32, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_2__*, %struct.wireless_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.wireless_dev = type { i64 }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__*, %struct.wireless_dev* }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_GO = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_CMD_PROBE_CLIENT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NL80211_ATTR_COOKIE = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_probe_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_probe_client(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 3
  %16 = load %struct.net_device**, %struct.net_device*** %15, align 8
  %17 = getelementptr inbounds %struct.net_device*, %struct.net_device** %16, i64 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  %19 = bitcast %struct.net_device* %18 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %19, %struct.cfg80211_registered_device** %6, align 8
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 3
  %22 = load %struct.net_device**, %struct.net_device*** %21, align 8
  %23 = getelementptr inbounds %struct.net_device*, %struct.net_device** %22, i64 1
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %7, align 8
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %26, align 8
  store %struct.wireless_dev* %27, %struct.wireless_dev** %8, align 8
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %29 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %2
  %34 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %35 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %125

42:                                               ; preds = %33, %2
  %43 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %44 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %125

53:                                               ; preds = %42
  %54 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %55 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %125

63:                                               ; preds = %53
  %64 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.sk_buff* @nlmsg_new(i32 %64, i32 %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %9, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %125

72:                                               ; preds = %63
  %73 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %74 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %75 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %78 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @NL80211_CMD_PROBE_CLIENT, align 4
  %81 = call i8* @nl80211hdr_put(%struct.sk_buff* %73, i32 %76, i32 %79, i32 0, i32 %80)
  store i8* %81, i8** %10, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %72
  %85 = load i32, i32* @ENOBUFS, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %13, align 4
  br label %121

87:                                               ; preds = %72
  %88 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %89 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32* @nla_data(i32 %93)
  store i32* %94, i32** %11, align 8
  %95 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %96 = bitcast %struct.cfg80211_registered_device* %95 to %struct.net_device*
  %97 = load %struct.net_device*, %struct.net_device** %7, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = call i32 @rdev_probe_client(%struct.net_device* %96, %struct.net_device* %97, i32* %98, i32* %12)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %87
  br label %121

103:                                              ; preds = %87
  %104 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %105 = load i32, i32* @NL80211_ATTR_COOKIE, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %108 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %104, i32 %105, i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %118

111:                                              ; preds = %103
  %112 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = call i32 @genlmsg_end(%struct.sk_buff* %112, i8* %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %116 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %117 = call i32 @genlmsg_reply(%struct.sk_buff* %115, %struct.genl_info* %116)
  store i32 %117, i32* %3, align 4
  br label %125

118:                                              ; preds = %110
  %119 = load i32, i32* @ENOBUFS, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %118, %102, %84
  %122 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %123 = call i32 @nlmsg_free(%struct.sk_buff* %122)
  %124 = load i32, i32* %13, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %121, %111, %69, %60, %50, %39
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32* @nla_data(i32) #1

declare dso_local i32 @rdev_probe_client(%struct.net_device*, %struct.net_device*, i32*, i32*) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
