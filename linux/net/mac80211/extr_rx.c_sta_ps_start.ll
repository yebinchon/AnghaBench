; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_sta_ps_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_sta_ps_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, %struct.TYPE_6__, %struct.ieee80211_sub_if_data* }
%struct.TYPE_6__ = type { %struct.ieee80211_txq**, i32, i32 }
%struct.ieee80211_txq = type { i64 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_5__*, %struct.TYPE_4__, %struct.ieee80211_local* }
%struct.TYPE_5__ = type { %struct.ps_data }
%struct.ps_data = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_local = type { i32*, i32 }
%struct.txq_info = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@WLAN_STA_PS_STA = common dso_local global i32 0, align 4
@AP_LINK_PS = common dso_local global i32 0, align 4
@STA_NOTIFY_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"STA %pM aid %d enters power save mode\0A\00", align 1
@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*)* @sta_ps_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta_ps_start(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ps_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_txq*, align 8
  %8 = alloca %struct.txq_info*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %9 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 2
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  store %struct.ieee80211_sub_if_data* %11, %struct.ieee80211_sub_if_data** %3, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 2
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  store %struct.ieee80211_local* %14, %struct.ieee80211_local** %4, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 2
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %16, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %1
  %24 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %25 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %24, i32 0, i32 2
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %25, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %23, %1
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store %struct.ps_data* %36, %struct.ps_data** %5, align 8
  br label %38

37:                                               ; preds = %23
  br label %136

38:                                               ; preds = %32
  %39 = load %struct.ps_data*, %struct.ps_data** %5, align 8
  %40 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %39, i32 0, i32 0
  %41 = call i32 @atomic_inc(i32* %40)
  %42 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %43 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %44 = call i32 @set_sta_flag(%struct.sta_info* %42, i32 %43)
  %45 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %45, i32 0, i32 1
  %47 = load i32, i32* @AP_LINK_PS, align 4
  %48 = call i32 @ieee80211_hw_check(i32* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %38
  %51 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %53 = load i32, i32* @STA_NOTIFY_SLEEP, align 4
  %54 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %55 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %54, i32 0, i32 1
  %56 = call i32 @drv_sta_notify(%struct.ieee80211_local* %51, %struct.ieee80211_sub_if_data* %52, i32 %53, %struct.TYPE_6__* %55)
  br label %57

57:                                               ; preds = %50, %38
  %58 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %59 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %60 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %64 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ps_dbg(%struct.ieee80211_sub_if_data* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %66)
  %68 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %69 = call i32 @ieee80211_clear_fast_xmit(%struct.sta_info* %68)
  %70 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %71 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.ieee80211_txq**, %struct.ieee80211_txq*** %72, align 8
  %74 = getelementptr inbounds %struct.ieee80211_txq*, %struct.ieee80211_txq** %73, i64 0
  %75 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %74, align 8
  %76 = icmp ne %struct.ieee80211_txq* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %57
  br label %136

78:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %133, %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %136

83:                                               ; preds = %79
  %84 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %85 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.ieee80211_txq**, %struct.ieee80211_txq*** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ieee80211_txq*, %struct.ieee80211_txq** %87, i64 %89
  %91 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %90, align 8
  store %struct.ieee80211_txq* %91, %struct.ieee80211_txq** %7, align 8
  %92 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %7, align 8
  %93 = call %struct.txq_info* @to_txq_info(%struct.ieee80211_txq* %92)
  store %struct.txq_info* %93, %struct.txq_info** %8, align 8
  %94 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %95 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %7, align 8
  %98 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = call i32 @spin_lock(i32* %100)
  %102 = load %struct.txq_info*, %struct.txq_info** %8, align 8
  %103 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %102, i32 0, i32 0
  %104 = call i32 @list_empty(i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %83
  %107 = load %struct.txq_info*, %struct.txq_info** %8, align 8
  %108 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %107, i32 0, i32 0
  %109 = call i32 @list_del_init(i32* %108)
  br label %110

110:                                              ; preds = %106, %83
  %111 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %112 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %7, align 8
  %115 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = call i32 @spin_unlock(i32* %117)
  %119 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %7, align 8
  %120 = call i64 @txq_has_queue(%struct.ieee80211_txq* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %110
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %125 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %124, i32 0, i32 0
  %126 = call i32 @set_bit(i32 %123, i32* %125)
  br label %132

127:                                              ; preds = %110
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %130 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %129, i32 0, i32 0
  %131 = call i32 @clear_bit(i32 %128, i32* %130)
  br label %132

132:                                              ; preds = %127, %122
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %79

136:                                              ; preds = %37, %77, %79
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @drv_sta_notify(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ps_dbg(%struct.ieee80211_sub_if_data*, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_clear_fast_xmit(%struct.sta_info*) #1

declare dso_local %struct.txq_info* @to_txq_info(%struct.ieee80211_txq*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @txq_has_queue(%struct.ieee80211_txq*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
