; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_clear_fast_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_clear_fast_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, i32 }
%struct.ieee80211_fast_tx = type { i32 }

@rcu_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_clear_fast_xmit(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.ieee80211_fast_tx*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %4 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %5 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %4, i32 0, i32 0
  %6 = call i32 @spin_lock_bh(i32* %5)
  %7 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %8 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %11 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %10, i32 0, i32 0
  %12 = call i32 @lockdep_is_held(i32* %11)
  %13 = call %struct.ieee80211_fast_tx* @rcu_dereference_protected(i32 %9, i32 %12)
  store %struct.ieee80211_fast_tx* %13, %struct.ieee80211_fast_tx** %3, align 8
  %14 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @RCU_INIT_POINTER(i32 %16, i32* null)
  %18 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock_bh(i32* %19)
  %21 = load %struct.ieee80211_fast_tx*, %struct.ieee80211_fast_tx** %3, align 8
  %22 = icmp ne %struct.ieee80211_fast_tx* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.ieee80211_fast_tx*, %struct.ieee80211_fast_tx** %3, align 8
  %25 = load i32, i32* @rcu_head, align 4
  %26 = call i32 @kfree_rcu(%struct.ieee80211_fast_tx* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ieee80211_fast_tx* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.ieee80211_fast_tx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
