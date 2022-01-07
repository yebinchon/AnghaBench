; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_channel_switch_rx_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_channel_switch_rx_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, %struct.ieee80211_channel_switch*)* }
%struct.ieee80211_channel_switch = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_channel_switch*)* @drv_channel_switch_rx_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_channel_switch_rx_beacon(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_channel_switch* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_channel_switch*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.ieee80211_channel_switch* %1, %struct.ieee80211_channel_switch** %4, align 8
  %6 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %6, i32 0, i32 1
  %8 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  store %struct.ieee80211_local* %8, %struct.ieee80211_local** %5, align 8
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %10 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %16 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %4, align 8
  %17 = call i32 @trace_drv_channel_switch_rx_beacon(%struct.ieee80211_local* %14, %struct.ieee80211_sub_if_data* %15, %struct.ieee80211_channel_switch* %16)
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32*, i32*, %struct.ieee80211_channel_switch*)*, i32 (i32*, i32*, %struct.ieee80211_channel_switch*)** %21, align 8
  %23 = icmp ne i32 (i32*, i32*, %struct.ieee80211_channel_switch*)* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %13
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i32*, i32*, %struct.ieee80211_channel_switch*)*, i32 (i32*, i32*, %struct.ieee80211_channel_switch*)** %28, align 8
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %30, i32 0, i32 0
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %32, i32 0, i32 0
  %34 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %4, align 8
  %35 = call i32 %29(i32* %31, i32* %33, %struct.ieee80211_channel_switch* %34)
  br label %36

36:                                               ; preds = %12, %24, %13
  ret void
}

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_channel_switch_rx_beacon(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_channel_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
