; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_iterate_stations_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_iterate_stations_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type opaque
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_sta.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_iterate_stations_atomic(%struct.ieee80211_hw* %0, void (i8*, %struct.ieee80211_sta*)* %1, i8* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca void (i8*, %struct.ieee80211_sta*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store void (i8*, %struct.ieee80211_sta*)* %1, void (i8*, %struct.ieee80211_sta*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = call %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw* %8)
  store %struct.ieee80211_local* %9, %struct.ieee80211_local** %7, align 8
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %12 = load void (i8*, %struct.ieee80211_sta*)*, void (i8*, %struct.ieee80211_sta*)** %5, align 8
  %13 = bitcast void (i8*, %struct.ieee80211_sta*)* %12 to void (i8*, %struct.ieee80211_sta.0*)*
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @__iterate_stations(%struct.ieee80211_local* %11, void (i8*, %struct.ieee80211_sta.0*)* %13, i8* %14)
  %16 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @__iterate_stations(%struct.ieee80211_local*, void (i8*, %struct.ieee80211_sta.0*)*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
