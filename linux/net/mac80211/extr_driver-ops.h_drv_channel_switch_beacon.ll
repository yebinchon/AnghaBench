; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_channel_switch_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_channel_switch_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, %struct.cfg80211_chan_def*)* }
%struct.cfg80211_chan_def = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.cfg80211_chan_def*)* @drv_channel_switch_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_channel_switch_beacon(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %4, align 8
  %6 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %6, i32 0, i32 1
  %8 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  store %struct.ieee80211_local* %8, %struct.ieee80211_local** %5, align 8
  %9 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32*, i32*, %struct.cfg80211_chan_def*)*, i32 (i32*, i32*, %struct.cfg80211_chan_def*)** %12, align 8
  %14 = icmp ne i32 (i32*, i32*, %struct.cfg80211_chan_def*)* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %18 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %19 = call i32 @trace_drv_channel_switch_beacon(%struct.ieee80211_local* %16, %struct.ieee80211_sub_if_data* %17, %struct.cfg80211_chan_def* %18)
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32*, i32*, %struct.cfg80211_chan_def*)*, i32 (i32*, i32*, %struct.cfg80211_chan_def*)** %23, align 8
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %25, i32 0, i32 0
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 0
  %29 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %30 = call i32 %24(i32* %26, i32* %28, %struct.cfg80211_chan_def* %29)
  br label %31

31:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @trace_drv_channel_switch_beacon(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
