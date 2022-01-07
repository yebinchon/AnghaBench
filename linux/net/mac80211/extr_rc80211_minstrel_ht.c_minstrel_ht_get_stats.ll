; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_rate_stats = type { i32 }
%struct.minstrel_priv = type { i64* }
%struct.minstrel_ht_sta = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.minstrel_rate_stats* }
%struct.ieee80211_tx_rate = type { i32, i32 }

@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@MINSTREL_CCK_GROUP = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.minstrel_rate_stats* (%struct.minstrel_priv*, %struct.minstrel_ht_sta*, %struct.ieee80211_tx_rate*)* @minstrel_ht_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.minstrel_rate_stats* @minstrel_ht_get_stats(%struct.minstrel_priv* %0, %struct.minstrel_ht_sta* %1, %struct.ieee80211_tx_rate* %2) #0 {
  %4 = alloca %struct.minstrel_priv*, align 8
  %5 = alloca %struct.minstrel_ht_sta*, align 8
  %6 = alloca %struct.ieee80211_tx_rate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %4, align 8
  store %struct.minstrel_ht_sta* %1, %struct.minstrel_ht_sta** %5, align 8
  store %struct.ieee80211_tx_rate* %2, %struct.ieee80211_tx_rate** %6, align 8
  %9 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %10 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %17 = call i32 @minstrel_ht_get_group_idx(%struct.ieee80211_tx_rate* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = srem i32 %20, 8
  store i32 %21, i32* %8, align 4
  br label %86

22:                                               ; preds = %3
  %23 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %31 = call i32 @minstrel_vht_get_group_idx(%struct.ieee80211_tx_rate* %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %33 = call i32 @ieee80211_rate_get_vht_mcs(%struct.ieee80211_tx_rate* %32)
  store i32 %33, i32* %8, align 4
  br label %85

34:                                               ; preds = %22
  %35 = load i32, i32* @MINSTREL_CCK_GROUP, align 4
  store i32 %35, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %58, %34
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %39 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = call i32 @ARRAY_SIZE(i64* %40)
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %36
  %44 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %49 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %47, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %61

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %36

61:                                               ; preds = %56, %36
  %62 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %63 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 4
  %71 = call i32 @BIT(i32 %70)
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %61
  %75 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %76 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IEEE80211_TX_RC_USE_SHORT_PREAMBLE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %81, %74, %61
  br label %85

85:                                               ; preds = %84, %29
  br label %86

86:                                               ; preds = %85, %15
  %87 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %88 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %94, i64 %96
  ret %struct.minstrel_rate_stats* %97
}

declare dso_local i32 @minstrel_ht_get_group_idx(%struct.ieee80211_tx_rate*) #1

declare dso_local i32 @minstrel_vht_get_group_idx(%struct.ieee80211_tx_rate*) #1

declare dso_local i32 @ieee80211_rate_get_vht_mcs(%struct.ieee80211_tx_rate*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
