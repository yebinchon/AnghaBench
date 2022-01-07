; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_del_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_del_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_6__, i32, %struct.cfg80211_chan_def, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cfg80211_chan_def = type { i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_chanctx = type { i32 }

@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_chanctx*)* @ieee80211_del_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_del_chanctx(%struct.ieee80211_local* %0, %struct.ieee80211_chanctx* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_chanctx*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.ieee80211_chanctx* %1, %struct.ieee80211_chanctx** %4, align 8
  %6 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %6, i32 0, i32 4
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %51, label %13

13:                                               ; preds = %2
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 2
  store %struct.cfg80211_chan_def* %15, %struct.cfg80211_chan_def** %5, align 8
  %16 = load i32, i32* @NL80211_CHAN_WIDTH_20_NOHT, align 4
  %17 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %18 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %20 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %25 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %27 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %13
  %35 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %35, i32 0, i32 1
  %37 = call i32 @list_empty(i32* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %34, %13
  %41 = phi i1 [ false, %13 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  %44 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %49 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %50 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %48, i32 %49)
  br label %55

51:                                               ; preds = %2
  %52 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %53 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %54 = call i32 @drv_remove_chanctx(%struct.ieee80211_local* %52, %struct.ieee80211_chanctx* %53)
  br label %55

55:                                               ; preds = %51, %40
  %56 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %57 = call i32 @ieee80211_recalc_idle(%struct.ieee80211_local* %56)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @drv_remove_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @ieee80211_recalc_idle(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
