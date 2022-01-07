; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_add_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_add_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_chanctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.ieee80211_chanctx*)* @ieee80211_add_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_add_chanctx(%struct.ieee80211_local* %0, %struct.ieee80211_chanctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_chanctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.ieee80211_chanctx* %1, %struct.ieee80211_chanctx** %5, align 8
  %8 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %8, i32 0, i32 4
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %11, i32 0, i32 3
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  br label %27

27:                                               ; preds = %18, %2
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %29 = call i64 @ieee80211_idle_off(%struct.ieee80211_local* %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %33, i64 %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %49 = load i64, i64* @IEEE80211_CONF_CHANGE_CHANNEL, align 8
  %50 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %48, i64 %49)
  br label %62

51:                                               ; preds = %36
  %52 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %53 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %54 = call i32 @drv_add_chanctx(%struct.ieee80211_local* %52, %struct.ieee80211_chanctx* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %59 = call i32 @ieee80211_recalc_idle(%struct.ieee80211_local* %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %41
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %57
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @ieee80211_idle_off(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i64) #1

declare dso_local i32 @drv_add_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @ieee80211_recalc_idle(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
