; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_calc_retransmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_calc_retransmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_priv = type { i32, i32, i32, i32 }
%struct.minstrel_ht_sta = type { i32, i32 }
%struct.minstrel_rate_stats = type { i64, i32, i32, i32 }

@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@MINSTREL_CCK_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_priv*, %struct.minstrel_ht_sta*, i32)* @minstrel_calc_retransmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_calc_retransmit(%struct.minstrel_priv* %0, %struct.minstrel_ht_sta* %1, i32 %2) #0 {
  %4 = alloca %struct.minstrel_priv*, align 8
  %5 = alloca %struct.minstrel_ht_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.minstrel_rate_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %4, align 8
  store %struct.minstrel_ht_sta* %1, %struct.minstrel_ht_sta** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %18 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 9, i32* %13, align 4
  %20 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %21 = call i32 @minstrel_ht_avg_ampdu_len(%struct.minstrel_ht_sta* %20)
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta* %22, i32 %23)
  store %struct.minstrel_rate_stats* %24, %struct.minstrel_rate_stats** %7, align 8
  %25 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %26 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @MINSTREL_FRAC(i32 1, i32 10)
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %32 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %31, i32 0, i32 1
  store i32 1, i32* %32, align 8
  %33 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %34 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %33, i32 0, i32 2
  store i32 1, i32* %34, align 4
  br label %150

35:                                               ; preds = %3
  %36 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %37 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %36, i32 0, i32 1
  store i32 2, i32* %37, align 8
  %38 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %39 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %38, i32 0, i32 2
  store i32 2, i32* %39, align 4
  %40 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %41 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %40, i32 0, i32 3
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @minstrel_get_duration(i32 %42)
  %44 = load i32, i32* %14, align 4
  %45 = mul i32 %43, %44
  %46 = udiv i32 %45, 1000
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %11, align 4
  %49 = mul i32 %47, %48
  %50 = lshr i32 %49, 1
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = shl i32 %51, 1
  %53 = or i32 %52, 1
  %54 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %55 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @min(i32 %53, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %11, align 4
  %60 = mul i32 %58, %59
  %61 = lshr i32 %60, 1
  %62 = load i32, i32* %12, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = shl i32 %64, 1
  %66 = or i32 %65, 1
  %67 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %68 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @min(i32 %66, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @MCS_GROUP_RATES, align 4
  %73 = sdiv i32 %71, %72
  %74 = load i32, i32* @MINSTREL_CCK_GROUP, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %35
  %77 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %78 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %15, align 4
  %80 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %81 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %76, %35
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %10, align 4
  %87 = add i32 %85, %86
  %88 = mul i32 2, %87
  %89 = add i32 %84, %88
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %10, align 4
  %93 = add i32 %91, %92
  %94 = mul i32 2, %93
  %95 = add i32 %90, %94
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %148, %83
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %11, align 4
  %99 = mul i32 %97, %98
  %100 = lshr i32 %99, 1
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %11, align 4
  %102 = shl i32 %101, 1
  %103 = or i32 %102, 1
  %104 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %105 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @min(i32 %103, i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %15, align 4
  %110 = add i32 %108, %109
  %111 = load i32, i32* %10, align 4
  %112 = add i32 %110, %111
  %113 = load i32, i32* %8, align 4
  %114 = add i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %16, align 4
  %117 = add i32 %115, %116
  %118 = load i32, i32* %10, align 4
  %119 = add i32 %117, %118
  %120 = load i32, i32* %9, align 4
  %121 = add i32 %120, %119
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %124 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ult i32 %122, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %96
  %128 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %129 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %127, %96
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %136 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ult i32 %134, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %133
  %140 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %141 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  %144 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %145 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %143, %146
  br label %148

148:                                              ; preds = %139, %133
  %149 = phi i1 [ false, %133 ], [ %147, %139 ]
  br i1 %149, label %96, label %150

150:                                              ; preds = %30, %148
  ret void
}

declare dso_local i32 @minstrel_ht_avg_ampdu_len(%struct.minstrel_ht_sta*) #1

declare dso_local %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta*, i32) #1

declare dso_local i64 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @minstrel_get_duration(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
