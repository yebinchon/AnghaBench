; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64, i32*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.cfg80211_registered_device = type { %struct.TYPE_3__* }

@EPERM = common dso_local global i32 0, align 4
@NL80211_ATTR_REASON_CODE = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_disconnect(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 2
  %12 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %13 = getelementptr inbounds %struct.net_device*, %struct.net_device** %12, i64 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  %15 = bitcast %struct.net_device* %14 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %15, %struct.cfg80211_registered_device** %6, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 2
  %18 = load %struct.net_device**, %struct.net_device*** %17, align 8
  %19 = getelementptr inbounds %struct.net_device*, %struct.net_device** %18, i64 1
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %7, align 8
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @EPERM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %98

40:                                               ; preds = %27, %2
  %41 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %42 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @NL80211_ATTR_REASON_CODE, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = load i64, i64* @WLAN_REASON_DEAUTH_LEAVING, align 8
  store i64 %49, i64* %8, align 8
  br label %58

50:                                               ; preds = %40
  %51 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %52 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @NL80211_ATTR_REASON_CODE, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @nla_get_u16(i32 %56)
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %50, %48
  %59 = load i64, i64* %8, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %98

64:                                               ; preds = %58
  %65 = load %struct.net_device*, %struct.net_device** %7, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %64
  %73 = load %struct.net_device*, %struct.net_device** %7, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* @EOPNOTSUPP, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %98

83:                                               ; preds = %72, %64
  %84 = load %struct.net_device*, %struct.net_device** %7, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = call i32 @wdev_lock(%struct.TYPE_3__* %86)
  %88 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %89 = bitcast %struct.cfg80211_registered_device* %88 to %struct.net_device*
  %90 = load %struct.net_device*, %struct.net_device** %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @cfg80211_disconnect(%struct.net_device* %89, %struct.net_device* %90, i64 %91, i32 1)
  store i32 %92, i32* %9, align 4
  %93 = load %struct.net_device*, %struct.net_device** %7, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = call i32 @wdev_unlock(%struct.TYPE_3__* %95)
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %83, %80, %61, %37
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @nla_get_u16(i32) #1

declare dso_local i32 @wdev_lock(%struct.TYPE_3__*) #1

declare dso_local i32 @cfg80211_disconnect(%struct.net_device*, %struct.net_device*, i64, i32) #1

declare dso_local i32 @wdev_unlock(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
