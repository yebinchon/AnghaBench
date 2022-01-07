; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_txstat_valid.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_txstat_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_priv = type { i64* }
%struct.ieee80211_tx_rate = type { i64, i32, i32 }

@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.minstrel_priv*, %struct.ieee80211_tx_rate*)* @minstrel_ht_txstat_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minstrel_ht_txstat_valid(%struct.minstrel_priv* %0, %struct.ieee80211_tx_rate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.minstrel_priv*, align 8
  %5 = alloca %struct.ieee80211_tx_rate*, align 8
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %4, align 8
  store %struct.ieee80211_tx_rate* %1, %struct.ieee80211_tx_rate** %5, align 8
  %6 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %7 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %75

17:                                               ; preds = %11
  %18 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %17
  store i32 1, i32* %3, align 4
  br label %75

32:                                               ; preds = %24
  %33 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %37 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %35, %40
  br i1 %41, label %72, label %42

42:                                               ; preds = %32
  %43 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %47 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %45, %50
  br i1 %51, label %72, label %52

52:                                               ; preds = %42
  %53 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %57 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %55, %60
  br i1 %61, label %72, label %62

62:                                               ; preds = %52
  %63 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %67 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %65, %70
  br label %72

72:                                               ; preds = %62, %52, %42, %32
  %73 = phi i1 [ true, %52 ], [ true, %42 ], [ true, %32 ], [ %71, %62 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %31, %16, %10
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
