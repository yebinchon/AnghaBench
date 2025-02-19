; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_ieee80211_i.h_txq_has_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_ieee80211_i.h_txq_has_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_txq = type { i32 }
%struct.txq_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_txq*)* @txq_has_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txq_has_queue(%struct.ieee80211_txq* %0) #0 {
  %2 = alloca %struct.ieee80211_txq*, align 8
  %3 = alloca %struct.txq_info*, align 8
  store %struct.ieee80211_txq* %0, %struct.ieee80211_txq** %2, align 8
  %4 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %2, align 8
  %5 = call %struct.txq_info* @to_txq_info(%struct.ieee80211_txq* %4)
  store %struct.txq_info* %5, %struct.txq_info** %3, align 8
  %6 = load %struct.txq_info*, %struct.txq_info** %3, align 8
  %7 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %6, i32 0, i32 1
  %8 = call i64 @skb_queue_empty(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.txq_info*, %struct.txq_info** %3, align 8
  %12 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi i1 [ false, %1 ], [ %16, %10 ]
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local %struct.txq_info* @to_txq_info(%struct.ieee80211_txq*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
