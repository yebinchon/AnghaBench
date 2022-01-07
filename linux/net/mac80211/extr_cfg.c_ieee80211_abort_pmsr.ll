; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_abort_pmsr.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_abort_pmsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_pmsr_request = type { i32 }
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.wireless_dev*, %struct.cfg80211_pmsr_request*)* @ieee80211_abort_pmsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_abort_pmsr(%struct.wiphy* %0, %struct.wireless_dev* %1, %struct.cfg80211_pmsr_request* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.cfg80211_pmsr_request*, align 8
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %5, align 8
  store %struct.cfg80211_pmsr_request* %2, %struct.cfg80211_pmsr_request** %6, align 8
  %9 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %10 = call %struct.ieee80211_local* @wiphy_priv(%struct.wiphy* %9)
  store %struct.ieee80211_local* %10, %struct.ieee80211_local** %7, align 8
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %12 = call %struct.ieee80211_sub_if_data* @IEEE80211_WDEV_TO_SUB_IF(%struct.wireless_dev* %11)
  store %struct.ieee80211_sub_if_data* %12, %struct.ieee80211_sub_if_data** %8, align 8
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %15 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %6, align 8
  call void @drv_abort_pmsr(%struct.ieee80211_local* %13, %struct.ieee80211_sub_if_data* %14, %struct.cfg80211_pmsr_request* %15)
  ret void
}

declare dso_local %struct.ieee80211_local* @wiphy_priv(%struct.wiphy*) #1

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_WDEV_TO_SUB_IF(%struct.wireless_dev*) #1

declare dso_local void @drv_abort_pmsr(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.cfg80211_pmsr_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
