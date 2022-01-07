; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_sort_best_tp_rates.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_sort_best_tp_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_sta_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.minstrel_rate_stats }
%struct.minstrel_rate_stats = type { i32 }

@MAX_THR_RATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_sta_info*, i32, i64*)* @minstrel_sort_best_tp_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_sort_best_tp_rates(%struct.minstrel_sta_info* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.minstrel_sta_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.minstrel_rate_stats*, align 8
  %9 = alloca %struct.minstrel_rate_stats*, align 8
  store %struct.minstrel_sta_info* %0, %struct.minstrel_sta_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %10 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %11 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.minstrel_rate_stats* %16, %struct.minstrel_rate_stats** %9, align 8
  %17 = load i32, i32* @MAX_THR_RATES, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %60, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %18
  %22 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %23 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.minstrel_rate_stats* %32, %struct.minstrel_rate_stats** %8, align 8
  %33 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %34 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %9, align 8
  %40 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @minstrel_get_tp_avg(%struct.TYPE_2__* %38, i32 %41)
  %43 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %44 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %51
  %53 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %8, align 8
  %54 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @minstrel_get_tp_avg(%struct.TYPE_2__* %52, i32 %55)
  %57 = icmp sle i64 %42, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %21
  br label %63

59:                                               ; preds = %21
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %7, align 4
  br label %18

63:                                               ; preds = %58, %18
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @MAX_THR_RATES, align 4
  %66 = sub nsw i32 %65, 1
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load i64*, i64** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  %74 = load i64*, i64** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i32, i32* @MAX_THR_RATES, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  %81 = sub nsw i32 %78, %80
  %82 = call i32 @memmove(i64* %73, i64* %77, i32 %81)
  br label %83

83:                                               ; preds = %68, %63
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @MAX_THR_RATES, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64*, i64** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64 %89, i64* %93, align 8
  br label %94

94:                                               ; preds = %87, %83
  ret void
}

declare dso_local i64 @minstrel_get_tp_avg(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
