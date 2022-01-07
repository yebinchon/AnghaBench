; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_scan_completed.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_scan_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.cfg80211_scan_info = type { i32 }
%struct.ieee80211_local = type { i32, i32, i32, i32 }

@SCAN_COMPLETED = common dso_local global i32 0, align 4
@SCAN_ABORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_scan_completed(%struct.ieee80211_hw* %0, %struct.cfg80211_scan_info* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.cfg80211_scan_info*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.cfg80211_scan_info* %1, %struct.cfg80211_scan_info** %4, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = call %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw* %6)
  store %struct.ieee80211_local* %7, %struct.ieee80211_local** %5, align 8
  %8 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %9 = load %struct.cfg80211_scan_info*, %struct.cfg80211_scan_info** %4, align 8
  %10 = getelementptr inbounds %struct.cfg80211_scan_info, %struct.cfg80211_scan_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @trace_api_scan_completed(%struct.ieee80211_local* %8, i32 %11)
  %13 = load i32, i32* @SCAN_COMPLETED, align 4
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 3
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load %struct.cfg80211_scan_info*, %struct.cfg80211_scan_info** %4, align 8
  %18 = getelementptr inbounds %struct.cfg80211_scan_info, %struct.cfg80211_scan_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @SCAN_ABORTED, align 4
  %23 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %23, i32 0, i32 3
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  br label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %27, i32 0, i32 2
  %29 = load %struct.cfg80211_scan_info*, %struct.cfg80211_scan_info** %4, align 8
  %30 = call i32 @memcpy(i32* %28, %struct.cfg80211_scan_info* %29, i32 4)
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %31, i32 0, i32 1
  %33 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %33, i32 0, i32 0
  %35 = call i32 @ieee80211_queue_delayed_work(i32* %32, i32* %34, i32 0)
  ret void
}

declare dso_local %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw*) #1

declare dso_local i32 @trace_api_scan_completed(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.cfg80211_scan_info*, i32) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
