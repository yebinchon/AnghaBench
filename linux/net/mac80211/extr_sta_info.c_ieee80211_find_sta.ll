; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_ieee80211_find_sta.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_ieee80211_find_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.sta_info = type { %struct.ieee80211_sta, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %0, i32* %1) #0 {
  %3 = alloca %struct.ieee80211_sta*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sta_info*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %8 = icmp ne %struct.ieee80211_vif* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %3, align 8
  br label %27

10:                                               ; preds = %2
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %12 = call i32 @vif_to_sdata(%struct.ieee80211_vif* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.sta_info* @sta_info_get_bss(i32 %12, i32* %13)
  store %struct.sta_info* %14, %struct.sta_info** %6, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %16 = icmp ne %struct.sta_info* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %3, align 8
  br label %27

18:                                               ; preds = %10
  %19 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %20 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %3, align 8
  br label %27

24:                                               ; preds = %18
  %25 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 0
  store %struct.ieee80211_sta* %26, %struct.ieee80211_sta** %3, align 8
  br label %27

27:                                               ; preds = %24, %23, %17, %9
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  ret %struct.ieee80211_sta* %28
}

declare dso_local %struct.sta_info* @sta_info_get_bss(i32, i32*) #1

declare dso_local i32 @vif_to_sdata(%struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
