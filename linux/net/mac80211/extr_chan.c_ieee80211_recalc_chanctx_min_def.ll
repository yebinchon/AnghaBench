; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_recalc_chanctx_min_def.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_recalc_chanctx_min_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.ieee80211_chanctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i64 }
%struct.cfg80211_chan_def = type { i64 }

@NL80211_CHAN_WIDTH_5 = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_10 = common dso_local global i64 0, align 8
@IEEE80211_CHANCTX_CHANGE_MIN_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_recalc_chanctx_min_def(%struct.ieee80211_local* %0, %struct.ieee80211_chanctx* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_chanctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_chan_def, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.ieee80211_chanctx* %1, %struct.ieee80211_chanctx** %4, align 8
  %7 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %7, i32 0, i32 0
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NL80211_CHAN_WIDTH_5, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_CHAN_WIDTH_10, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %17
  %26 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25, %17, %2
  %32 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = bitcast %struct.cfg80211_chan_def* %34 to i8*
  %39 = bitcast %struct.cfg80211_chan_def* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 8, i1 false)
  br label %81

40:                                               ; preds = %25
  %41 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %42 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %42, i32 0, i32 1
  %44 = call i32 @ieee80211_get_chanctx_max_required_bw(%struct.ieee80211_local* %41, %struct.TYPE_2__* %43)
  store i32 %44, i32* %5, align 4
  %45 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = bitcast %struct.cfg80211_chan_def* %6 to i8*
  %49 = bitcast %struct.cfg80211_chan_def* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 8, i1 false)
  br label %50

50:                                               ; preds = %56, %40
  %51 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %6, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = icmp sgt i64 %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 @ieee80211_chandef_downgrade(%struct.cfg80211_chan_def* %6)
  br label %50

58:                                               ; preds = %50
  %59 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i64 @cfg80211_chandef_identical(%struct.cfg80211_chan_def* %61, %struct.cfg80211_chan_def* %6)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %81

65:                                               ; preds = %58
  %66 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = bitcast %struct.cfg80211_chan_def* %68 to i8*
  %70 = bitcast %struct.cfg80211_chan_def* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 8, i1 false)
  %71 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  br label %81

76:                                               ; preds = %65
  %77 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %78 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %79 = load i32, i32* @IEEE80211_CHANCTX_CHANGE_MIN_WIDTH, align 4
  %80 = call i32 @drv_change_chanctx(%struct.ieee80211_local* %77, %struct.ieee80211_chanctx* %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %75, %64, %31
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ieee80211_get_chanctx_max_required_bw(%struct.ieee80211_local*, %struct.TYPE_2__*) #1

declare dso_local i32 @ieee80211_chandef_downgrade(%struct.cfg80211_chan_def*) #1

declare dso_local i64 @cfg80211_chandef_identical(%struct.cfg80211_chan_def*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @drv_change_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
