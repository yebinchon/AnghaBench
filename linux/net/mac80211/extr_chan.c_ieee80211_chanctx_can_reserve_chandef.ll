; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_chanctx_can_reserve_chandef.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_chanctx_can_reserve_chandef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.ieee80211_chanctx = type { i32 }
%struct.cfg80211_chan_def = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.ieee80211_chanctx*, %struct.cfg80211_chan_def*)* @ieee80211_chanctx_can_reserve_chandef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_chanctx_can_reserve_chandef(%struct.ieee80211_local* %0, %struct.ieee80211_chanctx* %1, %struct.cfg80211_chan_def* %2) #0 {
  %4 = alloca i32, align 4
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
  %14 = call i64 @ieee80211_chanctx_combined_chandef(%struct.ieee80211_local* %11, %struct.ieee80211_chanctx* %12, %struct.cfg80211_chan_def* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %30

17:                                               ; preds = %3
  %18 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %18, i32 0, i32 0
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %24 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  %25 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %26 = call i64 @ieee80211_chanctx_reserved_chandef(%struct.ieee80211_local* %23, %struct.ieee80211_chanctx* %24, %struct.cfg80211_chan_def* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %30

29:                                               ; preds = %22, %17
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %28, %16
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @ieee80211_chanctx_combined_chandef(%struct.ieee80211_local*, %struct.ieee80211_chanctx*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @ieee80211_chanctx_reserved_chandef(%struct.ieee80211_local*, %struct.ieee80211_chanctx*, %struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
