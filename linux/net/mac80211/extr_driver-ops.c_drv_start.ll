; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.c_drv_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.c_drv_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*)* }

@EALREADY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drv_start(%struct.ieee80211_local* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  %5 = call i32 (...) @might_sleep()
  %6 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EALREADY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %16 = call i32 @trace_drv_start(%struct.ieee80211_local* %15)
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = call i32 (...) @smp_mb()
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32*)*, i32 (i32*)** %23, align 8
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %25, i32 0, i32 1
  %27 = call i32 %24(i32* %26)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @trace_drv_return_int(%struct.ieee80211_local* %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %14
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %14
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @trace_drv_start(%struct.ieee80211_local*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @trace_drv_return_int(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
