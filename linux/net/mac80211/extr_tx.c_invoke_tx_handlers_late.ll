; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_invoke_tx_handlers_late.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_invoke_tx_handlers_late.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32 }

@TX_CONTINUE = common dso_local global i64 0, align 8
@IEEE80211_TX_INTFL_RETRANSMISSION = common dso_local global i32 0, align 4
@ieee80211_tx_h_michael_mic_add = common dso_local global i32 0, align 4
@ieee80211_tx_h_sequence = common dso_local global i32 0, align 4
@ieee80211_tx_h_fragment = common dso_local global i32 0, align 4
@ieee80211_tx_h_stats = common dso_local global i32 0, align 4
@ieee80211_tx_h_encrypt = common dso_local global i32 0, align 4
@HAS_RATE_CONTROL = common dso_local global i32 0, align 4
@ieee80211_tx_h_calculate_duration = common dso_local global i32 0, align 4
@TX_DROP = common dso_local global i64 0, align 8
@TX_QUEUED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_data*)* @invoke_tx_handlers_late to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invoke_tx_handlers_late(%struct.ieee80211_tx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_tx_data*, align 8
  %4 = alloca %struct.ieee80211_tx_info*, align 8
  %5 = alloca i64, align 8
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %3, align 8
  %6 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32* %8)
  store %struct.ieee80211_tx_info* %9, %struct.ieee80211_tx_info** %4, align 8
  %10 = load i64, i64* @TX_CONTINUE, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IEEE80211_TX_INTFL_RETRANSMISSION, align 4
  %15 = and i32 %13, %14
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %19, i32 0, i32 1
  %21 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @__skb_queue_tail(i32* %20, i32* %23)
  %25 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  br label %49

27:                                               ; preds = %1
  %28 = load i32, i32* @ieee80211_tx_h_michael_mic_add, align 4
  %29 = call i32 @CALL_TXH(i32 %28)
  %30 = load i32, i32* @ieee80211_tx_h_sequence, align 4
  %31 = call i32 @CALL_TXH(i32 %30)
  %32 = load i32, i32* @ieee80211_tx_h_fragment, align 4
  %33 = call i32 @CALL_TXH(i32 %32)
  %34 = load i32, i32* @ieee80211_tx_h_stats, align 4
  %35 = call i32 @CALL_TXH(i32 %34)
  %36 = load i32, i32* @ieee80211_tx_h_encrypt, align 4
  %37 = call i32 @CALL_TXH(i32 %36)
  %38 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* @HAS_RATE_CONTROL, align 4
  %43 = call i32 @ieee80211_hw_check(i32* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %27
  %46 = load i32, i32* @ieee80211_tx_h_calculate_duration, align 4
  %47 = call i32 @CALL_TXH(i32 %46)
  br label %48

48:                                               ; preds = %45, %27
  br label %49

49:                                               ; preds = %48, %18
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @TX_DROP, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %85

56:                                               ; preds = %49
  %57 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %58 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @I802_DEBUG_INC(i32 %61)
  %63 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %56
  %68 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %69 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %73 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @ieee80211_free_txskb(i32* %71, i32* %74)
  br label %84

76:                                               ; preds = %56
  %77 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %78 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %82 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %81, i32 0, i32 1
  %83 = call i32 @ieee80211_purge_tx_queue(i32* %80, i32* %82)
  br label %84

84:                                               ; preds = %76, %67
  store i32 -1, i32* %2, align 4
  br label %101

85:                                               ; preds = %49
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* @TX_QUEUED, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %94 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @I802_DEBUG_INC(i32 %97)
  store i32 -1, i32* %2, align 4
  br label %101

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %92, %84
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, i32*) #1

declare dso_local i32 @CALL_TXH(i32) #1

declare dso_local i32 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @I802_DEBUG_INC(i32) #1

declare dso_local i32 @ieee80211_free_txskb(i32*, i32*) #1

declare dso_local i32 @ieee80211_purge_tx_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
