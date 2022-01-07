; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_remove_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_remove_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*)* }
%struct.ieee80211_chanctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_chanctx*)* @drv_remove_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_remove_chanctx(%struct.ieee80211_local* %0, %struct.ieee80211_chanctx* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_chanctx*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.ieee80211_chanctx* %1, %struct.ieee80211_chanctx** %4, align 8
  %5 = call i32 (...) @might_sleep()
  %6 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %17 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %18 = call i32 @trace_drv_remove_chanctx(%struct.ieee80211_local* %16, %struct.ieee80211_chanctx* %17)
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %22, align 8
  %24 = icmp ne i32 (i32*, i32*)* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %15
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %29, align 8
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %31, i32 0, i32 0
  %33 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %34 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %33, i32 0, i32 1
  %35 = call i32 %30(i32* %32, i32* %34)
  br label %36

36:                                               ; preds = %25, %15
  %37 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %38 = call i32 @trace_drv_return_void(%struct.ieee80211_local* %37)
  %39 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %14
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @trace_drv_remove_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @trace_drv_return_void(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
