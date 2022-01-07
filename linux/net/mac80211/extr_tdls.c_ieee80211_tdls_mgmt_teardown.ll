; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_mgmt_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_mgmt_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { i32 }

@IEEE80211_QUEUE_STOP_REASON_TDLS_TEARDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed sending TDLS teardown packet %d\0A\00", align 1
@WLAN_STA_TDLS_PEER_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, i32, i32, i32, i32, i32, i32*, i64)* @ieee80211_tdls_mgmt_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tdls_mgmt_teardown(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i64 %9) #0 {
  %11 = alloca %struct.wiphy*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.ieee80211_sub_if_data*, align 8
  %22 = alloca %struct.ieee80211_local*, align 8
  %23 = alloca %struct.sta_info*, align 8
  %24 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %11, align 8
  store %struct.net_device* %1, %struct.net_device** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i64 %9, i64* %20, align 8
  %25 = load %struct.net_device*, %struct.net_device** %12, align 8
  %26 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %25)
  store %struct.ieee80211_sub_if_data* %26, %struct.ieee80211_sub_if_data** %21, align 8
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %21, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 0
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %28, align 8
  store %struct.ieee80211_local* %29, %struct.ieee80211_local** %22, align 8
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %22, align 8
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %21, align 8
  %32 = load i32, i32* @IEEE80211_QUEUE_STOP_REASON_TDLS_TEARDOWN, align 4
  %33 = call i32 @ieee80211_stop_vif_queues(%struct.ieee80211_local* %30, %struct.ieee80211_sub_if_data* %31, i32 %32)
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %22, align 8
  %35 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %21, align 8
  %36 = call i32 @ieee80211_flush_queues(%struct.ieee80211_local* %34, %struct.ieee80211_sub_if_data* %35, i32 0)
  %37 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %38 = load %struct.net_device*, %struct.net_device** %12, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %18, align 4
  %45 = load i32*, i32** %19, align 8
  %46 = load i64, i64* %20, align 8
  %47 = call i32 @ieee80211_tdls_prep_mgmt_packet(%struct.wiphy* %37, %struct.net_device* %38, i32* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32* %45, i64 %46, i32 0, i32* null)
  store i32 %47, i32* %24, align 4
  %48 = load i32, i32* %24, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %10
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %21, align 8
  %52 = load i32, i32* %24, align 4
  %53 = call i32 @sdata_err(%struct.ieee80211_sub_if_data* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %10
  %55 = call i32 (...) @rcu_read_lock()
  %56 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %21, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %56, i32* %57)
  store %struct.sta_info* %58, %struct.sta_info** %23, align 8
  %59 = load %struct.sta_info*, %struct.sta_info** %23, align 8
  %60 = icmp ne %struct.sta_info* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.sta_info*, %struct.sta_info** %23, align 8
  %63 = load i32, i32* @WLAN_STA_TDLS_PEER_AUTH, align 4
  %64 = call i32 @clear_sta_flag(%struct.sta_info* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %54
  %66 = call i32 (...) @rcu_read_unlock()
  %67 = load %struct.ieee80211_local*, %struct.ieee80211_local** %22, align 8
  %68 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %21, align 8
  %69 = load i32, i32* @IEEE80211_QUEUE_STOP_REASON_TDLS_TEARDOWN, align 4
  %70 = call i32 @ieee80211_wake_vif_queues(%struct.ieee80211_local* %67, %struct.ieee80211_sub_if_data* %68, i32 %69)
  ret i32 0
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @ieee80211_stop_vif_queues(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_flush_queues(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_tdls_prep_mgmt_packet(%struct.wiphy*, %struct.net_device*, i32*, i32, i32, i32, i32, i32, i32*, i64, i32, i32*) #1

declare dso_local i32 @sdata_err(%struct.ieee80211_sub_if_data*, i8*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @clear_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_wake_vif_queues(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
