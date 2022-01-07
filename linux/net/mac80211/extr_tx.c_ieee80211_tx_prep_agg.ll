; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx_prep_agg.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx_prep_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.tid_ampdu_tx = type { i32, i32, i32 }

@HT_AGG_STATE_OPERATIONAL = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@HT_AGG_STATE_WANT_START = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_PS_BUFFER = common dso_local global i32 0, align 4
@WLAN_STA_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"STA %pM aid %d: SP frame queued, close the SP w/o telling the peer\0A\00", align 1
@IEEE80211_TX_INTFL_NEED_TXPROCESSING = common dso_local global i32 0, align 4
@IEEE80211_TX_TEMPORARY_FLAGS = common dso_local global i32 0, align 4
@STA_MAX_TX_BUFFER = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_data*, %struct.sk_buff*, %struct.ieee80211_tx_info*, %struct.tid_ampdu_tx*, i32)* @ieee80211_tx_prep_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tx_prep_agg(%struct.ieee80211_tx_data* %0, %struct.sk_buff* %1, %struct.ieee80211_tx_info* %2, %struct.tid_ampdu_tx* %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_tx_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.tid_ampdu_tx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %8, align 8
  store %struct.tid_ampdu_tx* %3, %struct.tid_ampdu_tx** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  %14 = load i32, i32* @HT_AGG_STATE_OPERATIONAL, align 4
  %15 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %16 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %15, i32 0, i32 2
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %21 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %22 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  store i32 1, i32* %12, align 4
  br label %153

25:                                               ; preds = %5
  %26 = load i32, i32* @HT_AGG_STATE_WANT_START, align 4
  %27 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %28 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %27, i32 0, i32 2
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %152

32:                                               ; preds = %25
  %33 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %151, label %44

44:                                               ; preds = %32
  %45 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %51 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.TYPE_11__* %52, i32 %53)
  store %struct.tid_ampdu_tx* %54, %struct.tid_ampdu_tx** %9, align 8
  %55 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %56 = icmp ne %struct.tid_ampdu_tx* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %44
  br label %135

58:                                               ; preds = %44
  %59 = load i32, i32* @HT_AGG_STATE_OPERATIONAL, align 4
  %60 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %61 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %60, i32 0, i32 2
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %66 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %67 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  store i32 1, i32* %12, align 4
  br label %134

70:                                               ; preds = %58
  store i32 1, i32* %11, align 4
  %71 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %72 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IEEE80211_TX_CTL_NO_PS_BUFFER, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %70
  %78 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %79 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %78, i32 0, i32 1
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = load i32, i32* @WLAN_STA_SP, align 4
  %82 = call i32 @clear_sta_flag(%struct.TYPE_11__* %80, i32 %81)
  %83 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %89 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %88, i32 0, i32 1
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %95 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %94, i32 0, i32 1
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ps_dbg(i32 %87, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %99)
  br label %101

101:                                              ; preds = %77, %70
  %102 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %103 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %102, i32 0, i32 2
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %107 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i32* %105, i32** %108, align 8
  %109 = load i32, i32* @IEEE80211_TX_INTFL_NEED_TXPROCESSING, align 4
  %110 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %111 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load i32, i32* @IEEE80211_TX_TEMPORARY_FLAGS, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %117 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %121 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %120, i32 0, i32 1
  %122 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %123 = call i32 @__skb_queue_tail(i32* %121, %struct.sk_buff* %122)
  %124 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %125 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %124, i32 0, i32 1
  %126 = call i64 @skb_queue_len(i32* %125)
  %127 = load i64, i64* @STA_MAX_TX_BUFFER, align 8
  %128 = icmp sgt i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %101
  %130 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %131 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %130, i32 0, i32 1
  %132 = call %struct.sk_buff* @__skb_dequeue(i32* %131)
  store %struct.sk_buff* %132, %struct.sk_buff** %13, align 8
  br label %133

133:                                              ; preds = %129, %101
  br label %134

134:                                              ; preds = %133, %64
  br label %135

135:                                              ; preds = %134, %57
  %136 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %137 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %136, i32 0, i32 1
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = call i32 @spin_unlock(i32* %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %142 = icmp ne %struct.sk_buff* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %135
  %144 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %145 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %144, i32 0, i32 0
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %149 = call i32 @ieee80211_free_txskb(i32* %147, %struct.sk_buff* %148)
  br label %150

150:                                              ; preds = %143, %135
  br label %151

151:                                              ; preds = %150, %32
  br label %152

152:                                              ; preds = %151, %31
  br label %153

153:                                              ; preds = %152, %19
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* @jiffies, align 4
  %158 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %159 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %156, %153
  %161 = load i32, i32* %11, align 4
  ret i32 %161
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @clear_sta_flag(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ps_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ieee80211_free_txskb(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
