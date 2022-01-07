; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_ieee80211s_update_metric.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_ieee80211s_update_metric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_tx_status = type { %struct.ieee80211_tx_info* }
%struct.ieee80211_tx_info = type { i32 }
%struct.rate_info = type { i32 }

@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@LINK_FAIL_THRESH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211s_update_metric(%struct.ieee80211_local* %0, %struct.sta_info* %1, %struct.ieee80211_tx_status* %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.ieee80211_tx_status*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rate_info, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store %struct.ieee80211_tx_status* %2, %struct.ieee80211_tx_status** %6, align 8
  %10 = load %struct.ieee80211_tx_status*, %struct.ieee80211_tx_status** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_tx_status, %struct.ieee80211_tx_status* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  store %struct.ieee80211_tx_info* %12, %struct.ieee80211_tx_info** %7, align 8
  %13 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %8, align 4
  %26 = mul nsw i32 %25, 100
  %27 = call i32 @ewma_mesh_fail_avg_add(i32* %24, i32 %26)
  %28 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %29 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = call i64 @ewma_mesh_fail_avg_read(i32* %31)
  %33 = load i64, i64* @LINK_FAIL_THRESH, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %37 = call i32 @mesh_plink_broken(%struct.sta_info* %36)
  br label %38

38:                                               ; preds = %35, %3
  %39 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %40 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @sta_set_rate_info_tx(%struct.sta_info* %39, i32* %42, %struct.rate_info* %9)
  %44 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %45 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @cfg80211_calculate_bitrate(%struct.rate_info* %9)
  %49 = call i32 @ewma_mesh_tx_rate_avg_add(i32* %47, i32 %48)
  ret void
}

declare dso_local i32 @ewma_mesh_fail_avg_add(i32*, i32) #1

declare dso_local i64 @ewma_mesh_fail_avg_read(i32*) #1

declare dso_local i32 @mesh_plink_broken(%struct.sta_info*) #1

declare dso_local i32 @sta_set_rate_info_tx(%struct.sta_info*, i32*, %struct.rate_info*) #1

declare dso_local i32 @ewma_mesh_tx_rate_avg_add(i32*, i32) #1

declare dso_local i32 @cfg80211_calculate_bitrate(%struct.rate_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
