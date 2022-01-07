; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_txq_purge.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_txq_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32*, i32, %struct.fq }
%struct.fq = type { i32 }
%struct.txq_info = type { %struct.TYPE_2__, i32, i32, %struct.fq_tin }
%struct.TYPE_2__ = type { i64 }
%struct.fq_tin = type { i32 }

@fq_skb_free_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_txq_purge(%struct.ieee80211_local* %0, %struct.txq_info* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.txq_info*, align 8
  %5 = alloca %struct.fq*, align 8
  %6 = alloca %struct.fq_tin*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.txq_info* %1, %struct.txq_info** %4, align 8
  %7 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %7, i32 0, i32 2
  store %struct.fq* %8, %struct.fq** %5, align 8
  %9 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %10 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %9, i32 0, i32 3
  store %struct.fq_tin* %10, %struct.fq_tin** %6, align 8
  %11 = load %struct.fq*, %struct.fq** %5, align 8
  %12 = getelementptr inbounds %struct.fq, %struct.fq* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.fq*, %struct.fq** %5, align 8
  %15 = load %struct.fq_tin*, %struct.fq_tin** %6, align 8
  %16 = load i32, i32* @fq_skb_free_func, align 4
  %17 = call i32 @fq_tin_reset(%struct.fq* %14, %struct.fq_tin* %15, i32 %16)
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 1
  %20 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %21 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %20, i32 0, i32 2
  %22 = call i32 @ieee80211_purge_tx_queue(i32* %19, i32* %21)
  %23 = load %struct.fq*, %struct.fq** %5, align 8
  %24 = getelementptr inbounds %struct.fq, %struct.fq* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock_bh(i32* %24)
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %30 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = call i32 @spin_lock_bh(i32* %33)
  %35 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %36 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %35, i32 0, i32 1
  %37 = call i32 @list_del_init(i32* %36)
  %38 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.txq_info*, %struct.txq_info** %4, align 8
  %42 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = call i32 @spin_unlock_bh(i32* %45)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fq_tin_reset(%struct.fq*, %struct.fq_tin*, i32) #1

declare dso_local i32 @ieee80211_purge_tx_queue(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
