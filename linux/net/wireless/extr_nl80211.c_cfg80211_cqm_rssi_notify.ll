; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_cqm_rssi_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_cqm_rssi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW = common dso_local global i32 0, align 4
@NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH = common dso_local global i32 0, align 4
@NL80211_ATTR_CQM_RSSI_THRESHOLD_EVENT = common dso_local global i32 0, align 4
@NL80211_ATTR_CQM_RSSI_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_cqm_rssi_notify(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  store %struct.wireless_dev* %14, %struct.wireless_dev** %10, align 8
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %17)
  store %struct.cfg80211_registered_device* %18, %struct.cfg80211_registered_device** %11, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @trace_cfg80211_cqm_rssi_notify(%struct.net_device* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH, align 4
  %29 = icmp ne i32 %27, %28
  br label %30

30:                                               ; preds = %26, %4
  %31 = phi i1 [ false, %4 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %90

36:                                               ; preds = %30
  %37 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %38 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %44 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = call i32 @cfg80211_cqm_rssi_update(%struct.cfg80211_registered_device* %47, %struct.net_device* %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %54 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %52, %41
  br label %59

59:                                               ; preds = %58, %36
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call %struct.sk_buff* @cfg80211_prepare_cqm(%struct.net_device* %60, i32* null, i32 %61)
  store %struct.sk_buff* %62, %struct.sk_buff** %9, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = icmp ne %struct.sk_buff* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %90

66:                                               ; preds = %59
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = load i32, i32* @NL80211_ATTR_CQM_RSSI_THRESHOLD_EVENT, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i64 @nla_put_u32(%struct.sk_buff* %67, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %87

73:                                               ; preds = %66
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = load i32, i32* @NL80211_ATTR_CQM_RSSI_LEVEL, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @nla_put_s32(%struct.sk_buff* %77, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %87

83:                                               ; preds = %76, %73
  %84 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @cfg80211_send_cqm(%struct.sk_buff* %84, i32 %85)
  br label %90

87:                                               ; preds = %82, %72
  %88 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %89 = call i32 @nlmsg_free(%struct.sk_buff* %88)
  br label %90

90:                                               ; preds = %87, %83, %65, %35
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @trace_cfg80211_cqm_rssi_notify(%struct.net_device*, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_cqm_rssi_update(%struct.cfg80211_registered_device*, %struct.net_device*) #1

declare dso_local %struct.sk_buff* @cfg80211_prepare_cqm(%struct.net_device*, i32*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_s32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cfg80211_send_cqm(%struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
