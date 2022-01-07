; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_clear_fast_rx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_clear_fast_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, i32 }
%struct.ieee80211_fast_rx = type { i32 }

@rcu_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_clear_fast_rx(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.ieee80211_fast_rx*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %4 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %5 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %4, i32 0, i32 0
  %6 = call i32 @spin_lock_bh(i32* %5)
  %7 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %8 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ieee80211_fast_rx* @rcu_dereference_protected(i32 %9, i32 1)
  store %struct.ieee80211_fast_rx* %10, %struct.ieee80211_fast_rx** %3, align 8
  %11 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %12 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @RCU_INIT_POINTER(i32 %13, i32* null)
  %15 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock_bh(i32* %16)
  %18 = load %struct.ieee80211_fast_rx*, %struct.ieee80211_fast_rx** %3, align 8
  %19 = icmp ne %struct.ieee80211_fast_rx* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.ieee80211_fast_rx*, %struct.ieee80211_fast_rx** %3, align 8
  %22 = load i32, i32* @rcu_head, align 4
  %23 = call i32 @kfree_rcu(%struct.ieee80211_fast_rx* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ieee80211_fast_rx* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.ieee80211_fast_rx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
