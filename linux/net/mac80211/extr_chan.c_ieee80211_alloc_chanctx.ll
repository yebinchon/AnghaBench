; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_alloc_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_alloc_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_chanctx = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.cfg80211_chan_def }
%struct.cfg80211_chan_def = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_chanctx* (%struct.ieee80211_local*, %struct.cfg80211_chan_def*, i32)* @ieee80211_alloc_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_chanctx* @ieee80211_alloc_chanctx(%struct.ieee80211_local* %0, %struct.cfg80211_chan_def* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_chanctx*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_chanctx*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %9, i32 0, i32 1
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 28, %15
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ieee80211_chanctx* @kzalloc(i64 %16, i32 %17)
  store %struct.ieee80211_chanctx* %18, %struct.ieee80211_chanctx** %8, align 8
  %19 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %20 = icmp ne %struct.ieee80211_chanctx* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store %struct.ieee80211_chanctx* null, %struct.ieee80211_chanctx** %4, align 8
  br label %51

22:                                               ; preds = %3
  %23 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %23, i32 0, i32 3
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %27 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %26, i32 0, i32 2
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %33 = bitcast %struct.cfg80211_chan_def* %31 to i8*
  %34 = bitcast %struct.cfg80211_chan_def* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %39 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %43 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %45 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 0, i32* %46, align 4
  %47 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %48 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %49 = call i32 @ieee80211_recalc_chanctx_min_def(%struct.ieee80211_local* %47, %struct.ieee80211_chanctx* %48)
  %50 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  store %struct.ieee80211_chanctx* %50, %struct.ieee80211_chanctx** %4, align 8
  br label %51

51:                                               ; preds = %22, %21
  %52 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  ret %struct.ieee80211_chanctx* %52
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.ieee80211_chanctx* @kzalloc(i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ieee80211_recalc_chanctx_min_def(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
