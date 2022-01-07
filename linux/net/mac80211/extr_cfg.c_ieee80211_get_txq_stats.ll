; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_get_txq_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_get_txq_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_txq_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_local = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@NL80211_TXQ_STATS_BACKLOG_PACKETS = common dso_local global i32 0, align 4
@NL80211_TXQ_STATS_BACKLOG_BYTES = common dso_local global i32 0, align 4
@NL80211_TXQ_STATS_OVERLIMIT = common dso_local global i32 0, align 4
@NL80211_TXQ_STATS_OVERMEMORY = common dso_local global i32 0, align 4
@NL80211_TXQ_STATS_COLLISIONS = common dso_local global i32 0, align 4
@NL80211_TXQ_STATS_MAX_FLOWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, %struct.cfg80211_txq_stats*)* @ieee80211_get_txq_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_get_txq_stats(%struct.wiphy* %0, %struct.wireless_dev* %1, %struct.cfg80211_txq_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.cfg80211_txq_stats*, align 8
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.ieee80211_sub_if_data*, align 8
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %6, align 8
  store %struct.cfg80211_txq_stats* %2, %struct.cfg80211_txq_stats** %7, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %12 = call %struct.ieee80211_local* @wiphy_priv(%struct.wiphy* %11)
  store %struct.ieee80211_local* %12, %struct.ieee80211_local** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %111

20:                                               ; preds = %3
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %22 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = call i32 (...) @rcu_read_lock()
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %27 = icmp ne %struct.wireless_dev* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %20
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %30 = call %struct.ieee80211_sub_if_data* @IEEE80211_WDEV_TO_SUB_IF(%struct.wireless_dev* %29)
  store %struct.ieee80211_sub_if_data* %30, %struct.ieee80211_sub_if_data** %9, align 8
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  br label %104

37:                                               ; preds = %28
  %38 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %7, align 8
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @to_txq_info(i32 %42)
  %44 = call i32 @ieee80211_fill_txq_stats(%struct.cfg80211_txq_stats* %38, i32 %43)
  br label %103

45:                                               ; preds = %20
  %46 = load i32, i32* @NL80211_TXQ_STATS_BACKLOG_PACKETS, align 4
  %47 = call i32 @BIT(i32 %46)
  %48 = load i32, i32* @NL80211_TXQ_STATS_BACKLOG_BYTES, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = or i32 %47, %49
  %51 = load i32, i32* @NL80211_TXQ_STATS_OVERLIMIT, align 4
  %52 = call i32 @BIT(i32 %51)
  %53 = or i32 %50, %52
  %54 = load i32, i32* @NL80211_TXQ_STATS_OVERMEMORY, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = or i32 %53, %55
  %57 = load i32, i32* @NL80211_TXQ_STATS_COLLISIONS, align 4
  %58 = call i32 @BIT(i32 %57)
  %59 = or i32 %56, %58
  %60 = load i32, i32* @NL80211_TXQ_STATS_MAX_FLOWS, align 4
  %61 = call i32 @BIT(i32 %60)
  %62 = or i32 %59, %61
  %63 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %7, align 8
  %64 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %68 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %7, align 8
  %72 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %74 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %7, align 8
  %78 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %80 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %7, align 8
  %84 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %86 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %7, align 8
  %90 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %92 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %7, align 8
  %96 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %98 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.cfg80211_txq_stats*, %struct.cfg80211_txq_stats** %7, align 8
  %102 = getelementptr inbounds %struct.cfg80211_txq_stats, %struct.cfg80211_txq_stats* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %45, %37
  br label %104

104:                                              ; preds = %103, %36
  %105 = call i32 (...) @rcu_read_unlock()
  %106 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %107 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = call i32 @spin_unlock_bh(i32* %108)
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %104, %19
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.ieee80211_local* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_WDEV_TO_SUB_IF(%struct.wireless_dev*) #1

declare dso_local i32 @ieee80211_fill_txq_stats(%struct.cfg80211_txq_stats*, i32) #1

declare dso_local i32 @to_txq_info(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
