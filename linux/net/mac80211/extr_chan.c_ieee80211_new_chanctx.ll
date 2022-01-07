; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_new_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_new_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_chanctx = type { i32 }
%struct.ieee80211_local = type { i32, i32, i32 }
%struct.cfg80211_chan_def = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_chanctx* (%struct.ieee80211_local*, %struct.cfg80211_chan_def*, i32)* @ieee80211_new_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_chanctx* @ieee80211_new_chanctx(%struct.ieee80211_local* %0, %struct.cfg80211_chan_def* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_chanctx*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_chanctx*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %10, i32 0, i32 2
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 1
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %17 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.ieee80211_chanctx* @ieee80211_alloc_chanctx(%struct.ieee80211_local* %16, %struct.cfg80211_chan_def* %17, i32 %18)
  store %struct.ieee80211_chanctx* %19, %struct.ieee80211_chanctx** %8, align 8
  %20 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %21 = icmp ne %struct.ieee80211_chanctx* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.ieee80211_chanctx* @ERR_PTR(i32 %24)
  store %struct.ieee80211_chanctx* %25, %struct.ieee80211_chanctx** %4, align 8
  br label %44

26:                                               ; preds = %3
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %28 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %29 = call i32 @ieee80211_add_chanctx(%struct.ieee80211_local* %27, %struct.ieee80211_chanctx* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %34 = call i32 @kfree(%struct.ieee80211_chanctx* %33)
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.ieee80211_chanctx* @ERR_PTR(i32 %35)
  store %struct.ieee80211_chanctx* %36, %struct.ieee80211_chanctx** %4, align 8
  br label %44

37:                                               ; preds = %26
  %38 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %39 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %38, i32 0, i32 0
  %40 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %40, i32 0, i32 0
  %42 = call i32 @list_add_rcu(i32* %39, i32* %41)
  %43 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  store %struct.ieee80211_chanctx* %43, %struct.ieee80211_chanctx** %4, align 8
  br label %44

44:                                               ; preds = %37, %32, %22
  %45 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  ret %struct.ieee80211_chanctx* %45
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.ieee80211_chanctx* @ieee80211_alloc_chanctx(%struct.ieee80211_local*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local %struct.ieee80211_chanctx* @ERR_PTR(i32) #1

declare dso_local i32 @ieee80211_add_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @kfree(%struct.ieee80211_chanctx*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
