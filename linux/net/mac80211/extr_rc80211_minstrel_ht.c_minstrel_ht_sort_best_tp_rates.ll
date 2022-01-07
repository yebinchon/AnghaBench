; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_sort_best_tp_rates.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_sort_best_tp_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_ht_sta = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MAX_THR_RATES = common dso_local global i32 0, align 4
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_ht_sta*, i32, i32*)* @minstrel_ht_sort_best_tp_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_sort_best_tp_rates(%struct.minstrel_ht_sta* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.minstrel_ht_sta*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.minstrel_ht_sta* %0, %struct.minstrel_ht_sta** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %16 = load i32, i32* @MAX_THR_RATES, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MCS_GROUP_RATES, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MCS_GROUP_RATES, align 4
  %22 = srem i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %24 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta* %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %91, %3
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MCS_GROUP_RATES, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %11, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MCS_GROUP_RATES, align 4
  %57 = srem i32 %55, %56
  store i32 %57, i32* %12, align 4
  %58 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %59 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %14, align 4
  %71 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta* %71, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %41
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %41
  br label %94

88:                                               ; preds = %83, %79
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %15, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %41, label %94

94:                                               ; preds = %91, %87
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @MAX_THR_RATES, align 4
  %97 = sub nsw i32 %96, 1
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %94
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* @MAX_THR_RATES, align 4
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  %112 = sub nsw i32 %109, %111
  %113 = sext i32 %112 to i64
  %114 = mul i64 4, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32 @memmove(i32* %104, i32* %108, i32 %115)
  br label %117

117:                                              ; preds = %99, %94
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @MAX_THR_RATES, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i32, i32* %5, align 4
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  br label %127

127:                                              ; preds = %121, %117
  ret void
}

declare dso_local i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta*, i32, i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
