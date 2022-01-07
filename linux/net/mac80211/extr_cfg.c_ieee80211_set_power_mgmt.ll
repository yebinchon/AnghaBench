; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_set_power_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_set_power_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_local = type { i32, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SUPPORTS_PS = common dso_local global i32 0, align 4
@SUPPORTS_DYNAMIC_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, i32)* @ieee80211_set_power_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_set_power_mgmt(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_sub_if_data*, align 8
  %11 = alloca %struct.ieee80211_local*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %12)
  store %struct.ieee80211_sub_if_data* %13, %struct.ieee80211_sub_if_data** %10, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ieee80211_local* @wdev_priv(i32 %16)
  store %struct.ieee80211_local* %17, %struct.ieee80211_local** %11, align 8
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %87

27:                                               ; preds = %4
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %29 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %28, i32 0, i32 1
  %30 = load i32, i32* @SUPPORTS_PS, align 4
  %31 = call i64 @ieee80211_hw_check(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %87

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %37, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %47 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %87

51:                                               ; preds = %44, %36
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %59 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %61 = call i32 @sdata_lock(%struct.ieee80211_sub_if_data* %60)
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %63 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @__ieee80211_request_smps_mgd(%struct.ieee80211_sub_if_data* %62, i32 %67)
  %69 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %70 = call i32 @sdata_unlock(%struct.ieee80211_sub_if_data* %69)
  %71 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %72 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %71, i32 0, i32 1
  %73 = load i32, i32* @SUPPORTS_DYNAMIC_PS, align 4
  %74 = call i64 @ieee80211_hw_check(i32* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %51
  %77 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %78 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %79 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %51
  %81 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %82 = call i32 @ieee80211_recalc_ps(%struct.ieee80211_local* %81)
  %83 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %84 = call i32 @ieee80211_recalc_ps_vif(%struct.ieee80211_sub_if_data* %83)
  %85 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %86 = call i32 @ieee80211_check_fast_rx_iface(%struct.ieee80211_sub_if_data* %85)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %80, %50, %33, %24
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local %struct.ieee80211_local* @wdev_priv(i32) #1

declare dso_local i64 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @sdata_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @__ieee80211_request_smps_mgd(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @sdata_unlock(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_recalc_ps(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_recalc_ps_vif(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_check_fast_rx_iface(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
