; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_start_sw_scan.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_start_sw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32, i64, i32, i32, i32, i64 }
%struct.ieee80211_sub_if_data = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@SCAN_DECISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*)* @ieee80211_start_sw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_start_sw_scan(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %5, align 8
  %6 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EOPNOTSUPP, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @drv_sw_scan_start(%struct.ieee80211_local* %14, %struct.ieee80211_sub_if_data* %15, i32 %18)
  %20 = load i32, i32* @jiffies, align 4
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @SCAN_DECISION, align 4
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %29 = call i32 @ieee80211_offchannel_stop_vifs(%struct.ieee80211_local* %28)
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %31 = call i32 @ieee80211_flush_queues(%struct.ieee80211_local* %30, i32* null, i32 0)
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %33 = call i32 @ieee80211_configure_filter(%struct.ieee80211_local* %32)
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %35 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %34, i32 0)
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %36, i32 0, i32 1
  %38 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %38, i32 0, i32 0
  %40 = call i32 @ieee80211_queue_delayed_work(i32* %37, i32* %39, i32 0)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %13, %10
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @drv_sw_scan_start(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_offchannel_stop_vifs(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_flush_queues(%struct.ieee80211_local*, i32*, i32) #1

declare dso_local i32 @ieee80211_configure_filter(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
