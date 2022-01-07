; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_add_pending_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_add_pending_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32*, %struct.ieee80211_hw }
%struct.ieee80211_hw = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_QUEUE_STOP_REASON_SKB_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_add_pending_skbs(%struct.ieee80211_local* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %11, i32 0, i32 2
  store %struct.ieee80211_hw* %12, %struct.ieee80211_hw** %5, align 8
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  br label %17

17:                                               ; preds = %38, %33, %2
  %18 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %19 = call %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %6, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %22)
  store %struct.ieee80211_tx_info* %23, %struct.ieee80211_tx_info** %10, align 8
  %24 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 2
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %35, %struct.sk_buff* %36)
  br label %17

38:                                               ; preds = %21
  %39 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %40 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @IEEE80211_QUEUE_STOP_REASON_SKB_ADD, align 4
  %45 = call i32 @__ieee80211_stop_queue(%struct.ieee80211_hw* %42, i32 %43, i32 %44, i32 0)
  %46 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %47 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = call i32 @__skb_queue_tail(i32* %51, %struct.sk_buff* %52)
  br label %17

54:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %66, %54
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @IEEE80211_QUEUE_STOP_REASON_SKB_ADD, align 4
  %65 = call i32 @__ieee80211_wake_queue(%struct.ieee80211_hw* %62, i32 %63, i32 %64, i32 0, i64* %7)
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %55

69:                                               ; preds = %55
  %70 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %71 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %70, i32 0, i32 0
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_free_txskb(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @__ieee80211_stop_queue(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @__ieee80211_wake_queue(%struct.ieee80211_hw*, i32, i32, i32, i64*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
