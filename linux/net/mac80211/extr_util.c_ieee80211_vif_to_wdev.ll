; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_vif_to_wdev.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_vif_to_wdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sub_if_data = type { i32, %struct.wireless_dev }

@IEEE80211_SDATA_IN_DRIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wireless_dev* @ieee80211_vif_to_wdev(%struct.ieee80211_vif* %0) #0 {
  %2 = alloca %struct.wireless_dev*, align 8
  %3 = alloca %struct.ieee80211_vif*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %3, align 8
  %5 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %6 = icmp ne %struct.ieee80211_vif* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.wireless_dev* null, %struct.wireless_dev** %2, align 8
  br label %25

8:                                                ; preds = %1
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %10 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %9)
  store %struct.ieee80211_sub_if_data* %10, %struct.ieee80211_sub_if_data** %4, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %12 = call i32 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IEEE80211_SDATA_IN_DRIVER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %8
  store %struct.wireless_dev* null, %struct.wireless_dev** %2, align 8
  br label %25

22:                                               ; preds = %14
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 1
  store %struct.wireless_dev* %24, %struct.wireless_dev** %2, align 8
  br label %25

25:                                               ; preds = %22, %21, %7
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  ret %struct.wireless_dev* %26
}

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
