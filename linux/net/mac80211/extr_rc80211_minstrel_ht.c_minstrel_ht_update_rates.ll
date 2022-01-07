; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_update_rates.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_update_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.minstrel_ht_sta = type { i64, %struct.TYPE_6__*, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_sta_rates = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MINSTREL_SAMPLE_ACTIVE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_priv*, %struct.minstrel_ht_sta*)* @minstrel_ht_update_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_update_rates(%struct.minstrel_priv* %0, %struct.minstrel_ht_sta* %1) #0 {
  %3 = alloca %struct.minstrel_priv*, align 8
  %4 = alloca %struct.minstrel_ht_sta*, align 8
  %5 = alloca %struct.ieee80211_sta_rates*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %3, align 8
  store %struct.minstrel_ht_sta* %1, %struct.minstrel_ht_sta** %4, align 8
  %8 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %9 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %14 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MINSTREL_SAMPLE_ACTIVE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %20 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.ieee80211_sta_rates* @kzalloc(i32 8, i32 %23)
  store %struct.ieee80211_sta_rates* %24, %struct.ieee80211_sta_rates** %5, align 8
  %25 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %26 = icmp ne %struct.ieee80211_sta_rates* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %93

28:                                               ; preds = %22
  %29 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %30 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %31 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @minstrel_ht_set_rate(%struct.minstrel_priv* %29, %struct.minstrel_ht_sta* %30, %struct.ieee80211_sta_rates* %31, i32 %32, i32 %34)
  %36 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %37 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %40, 3
  br i1 %41, label %42, label %54

42:                                               ; preds = %28
  %43 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %44 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %45 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %49 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @minstrel_ht_set_rate(%struct.minstrel_priv* %43, %struct.minstrel_ht_sta* %44, %struct.ieee80211_sta_rates* %45, i32 %46, i32 %52)
  br label %54

54:                                               ; preds = %42, %28
  %55 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %56 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %59, 2
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %63 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %64 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  %67 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %68 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @minstrel_ht_set_rate(%struct.minstrel_priv* %62, %struct.minstrel_ht_sta* %63, %struct.ieee80211_sta_rates* %64, i32 %65, i32 %69)
  br label %71

71:                                               ; preds = %61, %54
  %72 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %73 = call i32 @minstrel_ht_get_max_amsdu_len(%struct.minstrel_ht_sta* %72)
  %74 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %75 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 4
  %78 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %79 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 -1, i32* %84, align 4
  %85 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %86 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %89 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %5, align 8
  %92 = call i32 @rate_control_set_rates(%struct.TYPE_5__* %87, %struct.TYPE_6__* %90, %struct.ieee80211_sta_rates* %91)
  br label %93

93:                                               ; preds = %71, %27
  ret void
}

declare dso_local %struct.ieee80211_sta_rates* @kzalloc(i32, i32) #1

declare dso_local i32 @minstrel_ht_set_rate(%struct.minstrel_priv*, %struct.minstrel_ht_sta*, %struct.ieee80211_sta_rates*, i32, i32) #1

declare dso_local i32 @minstrel_ht_get_max_amsdu_len(%struct.minstrel_ht_sta*) #1

declare dso_local i32 @rate_control_set_rates(%struct.TYPE_5__*, %struct.TYPE_6__*, %struct.ieee80211_sta_rates*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
