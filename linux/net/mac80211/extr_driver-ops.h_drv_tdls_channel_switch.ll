; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_tdls_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_tdls_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, %struct.ieee80211_sta*, i32, %struct.cfg80211_chan_def*, %struct.sk_buff*, i32)* }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.sk_buff = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_sta*, i32, %struct.cfg80211_chan_def*, %struct.sk_buff*, i32)* @drv_tdls_channel_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_tdls_channel_switch(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sta* %2, i32 %3, %struct.cfg80211_chan_def* %4, %struct.sk_buff* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_local*, align 8
  %10 = alloca %struct.ieee80211_sub_if_data*, align 8
  %11 = alloca %struct.ieee80211_sta*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.cfg80211_chan_def*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %9, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %10, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.cfg80211_chan_def* %4, %struct.cfg80211_chan_def** %13, align 8
  store %struct.sk_buff* %5, %struct.sk_buff** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = call i32 (...) @might_sleep()
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %19 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %60

24:                                               ; preds = %7
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %26 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i32*, i32*, %struct.ieee80211_sta*, i32, %struct.cfg80211_chan_def*, %struct.sk_buff*, i32)*, i32 (i32*, i32*, %struct.ieee80211_sta*, i32, %struct.cfg80211_chan_def*, %struct.sk_buff*, i32)** %28, align 8
  %30 = icmp ne i32 (i32*, i32*, %struct.ieee80211_sta*, i32, %struct.cfg80211_chan_def*, %struct.sk_buff*, i32)* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %60

34:                                               ; preds = %24
  %35 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %37 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %40 = call i32 @trace_drv_tdls_channel_switch(%struct.ieee80211_local* %35, %struct.ieee80211_sub_if_data* %36, %struct.ieee80211_sta* %37, i32 %38, %struct.cfg80211_chan_def* %39)
  %41 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %42 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (i32*, i32*, %struct.ieee80211_sta*, i32, %struct.cfg80211_chan_def*, %struct.sk_buff*, i32)*, i32 (i32*, i32*, %struct.ieee80211_sta*, i32, %struct.cfg80211_chan_def*, %struct.sk_buff*, i32)** %44, align 8
  %46 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %47 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %46, i32 0, i32 0
  %48 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %49 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %48, i32 0, i32 0
  %50 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %13, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i32 %45(i32* %47, i32* %49, %struct.ieee80211_sta* %50, i32 %51, %struct.cfg80211_chan_def* %52, %struct.sk_buff* %53, i32 %54)
  store i32 %55, i32* %16, align 4
  %56 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @trace_drv_return_int(%struct.ieee80211_local* %56, i32 %57)
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %34, %31, %21
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_tdls_channel_switch(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_sta*, i32, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @trace_drv_return_int(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
