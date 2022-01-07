; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_recalc_radar_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_recalc_radar_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_chanctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CHANCTX_CHANGE_RADAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_chanctx*)* @ieee80211_recalc_radar_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_recalc_radar_chanctx(%struct.ieee80211_local* %0, %struct.ieee80211_chanctx* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_chanctx*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.ieee80211_chanctx* %1, %struct.ieee80211_chanctx** %4, align 8
  %6 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %6, i32 0, i32 3
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %9, i32 0, i32 2
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %13 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %14 = call i32 @ieee80211_chanctx_radar_required(%struct.ieee80211_local* %12, %struct.ieee80211_chanctx* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %48

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %22
  %32 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %41 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %42 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %40, i32 %41)
  br label %43

43:                                               ; preds = %31, %22
  %44 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %45 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %46 = load i32, i32* @IEEE80211_CHANCTX_CHANGE_RADAR, align 4
  %47 = call i32 @drv_change_chanctx(%struct.ieee80211_local* %44, %struct.ieee80211_chanctx* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %21
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ieee80211_chanctx_radar_required(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @drv_change_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
