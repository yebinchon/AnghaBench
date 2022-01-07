; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_update_cck.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_update_cck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_priv = type { i32*, i32 }
%struct.minstrel_ht_sta = type { i32, i32*, i32 }
%struct.ieee80211_supported_band = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_sta = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@SUPPORTS_HT_CCK_RATES = common dso_local global i32 0, align 4
@IEEE80211_RATE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@MINSTREL_CCK_GROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_priv*, %struct.minstrel_ht_sta*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*)* @minstrel_ht_update_cck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_update_cck(%struct.minstrel_priv* %0, %struct.minstrel_ht_sta* %1, %struct.ieee80211_supported_band* %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca %struct.minstrel_priv*, align 8
  %6 = alloca %struct.minstrel_ht_sta*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %5, align 8
  store %struct.minstrel_ht_sta* %1, %struct.minstrel_ht_sta** %6, align 8
  store %struct.ieee80211_supported_band* %2, %struct.ieee80211_supported_band** %7, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %8, align 8
  %10 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %11 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %85

16:                                               ; preds = %4
  %17 = load %struct.minstrel_priv*, %struct.minstrel_priv** %5, align 8
  %18 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SUPPORTS_HT_CCK_RATES, align 4
  %21 = call i32 @ieee80211_hw_check(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %85

24:                                               ; preds = %16
  %25 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %6, align 8
  %26 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %6, align 8
  %28 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %27, i32 0, i32 2
  store i32 0, i32* %28, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %73, %24
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %76

32:                                               ; preds = %29
  %33 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %34 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.minstrel_priv*, %struct.minstrel_priv** %5, align 8
  %38 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rate_supported(%struct.ieee80211_sta* %33, i64 %36, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %32
  br label %73

47:                                               ; preds = %32
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %6, align 8
  %51 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IEEE80211_RATE_SHORT_PREAMBLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %47
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @BIT(i32 %66)
  %68 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %6, align 8
  %69 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %65, %47
  br label %73

73:                                               ; preds = %72, %46
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %29

76:                                               ; preds = %29
  %77 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %6, align 8
  %78 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %6, align 8
  %81 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @MINSTREL_CCK_GROUP, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %76, %23, %15
  ret void
}

declare dso_local i32 @ieee80211_hw_check(i32, i32) #1

declare dso_local i32 @rate_supported(%struct.ieee80211_sta*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
