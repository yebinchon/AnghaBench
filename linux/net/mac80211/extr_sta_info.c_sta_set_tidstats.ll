; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_sta_set_tidstats.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_sta_set_tidstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.ieee80211_local* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.ieee80211_local = type { %struct.TYPE_12__, %struct.TYPE_10__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.cfg80211_tid_stats = type { i32, i32, i32, i32, i32, i32 }

@NL80211_TID_STATS_RX_MSDU = common dso_local global i32 0, align 4
@NL80211_TID_STATS_TX_MSDU = common dso_local global i32 0, align 4
@NL80211_TID_STATS_TX_MSDU_RETRIES = common dso_local global i32 0, align 4
@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@NL80211_TID_STATS_TX_MSDU_FAILED = common dso_local global i32 0, align 4
@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4
@NL80211_TID_STATS_TXQ_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*, %struct.cfg80211_tid_stats*, i32)* @sta_set_tidstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta_set_tidstats(%struct.sta_info* %0, %struct.cfg80211_tid_stats* %1, i32 %2) #0 {
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.cfg80211_tid_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %4, align 8
  store %struct.cfg80211_tid_stats* %1, %struct.cfg80211_tid_stats** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 4
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  store %struct.ieee80211_local* %11, %struct.ieee80211_local** %7, align 8
  %12 = load %struct.cfg80211_tid_stats*, %struct.cfg80211_tid_stats** %5, align 8
  %13 = getelementptr inbounds %struct.cfg80211_tid_stats, %struct.cfg80211_tid_stats* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NL80211_TID_STATS_RX_MSDU, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %49, label %19

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %35, %19
  %21 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = call i32 @u64_stats_fetch_begin(i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cfg80211_tid_stats*, %struct.cfg80211_tid_stats** %5, align 8
  %34 = getelementptr inbounds %struct.cfg80211_tid_stats, %struct.cfg80211_tid_stats* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %20
  %36 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %37 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @u64_stats_fetch_retry(i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %20, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @NL80211_TID_STATS_RX_MSDU, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = load %struct.cfg80211_tid_stats*, %struct.cfg80211_tid_stats** %5, align 8
  %46 = getelementptr inbounds %struct.cfg80211_tid_stats, %struct.cfg80211_tid_stats* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %3
  %50 = load %struct.cfg80211_tid_stats*, %struct.cfg80211_tid_stats** %5, align 8
  %51 = getelementptr inbounds %struct.cfg80211_tid_stats, %struct.cfg80211_tid_stats* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NL80211_TID_STATS_TX_MSDU, align 4
  %54 = call i32 @BIT(i32 %53)
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @NL80211_TID_STATS_TX_MSDU, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = load %struct.cfg80211_tid_stats*, %struct.cfg80211_tid_stats** %5, align 8
  %61 = getelementptr inbounds %struct.cfg80211_tid_stats, %struct.cfg80211_tid_stats* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %65 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cfg80211_tid_stats*, %struct.cfg80211_tid_stats** %5, align 8
  %73 = getelementptr inbounds %struct.cfg80211_tid_stats, %struct.cfg80211_tid_stats* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %57, %49
  %75 = load %struct.cfg80211_tid_stats*, %struct.cfg80211_tid_stats** %5, align 8
  %76 = getelementptr inbounds %struct.cfg80211_tid_stats, %struct.cfg80211_tid_stats* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @NL80211_TID_STATS_TX_MSDU_RETRIES, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %105, label %82

82:                                               ; preds = %74
  %83 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %84 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %83, i32 0, i32 2
  %85 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %86 = call i64 @ieee80211_hw_check(i32* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = load i32, i32* @NL80211_TID_STATS_TX_MSDU_RETRIES, align 4
  %90 = call i32 @BIT(i32 %89)
  %91 = load %struct.cfg80211_tid_stats*, %struct.cfg80211_tid_stats** %5, align 8
  %92 = getelementptr inbounds %struct.cfg80211_tid_stats, %struct.cfg80211_tid_stats* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %96 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.cfg80211_tid_stats*, %struct.cfg80211_tid_stats** %5, align 8
  %104 = getelementptr inbounds %struct.cfg80211_tid_stats, %struct.cfg80211_tid_stats* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %88, %82, %74
  %106 = load %struct.cfg80211_tid_stats*, %struct.cfg80211_tid_stats** %5, align 8
  %107 = getelementptr inbounds %struct.cfg80211_tid_stats, %struct.cfg80211_tid_stats* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @NL80211_TID_STATS_TX_MSDU_FAILED, align 4
  %110 = call i32 @BIT(i32 %109)
  %111 = and i32 %108, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %136, label %113

113:                                              ; preds = %105
  %114 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %115 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %114, i32 0, i32 2
  %116 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %117 = call i64 @ieee80211_hw_check(i32* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %113
  %120 = load i32, i32* @NL80211_TID_STATS_TX_MSDU_FAILED, align 4
  %121 = call i32 @BIT(i32 %120)
  %122 = load %struct.cfg80211_tid_stats*, %struct.cfg80211_tid_stats** %5, align 8
  %123 = getelementptr inbounds %struct.cfg80211_tid_stats, %struct.cfg80211_tid_stats* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %127 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.cfg80211_tid_stats*, %struct.cfg80211_tid_stats** %5, align 8
  %135 = getelementptr inbounds %struct.cfg80211_tid_stats, %struct.cfg80211_tid_stats* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %119, %113, %105
  %137 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %138 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %137, i32 0, i32 1
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %176

143:                                              ; preds = %136
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %176

147:                                              ; preds = %143
  %148 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %149 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = call i32 @spin_lock_bh(i32* %150)
  %152 = call i32 (...) @rcu_read_lock()
  %153 = load i32, i32* @NL80211_TID_STATS_TXQ_STATS, align 4
  %154 = call i32 @BIT(i32 %153)
  %155 = load %struct.cfg80211_tid_stats*, %struct.cfg80211_tid_stats** %5, align 8
  %156 = getelementptr inbounds %struct.cfg80211_tid_stats, %struct.cfg80211_tid_stats* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load %struct.cfg80211_tid_stats*, %struct.cfg80211_tid_stats** %5, align 8
  %160 = getelementptr inbounds %struct.cfg80211_tid_stats, %struct.cfg80211_tid_stats* %159, i32 0, i32 1
  %161 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %162 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @to_txq_info(i32 %168)
  %170 = call i32 @ieee80211_fill_txq_stats(i32* %160, i32 %169)
  %171 = call i32 (...) @rcu_read_unlock()
  %172 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %173 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = call i32 @spin_unlock_bh(i32* %174)
  br label %176

176:                                              ; preds = %147, %143, %136
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @u64_stats_fetch_begin(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry(i32*, i32) #1

declare dso_local i64 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ieee80211_fill_txq_stats(i32*, i32) #1

declare dso_local i32 @to_txq_info(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
