; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_sched_scan_stopped_rtnl.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_sched_scan_stopped_rtnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_sched_scan_stopped_rtnl(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %7 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %6)
  store %struct.cfg80211_registered_device* %7, %struct.cfg80211_registered_device** %5, align 8
  %8 = call i32 (...) @ASSERT_RTNL()
  %9 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @trace_cfg80211_sched_scan_stopped(%struct.wiphy* %9, i32 %10)
  %12 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @__cfg80211_stop_sched_scan(%struct.cfg80211_registered_device* %12, i32 %13, i32 1)
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @trace_cfg80211_sched_scan_stopped(%struct.wiphy*, i32) #1

declare dso_local i32 @__cfg80211_stop_sched_scan(%struct.cfg80211_registered_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
