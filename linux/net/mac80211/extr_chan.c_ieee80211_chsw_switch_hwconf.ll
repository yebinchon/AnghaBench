; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_chsw_switch_hwconf.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_chsw_switch_hwconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.cfg80211_chan_def, %struct.TYPE_5__, i32, i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_chanctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.ieee80211_chanctx*)* @ieee80211_chsw_switch_hwconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_chsw_switch_hwconf(%struct.ieee80211_local* %0, %struct.ieee80211_chanctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_chanctx*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.ieee80211_chanctx* %1, %struct.ieee80211_chanctx** %5, align 8
  %7 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %7, i32 0, i32 3
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %10, i32 0, i32 2
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %14 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %15 = call %struct.cfg80211_chan_def* @ieee80211_chanctx_reserved_chandef(%struct.ieee80211_local* %13, %struct.ieee80211_chanctx* %14, i32* null)
  store %struct.cfg80211_chan_def* %15, %struct.cfg80211_chan_def** %6, align 8
  %16 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %17 = icmp ne %struct.cfg80211_chan_def* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %2
  %26 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 0
  %36 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %37 = bitcast %struct.cfg80211_chan_def* %35 to i8*
  %38 = bitcast %struct.cfg80211_chan_def* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %40 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %39, i32 0)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %25, %22
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.cfg80211_chan_def* @ieee80211_chanctx_reserved_chandef(%struct.ieee80211_local*, %struct.ieee80211_chanctx*, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
