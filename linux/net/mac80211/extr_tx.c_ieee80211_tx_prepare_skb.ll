; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx_prepare_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx_prepare_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32* }
%struct.sk_buff = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_tx_info = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ieee80211_vif* }
%struct.ieee80211_tx_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ieee80211_sta }

@TX_DROP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_tx_prepare_skb(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.sk_buff* %2, i32 %3, %struct.ieee80211_sta** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_sta**, align 8
  %12 = alloca %struct.ieee80211_sub_if_data*, align 8
  %13 = alloca %struct.ieee80211_tx_info*, align 8
  %14 = alloca %struct.ieee80211_tx_data, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ieee80211_sta** %4, %struct.ieee80211_sta*** %11, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %17 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %16)
  store %struct.ieee80211_sub_if_data* %17, %struct.ieee80211_sub_if_data** %12, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %18)
  store %struct.ieee80211_tx_info* %19, %struct.ieee80211_tx_info** %13, align 8
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = call i64 @ieee80211_tx_prepare(%struct.ieee80211_sub_if_data* %20, %struct.ieee80211_tx_data* %14, i32* null, %struct.sk_buff* %21)
  %23 = load i64, i64* @TX_DROP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %85

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %31 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store %struct.ieee80211_vif* %30, %struct.ieee80211_vif** %33, align 8
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %35 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %37)
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %42 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = call i64 @invoke_tx_handlers(%struct.ieee80211_tx_data* %14)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %85

46:                                               ; preds = %26
  %47 = load %struct.ieee80211_sta**, %struct.ieee80211_sta*** %11, align 8
  %48 = icmp ne %struct.ieee80211_sta** %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %14, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %14, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.ieee80211_sta**, %struct.ieee80211_sta*** %11, align 8
  store %struct.ieee80211_sta* %56, %struct.ieee80211_sta** %57, align 8
  br label %60

58:                                               ; preds = %49
  %59 = load %struct.ieee80211_sta**, %struct.ieee80211_sta*** %11, align 8
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %59, align 8
  br label %60

60:                                               ; preds = %58, %53
  br label %61

61:                                               ; preds = %60, %46
  %62 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %14, i32 0, i32 0
  %63 = call %struct.sk_buff* @__skb_dequeue(i32* %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %15, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = icmp ne %struct.sk_buff* %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %14, i32 0, i32 0
  %69 = call i32 @skb_queue_empty(i32* %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  br label %72

72:                                               ; preds = %67, %61
  %73 = phi i1 [ true, %61 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  %75 = call i64 @WARN_ON(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %80 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %78, %struct.sk_buff* %79)
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %82 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %14, i32 0, i32 0
  %83 = call i32 @ieee80211_purge_tx_queue(%struct.ieee80211_hw* %81, i32* %82)
  store i32 0, i32* %6, align 4
  br label %85

84:                                               ; preds = %72
  store i32 1, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %77, %45, %25
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_tx_prepare(%struct.ieee80211_sub_if_data*, %struct.ieee80211_tx_data*, i32*, %struct.sk_buff*) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @invoke_tx_handlers(%struct.ieee80211_tx_data*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @ieee80211_free_txskb(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_purge_tx_queue(%struct.ieee80211_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
