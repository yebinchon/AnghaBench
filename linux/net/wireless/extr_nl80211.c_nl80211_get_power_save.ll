; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_get_power_save.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_get_power_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_2__*, %struct.wireless_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.wireless_dev = type { i64 }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__*, %struct.wireless_dev* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_CMD_GET_POWER_SAVE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NL80211_PS_ENABLED = common dso_local global i32 0, align 4
@NL80211_PS_DISABLED = common dso_local global i32 0, align 4
@NL80211_ATTR_PS_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_get_power_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_get_power_save(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 2
  %15 = load %struct.net_device**, %struct.net_device*** %14, align 8
  %16 = getelementptr inbounds %struct.net_device*, %struct.net_device** %15, i64 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  %18 = bitcast %struct.net_device* %17 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %18, %struct.cfg80211_registered_device** %6, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 2
  %21 = load %struct.net_device**, %struct.net_device*** %20, align 8
  %22 = getelementptr inbounds %struct.net_device*, %struct.net_device** %21, i64 1
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %9, align 8
  %24 = load %struct.net_device*, %struct.net_device** %9, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %25, align 8
  store %struct.wireless_dev* %26, %struct.wireless_dev** %8, align 8
  %27 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %28 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %90

36:                                               ; preds = %2
  %37 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.sk_buff* @nlmsg_new(i32 %37, i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %10, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %90

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %51 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @NL80211_CMD_GET_POWER_SAVE, align 4
  %54 = call i8* @nl80211hdr_put(%struct.sk_buff* %46, i32 %49, i32 %52, i32 0, i32 %53)
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %45
  %58 = load i32, i32* @ENOBUFS, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %86

60:                                               ; preds = %45
  %61 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %62 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @NL80211_PS_ENABLED, align 4
  store i32 %66, i32* %7, align 4
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @NL80211_PS_DISABLED, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %71 = load i32, i32* @NL80211_ATTR_PS_STATE, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i64 @nla_put_u32(%struct.sk_buff* %70, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %83

76:                                               ; preds = %69
  %77 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @genlmsg_end(%struct.sk_buff* %77, i8* %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %81 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %82 = call i32 @genlmsg_reply(%struct.sk_buff* %80, %struct.genl_info* %81)
  store i32 %82, i32* %3, align 4
  br label %90

83:                                               ; preds = %75
  %84 = load i32, i32* @ENOBUFS, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %83, %57
  %87 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %88 = call i32 @nlmsg_free(%struct.sk_buff* %87)
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %76, %42, %33
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
