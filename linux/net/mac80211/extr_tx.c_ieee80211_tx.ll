; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__, %struct.ieee80211_local* }
%struct.TYPE_2__ = type { i32* }
%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_data = type { i32, i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32, i32 }

@TX_DROP = common dso_local global i64 0, align 8
@TX_QUEUED = common dso_local global i64 0, align 8
@IEEE80211_TX_CTL_TX_OFFCHAN = common dso_local global i32 0, align 4
@QUEUE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.sta_info*, %struct.sk_buff*, i32, i32)* @ieee80211_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tx(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, %struct.sk_buff* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_local*, align 8
  %13 = alloca %struct.ieee80211_tx_data, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.ieee80211_tx_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %7, align 8
  store %struct.sta_info* %1, %struct.sta_info** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 1
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %19, align 8
  store %struct.ieee80211_local* %20, %struct.ieee80211_local** %12, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %21)
  store %struct.ieee80211_tx_info* %22, %struct.ieee80211_tx_info** %15, align 8
  store i32 1, i32* %16, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 10
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = call i32 @dev_kfree_skb(%struct.sk_buff* %31)
  store i32 1, i32* %6, align 4
  br label %116

33:                                               ; preds = %5
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %17, align 4
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %38 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = call i64 @ieee80211_tx_prepare(%struct.ieee80211_sub_if_data* %37, %struct.ieee80211_tx_data* %13, %struct.sta_info* %38, %struct.sk_buff* %39)
  store i64 %40, i64* %14, align 8
  %41 = load i32, i32* %11, align 4
  %42 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %13, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* @TX_DROP, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %33
  %52 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %53 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %52, i32 0, i32 0
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = call i32 @ieee80211_free_txskb(i32* %53, %struct.sk_buff* %54)
  store i32 1, i32* %6, align 4
  br label %116

56:                                               ; preds = %33
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* @TX_QUEUED, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 1, i32* %6, align 4
  br label %116

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %15, align 8
  %67 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IEEE80211_TX_CTL_TX_OFFCHAN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %74 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %73, i32 0, i32 0
  %75 = load i32, i32* @QUEUE_CONTROL, align 4
  %76 = call i32 @ieee80211_hw_check(i32* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %72, %65
  %79 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %80 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %83)
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %15, align 8
  %88 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %78, %72
  %90 = call i64 @invoke_tx_handlers_early(%struct.ieee80211_tx_data* %13)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 1, i32* %6, align 4
  br label %116

93:                                               ; preds = %89
  %94 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %95 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %96 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %13, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %13, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @ieee80211_queue_skb(%struct.ieee80211_local* %94, %struct.ieee80211_sub_if_data* %95, i32 %97, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  store i32 1, i32* %6, align 4
  br label %116

103:                                              ; preds = %93
  %104 = call i32 @invoke_tx_handlers_late(%struct.ieee80211_tx_data* %13)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %108 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %13, i32 0, i32 1
  %109 = load i32, i32* %17, align 4
  %110 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %13, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @__ieee80211_tx(%struct.ieee80211_local* %107, i32* %108, i32 %109, i32 %111, i32 %112)
  store i32 %113, i32* %16, align 4
  br label %114

114:                                              ; preds = %106, %103
  %115 = load i32, i32* %16, align 4
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %114, %102, %92, %63, %51, %30
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_tx_prepare(%struct.ieee80211_sub_if_data*, %struct.ieee80211_tx_data*, %struct.sta_info*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_free_txskb(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @invoke_tx_handlers_early(%struct.ieee80211_tx_data*) #1

declare dso_local i64 @ieee80211_queue_skb(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32, i32) #1

declare dso_local i32 @invoke_tx_handlers_late(%struct.ieee80211_tx_data*) #1

declare dso_local i32 @__ieee80211_tx(%struct.ieee80211_local*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
