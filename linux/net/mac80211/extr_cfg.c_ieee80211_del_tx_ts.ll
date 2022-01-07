; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_del_tx_ts.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_del_tx_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { %struct.ieee80211_sta_tx_tspec* }
%struct.ieee80211_sta_tx_tspec = type { i64, i32, i32, i32, i32 }
%struct.ieee80211_local = type { i32 }

@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@TX_TSPEC_ACTION_STOP_DOWNGRADE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i64, i64*)* @ieee80211_del_tx_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_del_tx_ts(%struct.wiphy* %0, %struct.net_device* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ieee80211_sub_if_data*, align 8
  %11 = alloca %struct.ieee80211_if_managed*, align 8
  %12 = alloca %struct.ieee80211_local*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_sta_tx_tspec*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %15)
  store %struct.ieee80211_sub_if_data* %16, %struct.ieee80211_sub_if_data** %10, align 8
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.ieee80211_if_managed* %19, %struct.ieee80211_if_managed** %11, align 8
  %20 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %21 = call %struct.ieee80211_local* @wiphy_priv(%struct.wiphy* %20)
  store %struct.ieee80211_local* %21, %struct.ieee80211_local** %12, align 8
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %61, %4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %22
  %27 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %28 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %27, i32 0, i32 0
  %29 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %28, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %29, i64 %31
  store %struct.ieee80211_sta_tx_tspec* %32, %struct.ieee80211_sta_tx_tspec** %14, align 8
  %33 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %14, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %61

38:                                               ; preds = %26
  %39 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %14, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %61

45:                                               ; preds = %38
  %46 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %14, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %46, i32 0, i32 1
  store i32 -1, i32* %47, align 8
  %48 = call i32 (...) @synchronize_net()
  %49 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %50 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %51 = call i32 @ieee80211_flush_queues(%struct.ieee80211_local* %49, %struct.ieee80211_sub_if_data* %50, i32 0)
  %52 = load i32, i32* @TX_TSPEC_ACTION_STOP_DOWNGRADE, align 4
  %53 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %14, align 8
  %54 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %14, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %55, i32 0, i32 2
  store i32 0, i32* %56, align 4
  %57 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %58 = call i32 @ieee80211_sta_handle_tspec_ac_params(%struct.ieee80211_sub_if_data* %57)
  %59 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %14, align 8
  %60 = call i32 @memset(%struct.ieee80211_sta_tx_tspec* %59, i32 0, i32 24)
  store i32 0, i32* %5, align 4
  br label %67

61:                                               ; preds = %44, %37
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %22

64:                                               ; preds = %22
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %45
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local %struct.ieee80211_local* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @ieee80211_flush_queues(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_sta_handle_tspec_ac_params(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @memset(%struct.ieee80211_sta_tx_tspec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
