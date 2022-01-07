; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_agg-tx.c_ieee80211_lookup_tid_tx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_agg-tx.c_ieee80211_lookup_tid_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_ampdu_tx = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.sta_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@IEEE80211_NUM_TIDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Bad TID value: tid = %d (>= %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not find station: %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"addBA was not requested!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tid_ampdu_tx* (%struct.ieee80211_sub_if_data*, i32*, i64, %struct.sta_info**)* @ieee80211_lookup_tid_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tid_ampdu_tx* @ieee80211_lookup_tid_tx(%struct.ieee80211_sub_if_data* %0, i32* %1, i64 %2, %struct.sta_info** %3) #0 {
  %5 = alloca %struct.tid_ampdu_tx*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sta_info**, align 8
  %10 = alloca %struct.tid_ampdu_tx*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.sta_info** %3, %struct.sta_info*** %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @IEEE80211_NUM_TIDS, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @IEEE80211_NUM_TIDS, align 8
  %18 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @ht_dbg(%struct.ieee80211_sub_if_data* %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17)
  store %struct.tid_ampdu_tx* null, %struct.tid_ampdu_tx** %5, align 8
  br label %52

19:                                               ; preds = %4
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data* %20, i32* %21)
  %23 = load %struct.sta_info**, %struct.sta_info*** %9, align 8
  store %struct.sta_info* %22, %struct.sta_info** %23, align 8
  %24 = load %struct.sta_info**, %struct.sta_info*** %9, align 8
  %25 = load %struct.sta_info*, %struct.sta_info** %24, align 8
  %26 = icmp ne %struct.sta_info* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @ht_dbg(%struct.ieee80211_sub_if_data* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  store %struct.tid_ampdu_tx* null, %struct.tid_ampdu_tx** %5, align 8
  br label %52

31:                                               ; preds = %19
  %32 = load %struct.sta_info**, %struct.sta_info*** %9, align 8
  %33 = load %struct.sta_info*, %struct.sta_info** %32, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.tid_ampdu_tx* @rcu_dereference(i32 %39)
  store %struct.tid_ampdu_tx* %40, %struct.tid_ampdu_tx** %10, align 8
  %41 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %10, align 8
  %42 = icmp ne %struct.tid_ampdu_tx* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  %48 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %49 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @ht_dbg(%struct.ieee80211_sub_if_data* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %31
  %51 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %10, align 8
  store %struct.tid_ampdu_tx* %51, %struct.tid_ampdu_tx** %5, align 8
  br label %52

52:                                               ; preds = %50, %27, %14
  %53 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %5, align 8
  ret %struct.tid_ampdu_tx* %53
}

declare dso_local i32 @ht_dbg(%struct.ieee80211_sub_if_data*, i8*, ...) #1

declare dso_local %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local %struct.tid_ampdu_tx* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
