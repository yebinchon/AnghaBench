; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_set_mu_mimo_follow.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_set_mu_mimo_follow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64*, i64* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.vif_params = type { i64, i64 }

@WLAN_MEMBERSHIP_LEN = common dso_local global i32 0, align 4
@WLAN_USER_POSITION_LEN = common dso_local global i32 0, align 4
@BSS_CHANGED_MU_GROUPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.vif_params*)* @ieee80211_set_mu_mimo_follow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_set_mu_mimo_follow(%struct.ieee80211_sub_if_data* %0, %struct.vif_params* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.vif_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.vif_params* %1, %struct.vif_params** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.vif_params*, %struct.vif_params** %4, align 8
  %9 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %2
  %13 = load i32, i32* @WLAN_MEMBERSHIP_LEN, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 8, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUILD_BUG_ON(i32 %16)
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load %struct.vif_params*, %struct.vif_params** %4, align 8
  %25 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @WLAN_MEMBERSHIP_LEN, align 4
  %28 = call i32 @memcpy(i64* %23, i64 %26, i32 %27)
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.vif_params*, %struct.vif_params** %4, align 8
  %36 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @WLAN_MEMBERSHIP_LEN, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = load i32, i32* @WLAN_USER_POSITION_LEN, align 4
  %42 = call i32 @memcpy(i64* %34, i64 %40, i32 %41)
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %44 = load i32, i32* @BSS_CHANGED_MU_GROUPS, align 4
  %45 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %43, i32 %44)
  %46 = load %struct.vif_params*, %struct.vif_params** %4, align 8
  %47 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @WLAN_MEMBERSHIP_LEN, align 4
  %50 = call i32 @memcpy(i64* %7, i64 %48, i32 %49)
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %12, %2
  %55 = load %struct.vif_params*, %struct.vif_params** %4, align 8
  %56 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load %struct.vif_params*, %struct.vif_params** %4, align 8
  %61 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @is_valid_ether_addr(i64 %62)
  store i32 %63, i32* %6, align 4
  %64 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.vif_params*, %struct.vif_params** %4, align 8
  %70 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @ether_addr_copy(i32 %68, i64 %71)
  br label %73

73:                                               ; preds = %59, %54
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %76, %73
  %80 = phi i1 [ true, %73 ], [ %78, %76 ]
  %81 = zext i1 %80 to i32
  %82 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %83 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memcpy(i64*, i64, i32) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i64) #1

declare dso_local i32 @ether_addr_copy(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
