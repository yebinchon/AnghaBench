; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_txq_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_txq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__** }
%struct.sta_info = type { %struct.TYPE_7__ }
%struct.txq_info = type { %struct.TYPE_8__, i32, i32, i32, i32, i32, i32 }

@IEEE80211_AC_BE = common dso_local global i32 0, align 4
@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@STA_MMPDU_TXQ = common dso_local global i32 0, align 4
@BUFF_MMPDU_TXQ = common dso_local global i32 0, align 4
@IEEE80211_AC_VO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_txq_init(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, %struct.txq_info* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.txq_info*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store %struct.txq_info* %2, %struct.txq_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.txq_info*, %struct.txq_info** %7, align 8
  %10 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %9, i32 0, i32 6
  %11 = call i32 @fq_tin_init(i32* %10)
  %12 = load %struct.txq_info*, %struct.txq_info** %7, align 8
  %13 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %12, i32 0, i32 5
  %14 = call i32 @fq_flow_init(i32* %13)
  %15 = load %struct.txq_info*, %struct.txq_info** %7, align 8
  %16 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %15, i32 0, i32 4
  %17 = call i32 @codel_vars_init(i32* %16)
  %18 = load %struct.txq_info*, %struct.txq_info** %7, align 8
  %19 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %18, i32 0, i32 3
  %20 = call i32 @codel_stats_init(i32* %19)
  %21 = load %struct.txq_info*, %struct.txq_info** %7, align 8
  %22 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %21, i32 0, i32 2
  %23 = call i32 @__skb_queue_head_init(i32* %22)
  %24 = load %struct.txq_info*, %struct.txq_info** %7, align 8
  %25 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %24, i32 0, i32 1
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 1
  %29 = load %struct.txq_info*, %struct.txq_info** %7, align 8
  %30 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %31, align 8
  %32 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %33 = icmp ne %struct.sta_info* %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %4
  %35 = load %struct.txq_info*, %struct.txq_info** %7, align 8
  %36 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %35, i32 0, i32 0
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %39, align 8
  %40 = load %struct.txq_info*, %struct.txq_info** %7, align 8
  %41 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load i32, i32* @IEEE80211_AC_BE, align 4
  %44 = load %struct.txq_info*, %struct.txq_info** %7, align 8
  %45 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  br label %108

47:                                               ; preds = %4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %83

51:                                               ; preds = %47
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* @STA_MMPDU_TXQ, align 4
  %64 = call i32 @ieee80211_hw_check(i32* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  br label %108

67:                                               ; preds = %58
  br label %78

68:                                               ; preds = %51
  %69 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* @BUFF_MMPDU_TXQ, align 4
  %74 = call i32 @ieee80211_hw_check(i32* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  br label %108

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %67
  %79 = load i32, i32* @IEEE80211_AC_VO, align 4
  %80 = load %struct.txq_info*, %struct.txq_info** %7, align 8
  %81 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 8
  br label %89

83:                                               ; preds = %47
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @ieee80211_ac_from_tid(i32 %84)
  %86 = load %struct.txq_info*, %struct.txq_info** %7, align 8
  %87 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 8
  br label %89

89:                                               ; preds = %83, %78
  %90 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %91 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %90, i32 0, i32 0
  %92 = load %struct.txq_info*, %struct.txq_info** %7, align 8
  %93 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  store %struct.TYPE_7__* %91, %struct.TYPE_7__** %94, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.txq_info*, %struct.txq_info** %7, align 8
  %97 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.txq_info*, %struct.txq_info** %7, align 8
  %100 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %99, i32 0, i32 0
  %101 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %102 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %104, i64 %106
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %107, align 8
  br label %108

108:                                              ; preds = %89, %76, %66, %34
  ret void
}

declare dso_local i32 @fq_tin_init(i32*) #1

declare dso_local i32 @fq_flow_init(i32*) #1

declare dso_local i32 @codel_vars_init(i32*) #1

declare dso_local i32 @codel_stats_init(i32*) #1

declare dso_local i32 @__skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @ieee80211_ac_from_tid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
