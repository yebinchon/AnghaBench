; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@WIPHY_FLAG_SUPPORTS_TDLS = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"TDLS mgmt action %d peer %pM status %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_tdls_mgmt(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.wiphy*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.ieee80211_sub_if_data*, align 8
  %23 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %12, align 8
  store %struct.net_device* %1, %struct.net_device** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32* %8, i32** %20, align 8
  store i64 %9, i64* %21, align 8
  %24 = load %struct.net_device*, %struct.net_device** %13, align 8
  %25 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %24)
  store %struct.ieee80211_sub_if_data* %25, %struct.ieee80211_sub_if_data** %22, align 8
  %26 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %27 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WIPHY_FLAG_SUPPORTS_TDLS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %10
  %33 = load i32, i32* @ENOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %106

35:                                               ; preds = %10
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42, %35
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %106

52:                                               ; preds = %42
  %53 = load i32, i32* %15, align 4
  switch i32 %53, label %96 [
    i32 130, label %54
    i32 129, label %54
    i32 128, label %66
    i32 132, label %78
    i32 131, label %84
    i32 133, label %84
  ]

54:                                               ; preds = %52, %52
  %55 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %56 = load %struct.net_device*, %struct.net_device** %13, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %19, align 4
  %63 = load i32*, i32** %20, align 8
  %64 = load i64, i64* %21, align 8
  %65 = call i32 @ieee80211_tdls_mgmt_setup(%struct.wiphy* %55, %struct.net_device* %56, i32* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32* %63, i64 %64)
  store i32 %65, i32* %23, align 4
  br label %99

66:                                               ; preds = %52
  %67 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %68 = load %struct.net_device*, %struct.net_device** %13, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %19, align 4
  %75 = load i32*, i32** %20, align 8
  %76 = load i64, i64* %21, align 8
  %77 = call i32 @ieee80211_tdls_mgmt_teardown(%struct.wiphy* %67, %struct.net_device* %68, i32* %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32* %75, i64 %76)
  store i32 %77, i32* %23, align 4
  br label %99

78:                                               ; preds = %52
  %79 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %80 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %83 = call i32 @drv_mgd_protect_tdls_discover(i32 %81, %struct.ieee80211_sub_if_data* %82)
  br label %84

84:                                               ; preds = %52, %52, %78
  %85 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %86 = load %struct.net_device*, %struct.net_device** %13, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32*, i32** %20, align 8
  %94 = load i64, i64* %21, align 8
  %95 = call i32 @ieee80211_tdls_prep_mgmt_packet(%struct.wiphy* %85, %struct.net_device* %86, i32* %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32* %93, i64 %94, i32 0, i32* null)
  store i32 %95, i32* %23, align 4
  br label %99

96:                                               ; preds = %52
  %97 = load i32, i32* @EOPNOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %23, align 4
  br label %99

99:                                               ; preds = %96, %84, %66, %54
  %100 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* %23, align 4
  %104 = call i32 @tdls_dbg(%struct.ieee80211_sub_if_data* %100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %101, i32* %102, i32 %103)
  %105 = load i32, i32* %23, align 4
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %99, %49, %32
  %107 = load i32, i32* %11, align 4
  ret i32 %107
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @ieee80211_tdls_mgmt_setup(%struct.wiphy*, %struct.net_device*, i32*, i32, i32, i32, i32, i32, i32*, i64) #1

declare dso_local i32 @ieee80211_tdls_mgmt_teardown(%struct.wiphy*, %struct.net_device*, i32*, i32, i32, i32, i32, i32, i32*, i64) #1

declare dso_local i32 @drv_mgd_protect_tdls_discover(i32, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_tdls_prep_mgmt_packet(%struct.wiphy*, %struct.net_device*, i32*, i32, i32, i32, i32, i32, i32*, i64, i32, i32*) #1

declare dso_local i32 @tdls_dbg(%struct.ieee80211_sub_if_data*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
