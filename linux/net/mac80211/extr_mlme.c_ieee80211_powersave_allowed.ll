; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_powersave_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_powersave_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32, i32, i32, i64, i32 }
%struct.sta_info = type { i32 }

@IEEE80211_STA_CONNECTION_POLL = common dso_local global i32 0, align 4
@WLAN_STA_AUTHORIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*)* @ieee80211_powersave_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_powersave_allowed(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_if_managed*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  %7 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ieee80211_if_managed* %9, %struct.ieee80211_if_managed** %4, align 8
  store %struct.sta_info* null, %struct.sta_info** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

15:                                               ; preds = %1
  %16 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %57

21:                                               ; preds = %15
  %22 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %57

27:                                               ; preds = %21
  %28 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IEEE80211_STA_CONNECTION_POLL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %57

35:                                               ; preds = %27
  %36 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %57

41:                                               ; preds = %35
  %42 = call i32 (...) @rcu_read_lock()
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %44 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %43, i32 %46)
  store %struct.sta_info* %47, %struct.sta_info** %5, align 8
  %48 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %49 = icmp ne %struct.sta_info* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %52 = load i32, i32* @WLAN_STA_AUTHORIZED, align 4
  %53 = call i32 @test_sta_flag(%struct.sta_info* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %41
  %55 = call i32 (...) @rcu_read_unlock()
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %40, %34, %26, %20, %14
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
