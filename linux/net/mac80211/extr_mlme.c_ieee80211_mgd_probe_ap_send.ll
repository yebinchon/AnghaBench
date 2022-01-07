; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_mgd_probe_ap_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_mgd_probe_ap_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i64, i32, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64* }
%struct.sta_info = type { i32 }

@max_probe_tries = common dso_local global i64 0, align 8
@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_HE = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@probe_wait_ms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*)* @ieee80211_mgd_probe_ap_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_mgd_probe_ap_send(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_if_managed*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.ieee80211_if_managed* %11, %struct.ieee80211_if_managed** %3, align 8
  %12 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %12, i32 0, i32 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  store i64* %16, i64** %5, align 8
  %17 = load i64, i64* @max_probe_tries, align 8
  %18 = sub nsw i64 %17, 3
  %19 = call i64 @max(i32 1, i64 %18)
  store i64 %19, i64* %6, align 8
  %20 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i64* null, i64** %5, align 8
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %26
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %40 = load i64*, i64** %5, align 8
  %41 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %39, i64* %40)
  store %struct.sta_info* %41, %struct.sta_info** %7, align 8
  %42 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %43 = icmp ne %struct.sta_info* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %33
  %49 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %50 = call i32 @ieee80211_check_fast_rx(%struct.sta_info* %49)
  br label %51

51:                                               ; preds = %48, %33
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  br label %57

57:                                               ; preds = %51, %26
  %58 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %59 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %63 = call i64 @ieee80211_hw_check(i32* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %57
  %66 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %67 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %66, i32 0, i32 1
  store i32 0, i32* %67, align 8
  %68 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %69 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IEEE80211_STA_DISABLE_HE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %65
  %75 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %76 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, -1
  store i64 %78, i64* %76, align 8
  br label %85

79:                                               ; preds = %65
  %80 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %81 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %84 = call i32 @ieee80211_send_nullfunc(%struct.TYPE_7__* %82, %struct.ieee80211_sub_if_data* %83, i32 0)
  br label %85

85:                                               ; preds = %79, %74
  br label %121

86:                                               ; preds = %57
  %87 = call i32 (...) @rcu_read_lock()
  %88 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %89 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %88, i32 0, i32 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = load i32, i32* @WLAN_EID_SSID, align 4
  %92 = call i64* @ieee80211_bss_get_ie(%struct.TYPE_8__* %90, i32 %91)
  store i64* %92, i64** %4, align 8
  %93 = load i64*, i64** %4, align 8
  %94 = icmp eq i64* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i64 @WARN_ON_ONCE(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %86
  store i32 0, i32* %8, align 4
  br label %104

99:                                               ; preds = %86
  %100 = load i64*, i64** %4, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %99, %98
  %105 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %106 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %107 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i64*, i64** %5, align 8
  %111 = load i64*, i64** %4, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 2
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %115 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %114, i32 0, i32 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ieee80211_mlme_send_probe_req(%struct.ieee80211_sub_if_data* %105, i32 %109, i64* %110, i64* %112, i32 %113, i32 %118)
  %120 = call i32 (...) @rcu_read_unlock()
  br label %121

121:                                              ; preds = %104, %85
  %122 = load i64, i64* @jiffies, align 8
  %123 = load i32, i32* @probe_wait_ms, align 4
  %124 = call i64 @msecs_to_jiffies(i32 %123)
  %125 = add nsw i64 %122, %124
  %126 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %127 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  %128 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %129 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %130 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @run_again(%struct.ieee80211_sub_if_data* %128, i64 %131)
  ret void
}

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i64*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_check_fast_rx(%struct.sta_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @ieee80211_send_nullfunc(%struct.TYPE_7__*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64* @ieee80211_bss_get_ie(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ieee80211_mlme_send_probe_req(%struct.ieee80211_sub_if_data*, i32, i64*, i64*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @run_again(%struct.ieee80211_sub_if_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
