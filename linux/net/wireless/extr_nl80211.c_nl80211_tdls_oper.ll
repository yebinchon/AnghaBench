; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_tdls_oper.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_tdls_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }

@WIPHY_FLAG_SUPPORTS_TDLS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_TDLS_OPERATION = common dso_local global i64 0, align 8
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_tdls_oper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_tdls_oper(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 1
  %12 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %13 = getelementptr inbounds %struct.net_device*, %struct.net_device** %12, i64 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  %15 = bitcast %struct.net_device* %14 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %15, %struct.cfg80211_registered_device** %6, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 1
  %18 = load %struct.net_device**, %struct.net_device*** %17, align 8
  %19 = getelementptr inbounds %struct.net_device*, %struct.net_device** %18, i64 1
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %7, align 8
  %21 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %22 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @WIPHY_FLAG_SUPPORTS_TDLS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %30 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28, %2
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %78

38:                                               ; preds = %28
  %39 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %40 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @NL80211_ATTR_TDLS_OPERATION, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %46, %38
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %78

57:                                               ; preds = %46
  %58 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %59 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @NL80211_ATTR_TDLS_OPERATION, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @nla_get_u8(i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %66 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32* @nla_data(i32 %70)
  store i32* %71, i32** %9, align 8
  %72 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %73 = bitcast %struct.cfg80211_registered_device* %72 to %struct.net_device*
  %74 = load %struct.net_device*, %struct.net_device** %7, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @rdev_tdls_oper(%struct.net_device* %73, %struct.net_device* %74, i32* %75, i32 %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %57, %54, %35
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @nla_get_u8(i32) #1

declare dso_local i32* @nla_data(i32) #1

declare dso_local i32 @rdev_tdls_oper(%struct.net_device*, %struct.net_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
