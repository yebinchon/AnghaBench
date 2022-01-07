; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_sched_scan_end.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_sched_scan_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_sched_scan_end(%struct.ieee80211_local* %0) #0 {
  %2 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %2, align 8
  %3 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @rcu_access_pointer(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %12, i32 0, i32 1
  %14 = call i32 @mutex_unlock(i32* %13)
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @RCU_INIT_POINTER(i32 %18, i32* null)
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @RCU_INIT_POINTER(i32 %22, i32* null)
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 1
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %28 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cfg80211_sched_scan_stopped(i32 %30, i32 0)
  br label %32

32:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @cfg80211_sched_scan_stopped(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
