; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_chanctx_combined_chandef.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_chanctx_combined_chandef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.ieee80211_chanctx = type { i32 }
%struct.cfg80211_chan_def = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfg80211_chan_def* (%struct.ieee80211_local*, %struct.ieee80211_chanctx*, %struct.cfg80211_chan_def*)* @ieee80211_chanctx_combined_chandef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfg80211_chan_def* @ieee80211_chanctx_combined_chandef(%struct.ieee80211_local* %0, %struct.ieee80211_chanctx* %1, %struct.cfg80211_chan_def* %2) #0 {
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_chanctx*, align 8
  %7 = alloca %struct.cfg80211_chan_def*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.ieee80211_chanctx* %1, %struct.ieee80211_chanctx** %6, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %7, align 8
  %8 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %9 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %8, i32 0, i32 0
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %12 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  %13 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %14 = call %struct.cfg80211_chan_def* @ieee80211_chanctx_reserved_chandef(%struct.ieee80211_local* %11, %struct.ieee80211_chanctx* %12, %struct.cfg80211_chan_def* %13)
  store %struct.cfg80211_chan_def* %14, %struct.cfg80211_chan_def** %7, align 8
  %15 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %16 = icmp ne %struct.cfg80211_chan_def* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.cfg80211_chan_def* null, %struct.cfg80211_chan_def** %4, align 8
  br label %28

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %20 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  %21 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %22 = call %struct.cfg80211_chan_def* @ieee80211_chanctx_non_reserved_chandef(%struct.ieee80211_local* %19, %struct.ieee80211_chanctx* %20, %struct.cfg80211_chan_def* %21)
  store %struct.cfg80211_chan_def* %22, %struct.cfg80211_chan_def** %7, align 8
  %23 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %24 = icmp ne %struct.cfg80211_chan_def* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store %struct.cfg80211_chan_def* null, %struct.cfg80211_chan_def** %4, align 8
  br label %28

26:                                               ; preds = %18
  %27 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  store %struct.cfg80211_chan_def* %27, %struct.cfg80211_chan_def** %4, align 8
  br label %28

28:                                               ; preds = %26, %25, %17
  %29 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  ret %struct.cfg80211_chan_def* %29
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.cfg80211_chan_def* @ieee80211_chanctx_reserved_chandef(%struct.ieee80211_local*, %struct.ieee80211_chanctx*, %struct.cfg80211_chan_def*) #1

declare dso_local %struct.cfg80211_chan_def* @ieee80211_chanctx_non_reserved_chandef(%struct.ieee80211_local*, %struct.ieee80211_chanctx*, %struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
