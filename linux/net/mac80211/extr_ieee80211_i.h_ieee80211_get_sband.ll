; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_ieee80211_i.h_ieee80211_get_sband.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_ieee80211_i.h_ieee80211_get_sband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__, %struct.ieee80211_local* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_supported_band* (%struct.ieee80211_sub_if_data*)* @ieee80211_get_sband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_supported_band*, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  %7 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %7, i32 0, i32 1
  %9 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  store %struct.ieee80211_local* %9, %struct.ieee80211_local** %4, align 8
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %14)
  store %struct.ieee80211_chanctx_conf* %15, %struct.ieee80211_chanctx_conf** %5, align 8
  %16 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %5, align 8
  %17 = icmp ne %struct.ieee80211_chanctx_conf* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON_ONCE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 (...) @rcu_read_unlock()
  store %struct.ieee80211_supported_band* null, %struct.ieee80211_supported_band** %2, align 8
  br label %42

24:                                               ; preds = %1
  %25 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %37, i64 %39
  %41 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %40, align 8
  store %struct.ieee80211_supported_band* %41, %struct.ieee80211_supported_band** %2, align 8
  br label %42

42:                                               ; preds = %24, %22
  %43 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  ret %struct.ieee80211_supported_band* %43
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
