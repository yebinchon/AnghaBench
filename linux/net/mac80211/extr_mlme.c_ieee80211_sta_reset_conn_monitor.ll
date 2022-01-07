; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_sta_reset_conn_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_sta_reset_conn_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i64, i32 }

@CONNECTION_MONITOR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IEEE80211_CONNECTION_IDLE_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_sta_reset_conn_monitor(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_if_managed*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %4 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store %struct.ieee80211_if_managed* %6, %struct.ieee80211_if_managed** %3, align 8
  %7 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %41

16:                                               ; preds = %1
  %17 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %16
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* @CONNECTION_MONITOR, align 4
  %30 = call i64 @ieee80211_hw_check(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %41

33:                                               ; preds = %24
  %34 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %34, i32 0, i32 0
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i64, i64* @IEEE80211_CONNECTION_IDLE_TIME, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @round_jiffies_up(i64 %38)
  %40 = call i32 @mod_timer(i32* %35, i32 %39)
  br label %41

41:                                               ; preds = %33, %32, %15
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies_up(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
