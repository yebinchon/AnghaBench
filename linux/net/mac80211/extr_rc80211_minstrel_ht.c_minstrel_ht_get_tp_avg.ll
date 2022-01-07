; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_get_tp_avg.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_get_tp_avg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }
%struct.minstrel_ht_sta = type { i32 }

@MINSTREL_CCK_GROUP = common dso_local global i32 0, align 4
@minstrel_mcs_groups = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.minstrel_ht_sta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.minstrel_ht_sta* %0, %struct.minstrel_ht_sta** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = call i32 @MINSTREL_FRAC(i32 10, i32 100)
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %64

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MINSTREL_CCK_GROUP, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %6, align 8
  %21 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 1000, %22
  %24 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %6, align 8
  %25 = call i32 @minstrel_ht_avg_ampdu_len(%struct.minstrel_ht_sta* %24)
  %26 = sdiv i32 %23, %25
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %19, %15
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @minstrel_mcs_groups, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @minstrel_mcs_groups, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 %37, %43
  %45 = load i32, i32* %10, align 4
  %46 = add i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @MINSTREL_FRAC(i32 90, i32 100)
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %27
  %51 = call i32 @MINSTREL_FRAC(i32 90, i32 100)
  %52 = mul nsw i32 %51, 1000
  %53 = load i32, i32* %10, align 4
  %54 = udiv i32 %52, %53
  %55 = mul i32 100000, %54
  %56 = call i32 @MINSTREL_TRUNC(i32 %55)
  store i32 %56, i32* %5, align 4
  br label %64

57:                                               ; preds = %27
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %58, 1000
  %60 = load i32, i32* %10, align 4
  %61 = udiv i32 %59, %60
  %62 = mul i32 100000, %61
  %63 = call i32 @MINSTREL_TRUNC(i32 %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %57, %50, %14
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @minstrel_ht_avg_ampdu_len(%struct.minstrel_ht_sta*) #1

declare dso_local i32 @MINSTREL_TRUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
