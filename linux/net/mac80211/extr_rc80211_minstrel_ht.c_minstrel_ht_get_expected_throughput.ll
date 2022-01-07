; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_get_expected_throughput.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_get_expected_throughput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i8*)* }
%struct.minstrel_ht_sta_priv = type { i32, %struct.minstrel_ht_sta }
%struct.minstrel_ht_sta = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@mac80211_minstrel = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@AVG_PKT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @minstrel_ht_get_expected_throughput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minstrel_ht_get_expected_throughput(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.minstrel_ht_sta_priv*, align 8
  %5 = alloca %struct.minstrel_ht_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.minstrel_ht_sta_priv*
  store %struct.minstrel_ht_sta_priv* %11, %struct.minstrel_ht_sta_priv** %4, align 8
  %12 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %4, align 8
  %13 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %12, i32 0, i32 1
  store %struct.minstrel_ht_sta* %13, %struct.minstrel_ht_sta** %5, align 8
  %14 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %4, align 8
  %15 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mac80211_minstrel, i32 0, i32 0), align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 %19(i8* %20)
  store i32 %21, i32* %2, align 4
  br label %62

22:                                               ; preds = %1
  %23 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %24 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MCS_GROUP_RATES, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %31 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MCS_GROUP_RATES, align 4
  %36 = srem i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %38 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta* %50, i32 %51, i32 %52, i32 %53)
  %55 = mul nsw i32 %54, 10
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @AVG_PKT_SIZE, align 4
  %58 = mul nsw i32 %56, %57
  %59 = mul nsw i32 %58, 8
  %60 = sdiv i32 %59, 1024
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %22, %18
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
