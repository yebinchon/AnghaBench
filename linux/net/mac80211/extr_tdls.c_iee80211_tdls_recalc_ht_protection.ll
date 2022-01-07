; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_iee80211_tdls_recalc_ht_protection.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_iee80211_tdls_recalc_ht_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_9__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32 }
%struct.sta_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@IEEE80211_HT_OP_MODE_PROTECTION_NONHT_MIXED = common dso_local global i32 0, align 4
@IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT = common dso_local global i32 0, align 4
@IEEE80211_HT_OP_MODE_NON_HT_STA_PRSNT = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_HT = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sta_info*)* @iee80211_tdls_recalc_ht_protection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iee80211_tdls_recalc_ht_protection(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.ieee80211_if_managed*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store %struct.ieee80211_if_managed* %11, %struct.ieee80211_if_managed** %5, align 8
  %12 = load i32, i32* @IEEE80211_HT_OP_MODE_PROTECTION_NONHT_MIXED, align 4
  %13 = load i32, i32* @IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @IEEE80211_HT_OP_MODE_NON_HT_STA_PRSNT, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %75

24:                                               ; preds = %2
  %25 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %26 = icmp ne %struct.sta_info* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %29 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27, %24
  %35 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %36 = call i64 @iee80211_tdls_have_ht_peers(%struct.ieee80211_sub_if_data* %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %34, %27
  %39 = phi i1 [ true, %27 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %57

52:                                               ; preds = %38
  %53 = load i32, i32* %7, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %52, %48
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %58, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %75

66:                                               ; preds = %57
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %69 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  %72 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %73 = load i32, i32* @BSS_CHANGED_HT, align 4
  %74 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %72, i32 %73)
  br label %75

75:                                               ; preds = %66, %65, %23
  ret void
}

declare dso_local i64 @iee80211_tdls_have_ht_peers(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
