; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_pm.c_ieee80211_report_wowlan_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_pm.c_ieee80211_report_wowlan_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.cfg80211_wowlan_wakeup = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_report_wowlan_wakeup(%struct.ieee80211_vif* %0, %struct.cfg80211_wowlan_wakeup* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.cfg80211_wowlan_wakeup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %4, align 8
  store %struct.cfg80211_wowlan_wakeup* %1, %struct.cfg80211_wowlan_wakeup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %9 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %8)
  store %struct.ieee80211_sub_if_data* %9, %struct.ieee80211_sub_if_data** %7, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 0
  %12 = load %struct.cfg80211_wowlan_wakeup*, %struct.cfg80211_wowlan_wakeup** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @cfg80211_report_wowlan_wakeup(i32* %11, %struct.cfg80211_wowlan_wakeup* %12, i32 %13)
  ret void
}

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i32 @cfg80211_report_wowlan_wakeup(i32*, %struct.cfg80211_wowlan_wakeup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
