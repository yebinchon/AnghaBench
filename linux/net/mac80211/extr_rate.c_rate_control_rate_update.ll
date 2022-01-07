; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_rate_control_rate_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_rate_control_rate_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.rate_control_ref* }
%struct.rate_control_ref = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, %struct.ieee80211_supported_band*, i32*, %struct.ieee80211_sta*, i8*, i32)* }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_supported_band = type { i32 }
%struct.sta_info = type { %struct.ieee80211_sta, %struct.TYPE_6__*, i32, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_chanctx_conf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rate_control_rate_update(%struct.ieee80211_local* %0, %struct.ieee80211_supported_band* %1, %struct.sta_info* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rate_control_ref*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ieee80211_chanctx_conf*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %6, align 8
  store %struct.sta_info* %2, %struct.sta_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 0
  %15 = load %struct.rate_control_ref*, %struct.rate_control_ref** %14, align 8
  store %struct.rate_control_ref* %15, %struct.rate_control_ref** %9, align 8
  %16 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %17 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %16, i32 0, i32 0
  store %struct.ieee80211_sta* %17, %struct.ieee80211_sta** %10, align 8
  %18 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 3
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %11, align 8
  %21 = load %struct.rate_control_ref*, %struct.rate_control_ref** %9, align 8
  %22 = icmp ne %struct.rate_control_ref* %21, null
  br i1 %22, label %23, label %70

23:                                               ; preds = %4
  %24 = load %struct.rate_control_ref*, %struct.rate_control_ref** %9, align 8
  %25 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32 (i32, %struct.ieee80211_supported_band*, i32*, %struct.ieee80211_sta*, i8*, i32)*, i32 (i32, %struct.ieee80211_supported_band*, i32*, %struct.ieee80211_sta*, i8*, i32)** %27, align 8
  %29 = icmp ne i32 (i32, %struct.ieee80211_supported_band*, i32*, %struct.ieee80211_sta*, i8*, i32)* %28, null
  br i1 %29, label %30, label %70

30:                                               ; preds = %23
  %31 = call i32 (...) @rcu_read_lock()
  %32 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %33 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %37)
  store %struct.ieee80211_chanctx_conf* %38, %struct.ieee80211_chanctx_conf** %12, align 8
  %39 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %12, align 8
  %40 = icmp ne %struct.ieee80211_chanctx_conf* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = call i32 (...) @rcu_read_unlock()
  br label %79

47:                                               ; preds = %30
  %48 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %49 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %48, i32 0, i32 2
  %50 = call i32 @spin_lock_bh(i32* %49)
  %51 = load %struct.rate_control_ref*, %struct.rate_control_ref** %9, align 8
  %52 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32 (i32, %struct.ieee80211_supported_band*, i32*, %struct.ieee80211_sta*, i8*, i32)*, i32 (i32, %struct.ieee80211_supported_band*, i32*, %struct.ieee80211_sta*, i8*, i32)** %54, align 8
  %56 = load %struct.rate_control_ref*, %struct.rate_control_ref** %9, align 8
  %57 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %60 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %12, align 8
  %61 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %60, i32 0, i32 0
  %62 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 %55(i32 %58, %struct.ieee80211_supported_band* %59, i32* %61, %struct.ieee80211_sta* %62, i8* %63, i32 %64)
  %66 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %67 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %66, i32 0, i32 2
  %68 = call i32 @spin_unlock_bh(i32* %67)
  %69 = call i32 (...) @rcu_read_unlock()
  br label %70

70:                                               ; preds = %47, %23, %4
  %71 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %72 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %73 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %76 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %75, i32 0, i32 0
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @drv_sta_rc_update(%struct.ieee80211_local* %71, %struct.TYPE_6__* %74, %struct.ieee80211_sta* %76, i32 %77)
  br label %79

79:                                               ; preds = %70, %45
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @drv_sta_rc_update(%struct.ieee80211_local*, %struct.TYPE_6__*, %struct.ieee80211_sta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
