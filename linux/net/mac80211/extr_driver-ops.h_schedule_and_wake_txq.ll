; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_schedule_and_wake_txq.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_schedule_and_wake_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.txq_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.txq_info*)* @schedule_and_wake_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_and_wake_txq(%struct.ieee80211_local* %0, %struct.txq_info* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.txq_info*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.txq_info* %1, %struct.txq_info** %4, align 8
  %5 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %6 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %5, i32 0, i32 0
  %7 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %8 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %7, i32 0, i32 0
  %9 = call i32 @ieee80211_schedule_txq(i32* %6, i32* %8)
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %11 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %12 = call i32 @drv_wake_tx_queue(%struct.ieee80211_local* %10, %struct.txq_info* %11)
  ret void
}

declare dso_local i32 @ieee80211_schedule_txq(i32*, i32*) #1

declare dso_local i32 @drv_wake_tx_queue(%struct.ieee80211_local*, %struct.txq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
