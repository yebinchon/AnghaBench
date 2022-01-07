; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_get_max_amsdu_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_get_max_amsdu_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_group = type { i32*, i32 }
%struct.minstrel_ht_sta = type { i32, %struct.TYPE_8__*, i32*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@minstrel_mcs_groups = common dso_local global %struct.mcs_group* null, align 8
@IEEE80211_MAX_MPDU_LEN_HT_BA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.minstrel_ht_sta*)* @minstrel_ht_get_max_amsdu_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minstrel_ht_get_max_amsdu_len(%struct.minstrel_ht_sta* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.minstrel_ht_sta*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mcs_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.minstrel_ht_sta* %0, %struct.minstrel_ht_sta** %3, align 8
  %8 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %3, align 8
  %9 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MCS_GROUP_RATES, align 4
  %12 = sdiv i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mcs_group*, %struct.mcs_group** @minstrel_mcs_groups, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %13, i64 %15
  store %struct.mcs_group* %16, %struct.mcs_group** %5, align 8
  %17 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %3, align 8
  %18 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MCS_GROUP_RATES, align 4
  %21 = srem i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %3, align 8
  %23 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @MINSTREL_FRAC(i32 50, i32 100)
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %86

38:                                               ; preds = %1
  %39 = load %struct.mcs_group*, %struct.mcs_group** %5, align 8
  %40 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  %46 = load %struct.mcs_group*, %struct.mcs_group** %5, align 8
  %47 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @MCS_DURATION(i32 1, i32 0, i32 52)
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  store i32 500, i32* %2, align 4
  br label %86

55:                                               ; preds = %38
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @MCS_DURATION(i32 1, i32 0, i32 104)
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1600, i32* %2, align 4
  br label %86

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @MCS_DURATION(i32 1, i32 0, i32 260)
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %74, label %64

64:                                               ; preds = %60
  %65 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %3, align 8
  %66 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %3, align 8
  %67 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @minstrel_ht_get_prob_ewma(%struct.minstrel_ht_sta* %65, i32 %70)
  %72 = call i64 @MINSTREL_FRAC(i32 75, i32 100)
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64, %60
  store i32 3200, i32* %2, align 4
  br label %86

75:                                               ; preds = %64
  %76 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %3, align 8
  %77 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* @IEEE80211_MAX_MPDU_LEN_HT_BA, align 4
  store i32 %84, i32* %2, align 4
  br label %86

85:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %83, %74, %59, %54, %37
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @MCS_DURATION(i32, i32, i32) #1

declare dso_local i64 @minstrel_ht_get_prob_ewma(%struct.minstrel_ht_sta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
