; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_init_cck_rates.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_init_cck_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_priv = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@minstrel_ht_init_cck_rates.bitrates = internal constant [4 x i32] [i32 10, i32 20, i32 55, i32 110], align 16
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_RATE_ERP_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_priv*)* @minstrel_ht_init_cck_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_init_cck_rates(%struct.minstrel_priv* %0) #0 {
  %2 = alloca %struct.minstrel_priv*, align 8
  %3 = alloca %struct.ieee80211_supported_band*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_rate*, align 8
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %2, align 8
  %8 = load %struct.minstrel_priv*, %struct.minstrel_priv** %2, align 8
  %9 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @ieee80211_chandef_rate_flags(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.minstrel_priv*, %struct.minstrel_priv** %2, align 8
  %15 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %19, align 8
  %21 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %22 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %20, i64 %21
  %23 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %22, align 8
  store %struct.ieee80211_supported_band* %23, %struct.ieee80211_supported_band** %3, align 8
  %24 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %25 = icmp ne %struct.ieee80211_supported_band* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %92

27:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %89, %27
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %92

34:                                               ; preds = %28
  %35 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %35, i32 0, i32 1
  %37 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %37, i64 %39
  store %struct.ieee80211_rate* %40, %struct.ieee80211_rate** %7, align 8
  %41 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %7, align 8
  %42 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IEEE80211_RATE_ERP_G, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %89

48:                                               ; preds = %34
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %51 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %50, i32 0, i32 1
  %52 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %52, i64 %54
  %56 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %49, %57
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %89

62:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %85, %62
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @minstrel_ht_init_cck_rates.bitrates, i64 0, i64 0))
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %7, align 8
  %69 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* @minstrel_ht_init_cck_rates.bitrates, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %70, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %85

77:                                               ; preds = %67
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.minstrel_priv*, %struct.minstrel_priv** %2, align 8
  %80 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  br label %88

85:                                               ; preds = %76
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %63

88:                                               ; preds = %77, %63
  br label %89

89:                                               ; preds = %88, %61, %47
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %28

92:                                               ; preds = %26, %28
  ret void
}

declare dso_local i32 @ieee80211_chandef_rate_flags(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
