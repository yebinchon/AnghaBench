; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_validate_pae_over_nl80211.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_validate_pae_over_nl80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.genl_info = type { i32* }

@NL80211_ATTR_SOCKET_OWNER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"SOCKET_OWNER not set\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_CONTROL_PORT_OVER_NL80211 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.genl_info*)* @validate_pae_over_nl80211 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_pae_over_nl80211(%struct.cfg80211_registered_device* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.genl_info*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %6 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %7 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @NL80211_ATTR_SOCKET_OWNER, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = call i32 @GENL_SET_ERR_MSG(%struct.genl_info* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %35

18:                                               ; preds = %2
  %19 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %20 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %27 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %26, i32 0, i32 0
  %28 = load i32, i32* @NL80211_EXT_FEATURE_CONTROL_PORT_OVER_NL80211, align 4
  %29 = call i32 @wiphy_ext_feature_isset(i32* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25, %18
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %31, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @GENL_SET_ERR_MSG(%struct.genl_info*, i8*) #1

declare dso_local i32 @wiphy_ext_feature_isset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
