; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_restart_sta_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_restart_sta_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_8__, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@CONNECTION_MONITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*)* @ieee80211_restart_sta_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_restart_sta_timer(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %3 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %11 = call i32 @__ieee80211_stop_poll(%struct.ieee80211_sub_if_data* %10)
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* @CONNECTION_MONITOR, align 4
  %17 = call i32 @ieee80211_hw_check(i32* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %9
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = call i32 @ieee80211_queue_work(i32* %23, i32* %27)
  br label %29

29:                                               ; preds = %19, %9
  br label %30

30:                                               ; preds = %29, %1
  ret void
}

declare dso_local i32 @__ieee80211_stop_poll(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @ieee80211_queue_work(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
