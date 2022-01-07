; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_reset_ap_probe.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_reset_ap_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local*, %struct.TYPE_2__ }
%struct.ieee80211_local = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32 }

@IEEE80211_STA_CONNECTION_POLL = common dso_local global i32 0, align 4
@CONNECTION_MONITOR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IEEE80211_CONNECTION_IDLE_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*)* @ieee80211_reset_ap_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_reset_ap_probe(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_if_managed*, align 8
  %4 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %5 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.ieee80211_if_managed* %7, %struct.ieee80211_if_managed** %3, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  store %struct.ieee80211_local* %10, %struct.ieee80211_local** %4, align 8
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IEEE80211_STA_CONNECTION_POLL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %50

21:                                               ; preds = %1
  %22 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %23 = call i32 @__ieee80211_stop_poll(%struct.ieee80211_sub_if_data* %22)
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 2
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %28 = call i32 @ieee80211_recalc_ps(%struct.ieee80211_local* %27)
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 2
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %32, i32 0, i32 0
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %33, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 1
  %36 = load i32, i32* @CONNECTION_MONITOR, align 4
  %37 = call i64 @ieee80211_hw_check(i32* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %21
  br label %50

40:                                               ; preds = %21
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %42 = call i32 @ieee80211_sta_reset_beacon_monitor(%struct.ieee80211_sub_if_data* %41)
  %43 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %43, i32 0, i32 1
  %45 = load i64, i64* @jiffies, align 8
  %46 = load i64, i64* @IEEE80211_CONNECTION_IDLE_TIME, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @round_jiffies_up(i64 %47)
  %49 = call i32 @mod_timer(i32* %44, i32 %48)
  br label %50

50:                                               ; preds = %40, %39, %20
  %51 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__ieee80211_stop_poll(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_recalc_ps(%struct.ieee80211_local*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @ieee80211_sta_reset_beacon_monitor(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies_up(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
