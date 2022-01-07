; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_get_ftm_responder_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_get_ftm_responder_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, %struct.cfg80211_ftm_responder_stats*)* }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.cfg80211_ftm_responder_stats = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.cfg80211_ftm_responder_stats*)* @drv_get_ftm_responder_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_get_ftm_responder_stats(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, %struct.cfg80211_ftm_responder_stats* %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.cfg80211_ftm_responder_stats*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.cfg80211_ftm_responder_stats* %2, %struct.cfg80211_ftm_responder_stats** %6, align 8
  %8 = load i32, i32* @EOPNOTSUPP, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32*, i32*, %struct.cfg80211_ftm_responder_stats*)*, i32 (i32*, i32*, %struct.cfg80211_ftm_responder_stats*)** %13, align 8
  %15 = icmp ne i32 (i32*, i32*, %struct.cfg80211_ftm_responder_stats*)* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32*, i32*, %struct.cfg80211_ftm_responder_stats*)*, i32 (i32*, i32*, %struct.cfg80211_ftm_responder_stats*)** %20, align 8
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 0
  %26 = load %struct.cfg80211_ftm_responder_stats*, %struct.cfg80211_ftm_responder_stats** %6, align 8
  %27 = call i32 %21(i32* %23, i32* %25, %struct.cfg80211_ftm_responder_stats* %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %16, %3
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %31 = load %struct.cfg80211_ftm_responder_stats*, %struct.cfg80211_ftm_responder_stats** %6, align 8
  %32 = call i32 @trace_drv_get_ftm_responder_stats(%struct.ieee80211_local* %29, %struct.ieee80211_sub_if_data* %30, %struct.cfg80211_ftm_responder_stats* %31)
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @trace_drv_get_ftm_responder_stats(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.cfg80211_ftm_responder_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
