; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_txq_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_txq_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.fq }
%struct.fq = type { i32 }
%struct.txq_info = type { %struct.fq_tin }
%struct.fq_tin = type { i32 }
%struct.sk_buff = type { i32 }

@fq_skb_free_func = common dso_local global i32 0, align 4
@fq_flow_get_default_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.txq_info*, %struct.sk_buff*)* @ieee80211_txq_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_txq_enqueue(%struct.ieee80211_local* %0, %struct.txq_info* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.txq_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.fq*, align 8
  %8 = alloca %struct.fq_tin*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.txq_info* %1, %struct.txq_info** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %10, i32 0, i32 0
  store %struct.fq* %11, %struct.fq** %7, align 8
  %12 = load %struct.txq_info*, %struct.txq_info** %5, align 8
  %13 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %12, i32 0, i32 0
  store %struct.fq_tin* %13, %struct.fq_tin** %8, align 8
  %14 = load %struct.fq*, %struct.fq** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i32 @fq_flow_idx(%struct.fq* %14, %struct.sk_buff* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @ieee80211_set_skb_enqueue_time(%struct.sk_buff* %17)
  %19 = load %struct.fq*, %struct.fq** %7, align 8
  %20 = getelementptr inbounds %struct.fq, %struct.fq* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load %struct.fq*, %struct.fq** %7, align 8
  %23 = load %struct.fq_tin*, %struct.fq_tin** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = load i32, i32* @fq_skb_free_func, align 4
  %27 = load i32, i32* @fq_flow_get_default_func, align 4
  %28 = call i32 @fq_tin_enqueue(%struct.fq* %22, %struct.fq_tin* %23, i32 %24, %struct.sk_buff* %25, i32 %26, i32 %27)
  %29 = load %struct.fq*, %struct.fq** %7, align 8
  %30 = getelementptr inbounds %struct.fq, %struct.fq* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  ret void
}

declare dso_local i32 @fq_flow_idx(%struct.fq*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_set_skb_enqueue_time(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fq_tin_enqueue(%struct.fq*, %struct.fq_tin*, i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
