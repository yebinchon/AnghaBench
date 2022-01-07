; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx_pending.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32*, %struct.TYPE_4__, i64* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_tx_pending(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.ieee80211_local*
  store %struct.ieee80211_local* %10, %struct.ieee80211_local** %3, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %12, i32 0, i32 0
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %107, %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %110

23:                                               ; preds = %16
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 3
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %23
  %33 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i64 @skb_queue_empty(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32, %23
  br label %107

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %92, %72, %42
  %44 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i64 @skb_queue_empty(i32* %49)
  %51 = icmp ne i64 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %93

53:                                               ; preds = %43
  %54 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %55 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call %struct.sk_buff* @__skb_dequeue(i32* %59)
  store %struct.sk_buff* %60, %struct.sk_buff** %7, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %61)
  store %struct.ieee80211_tx_info* %62, %struct.ieee80211_tx_info** %8, align 8
  %63 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @WARN_ON(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %53
  %73 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %74 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %73, i32 0, i32 2
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = call i32 @ieee80211_free_txskb(%struct.TYPE_4__* %74, %struct.sk_buff* %75)
  br label %43

77:                                               ; preds = %53
  %78 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %79 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %78, i32 0, i32 0
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %84 = call i32 @ieee80211_tx_pending_skb(%struct.ieee80211_local* %82, %struct.sk_buff* %83)
  store i32 %84, i32* %6, align 4
  %85 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %86 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %85, i32 0, i32 0
  %87 = load i64, i64* %4, align 8
  %88 = call i32 @spin_lock_irqsave(i32* %86, i64 %87)
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %77
  br label %93

92:                                               ; preds = %77
  br label %43

93:                                               ; preds = %91, %43
  %94 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %95 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = call i64 @skb_queue_empty(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  %103 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @ieee80211_propagate_queue_wake(%struct.ieee80211_local* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %93
  br label %107

107:                                              ; preds = %106, %41
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %16

110:                                              ; preds = %16
  %111 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %112 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %111, i32 0, i32 0
  %113 = load i64, i64* %4, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32* %112, i64 %113)
  %115 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_free_txskb(%struct.TYPE_4__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ieee80211_tx_pending_skb(%struct.ieee80211_local*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_propagate_queue_wake(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
