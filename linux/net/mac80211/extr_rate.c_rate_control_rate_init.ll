; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_rate_control_rate_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_rate_control_rate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, %struct.TYPE_9__*, i8*, %struct.ieee80211_sta, %struct.rate_control_ref* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.ieee80211_local* }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.rate_control_ref = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (i32, %struct.ieee80211_supported_band*, %struct.TYPE_14__*, %struct.ieee80211_sta*, i8*)* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_14__ }

@WLAN_STA_RATE_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rate_control_rate_init(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.rate_control_ref*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_chanctx_conf*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %9 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  store %struct.ieee80211_local* %13, %struct.ieee80211_local** %3, align 8
  %14 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 4
  %16 = load %struct.rate_control_ref*, %struct.rate_control_ref** %15, align 8
  store %struct.rate_control_ref* %16, %struct.rate_control_ref** %4, align 8
  %17 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 3
  store %struct.ieee80211_sta* %18, %struct.ieee80211_sta** %5, align 8
  %19 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %20 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  %22 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %23 = call i32 @ieee80211_sta_set_rx_nss(%struct.sta_info* %22)
  %24 = load %struct.rate_control_ref*, %struct.rate_control_ref** %4, align 8
  %25 = icmp ne %struct.rate_control_ref* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %83

27:                                               ; preds = %1
  %28 = call i32 (...) @rcu_read_lock()
  %29 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %30 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %34)
  store %struct.ieee80211_chanctx_conf* %35, %struct.ieee80211_chanctx_conf** %8, align 8
  %36 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %8, align 8
  %37 = icmp ne %struct.ieee80211_chanctx_conf* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = call i32 (...) @rcu_read_unlock()
  br label %83

44:                                               ; preds = %27
  %45 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %49, align 8
  %51 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %8, align 8
  %52 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %50, i64 %56
  %58 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %57, align 8
  store %struct.ieee80211_supported_band* %58, %struct.ieee80211_supported_band** %7, align 8
  %59 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %60 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %59, i32 0, i32 0
  %61 = call i32 @spin_lock_bh(i32* %60)
  %62 = load %struct.rate_control_ref*, %struct.rate_control_ref** %4, align 8
  %63 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %62, i32 0, i32 1
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32 (i32, %struct.ieee80211_supported_band*, %struct.TYPE_14__*, %struct.ieee80211_sta*, i8*)*, i32 (i32, %struct.ieee80211_supported_band*, %struct.TYPE_14__*, %struct.ieee80211_sta*, i8*)** %65, align 8
  %67 = load %struct.rate_control_ref*, %struct.rate_control_ref** %4, align 8
  %68 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %71 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %8, align 8
  %72 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %71, i32 0, i32 0
  %73 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 %66(i32 %69, %struct.ieee80211_supported_band* %70, %struct.TYPE_14__* %72, %struct.ieee80211_sta* %73, i8* %74)
  %76 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %77 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_bh(i32* %77)
  %79 = call i32 (...) @rcu_read_unlock()
  %80 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %81 = load i32, i32* @WLAN_STA_RATE_CONTROL, align 4
  %82 = call i32 @set_sta_flag(%struct.sta_info* %80, i32 %81)
  br label %83

83:                                               ; preds = %44, %42, %26
  ret void
}

declare dso_local i32 @ieee80211_sta_set_rx_nss(%struct.sta_info*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
