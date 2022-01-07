; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_stop_sched_scan_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_stop_sched_scan_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.cfg80211_sched_scan_request = type { i32, i32 }

@NL80211_CMD_SCHED_SCAN_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_stop_sched_scan_req(%struct.cfg80211_registered_device* %0, %struct.cfg80211_sched_scan_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %5, align 8
  store %struct.cfg80211_sched_scan_request* %1, %struct.cfg80211_sched_scan_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 (...) @ASSERT_RTNL()
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %3
  %13 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %14 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %6, align 8
  %15 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %6, align 8
  %18 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rdev_sched_scan_stop(%struct.cfg80211_registered_device* %13, i32 %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %33

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %3
  %27 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %6, align 8
  %28 = load i32, i32* @NL80211_CMD_SCHED_SCAN_STOPPED, align 4
  %29 = call i32 @nl80211_send_sched_scan(%struct.cfg80211_sched_scan_request* %27, i32 %28)
  %30 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %31 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %6, align 8
  %32 = call i32 @cfg80211_del_sched_scan_req(%struct.cfg80211_registered_device* %30, %struct.cfg80211_sched_scan_request* %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %26, %23
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @rdev_sched_scan_stop(%struct.cfg80211_registered_device*, i32, i32) #1

declare dso_local i32 @nl80211_send_sched_scan(%struct.cfg80211_sched_scan_request*, i32) #1

declare dso_local i32 @cfg80211_del_sched_scan_req(%struct.cfg80211_registered_device*, %struct.cfg80211_sched_scan_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
