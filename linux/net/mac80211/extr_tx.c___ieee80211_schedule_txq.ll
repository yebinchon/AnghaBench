; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c___ieee80211_schedule_txq.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c___ieee80211_schedule_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_txq = type { i64 }
%struct.ieee80211_local = type { i32*, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.txq_info = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@NL80211_EXT_FEATURE_AIRTIME_FAIRNESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ieee80211_schedule_txq(%struct.ieee80211_hw* %0, %struct.ieee80211_txq* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_txq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.txq_info*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_txq* %1, %struct.ieee80211_txq** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw* %9)
  store %struct.ieee80211_local* %10, %struct.ieee80211_local** %7, align 8
  %11 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %5, align 8
  %12 = call %struct.txq_info* @to_txq_info(%struct.ieee80211_txq* %11)
  store %struct.txq_info* %12, %struct.txq_info** %8, align 8
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.txq_info*, %struct.txq_info** %8, align 8
  %22 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %21, i32 0, i32 0
  %23 = call i64 @list_empty(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %76

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = load %struct.txq_info*, %struct.txq_info** %8, align 8
  %30 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %29, i32 0, i32 3
  %31 = call i32 @skb_queue_empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.txq_info*, %struct.txq_info** %8, align 8
  %35 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %33, %28, %25
  %40 = load %struct.txq_info*, %struct.txq_info** %8, align 8
  %41 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %47 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @NL80211_EXT_FEATURE_AIRTIME_FAIRNESS, align 4
  %51 = call i64 @wiphy_ext_feature_isset(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %45
  %54 = load %struct.txq_info*, %struct.txq_info** %8, align 8
  %55 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %54, i32 0, i32 0
  %56 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = call i32 @list_add(i32* %55, i32* %62)
  br label %75

64:                                               ; preds = %45, %39
  %65 = load %struct.txq_info*, %struct.txq_info** %8, align 8
  %66 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %65, i32 0, i32 0
  %67 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %68 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = call i32 @list_add_tail(i32* %66, i32* %73)
  br label %75

75:                                               ; preds = %64, %53
  br label %76

76:                                               ; preds = %75, %33, %3
  %77 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %78 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = call i32 @spin_unlock_bh(i32* %83)
  ret void
}

declare dso_local %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw*) #1

declare dso_local %struct.txq_info* @to_txq_info(%struct.ieee80211_txq*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @wiphy_ext_feature_isset(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
