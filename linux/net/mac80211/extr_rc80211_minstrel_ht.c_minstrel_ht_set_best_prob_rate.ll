; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_set_best_prob_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_set_best_prob_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_ht_sta = type { i64, i64*, %struct.minstrel_mcs_group_data* }
%struct.minstrel_mcs_group_data = type { i64, %struct.minstrel_rate_stats* }
%struct.minstrel_rate_stats = type { i32 }

@MCS_GROUP_RATES = common dso_local global i64 0, align 8
@MINSTREL_CCK_GROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_ht_sta*, i64)* @minstrel_ht_set_best_prob_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_set_best_prob_rate(%struct.minstrel_ht_sta* %0, i64 %1) #0 {
  %3 = alloca %struct.minstrel_ht_sta*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.minstrel_mcs_group_data*, align 8
  %6 = alloca %struct.minstrel_rate_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.minstrel_ht_sta* %0, %struct.minstrel_ht_sta** %3, align 8
  store i64 %1, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @MCS_GROUP_RATES, align 8
  %21 = udiv i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %13, align 4
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @MCS_GROUP_RATES, align 8
  %25 = urem i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %3, align 8
  %28 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %27, i32 0, i32 2
  %29 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @MCS_GROUP_RATES, align 8
  %32 = udiv i64 %30, %31
  %33 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %29, i64 %32
  store %struct.minstrel_mcs_group_data* %33, %struct.minstrel_mcs_group_data** %5, align 8
  %34 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %35 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %34, i32 0, i32 1
  %36 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @MCS_GROUP_RATES, align 8
  %39 = urem i64 %37, %38
  %40 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %36, i64 %39
  store %struct.minstrel_rate_stats* %40, %struct.minstrel_rate_stats** %6, align 8
  %41 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %3, align 8
  %42 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MCS_GROUP_RATES, align 8
  %45 = udiv i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %3, align 8
  %48 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MCS_GROUP_RATES, align 8
  %51 = urem i64 %49, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %8, align 4
  %53 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %3, align 8
  %54 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %53, i32 0, i32 2
  %55 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %55, i64 %57
  %59 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %58, i32 0, i32 1
  %60 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %60, i64 %62
  %64 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  %66 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta* %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %3, align 8
  %72 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MCS_GROUP_RATES, align 8
  %77 = udiv i64 %75, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %11, align 4
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* @MCS_GROUP_RATES, align 8
  %81 = udiv i64 %79, %80
  %82 = load i64, i64* @MINSTREL_CCK_GROUP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %2
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* @MINSTREL_CCK_GROUP, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %171

90:                                               ; preds = %84, %2
  %91 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %92 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MCS_GROUP_RATES, align 8
  %95 = udiv i64 %93, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %15, align 4
  %97 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %98 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MCS_GROUP_RATES, align 8
  %101 = urem i64 %99, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %16, align 4
  %103 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %3, align 8
  %104 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %103, i32 0, i32 2
  %105 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %105, i64 %107
  %109 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %108, i32 0, i32 1
  %110 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %109, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %110, i64 %112
  %114 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %18, align 4
  %116 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %117 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @MINSTREL_FRAC(i32 75, i32 100)
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %150

121:                                              ; preds = %90
  %122 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %3, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %126 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta* %122, i32 %123, i32 %124, i32 %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %121
  %133 = load i64, i64* %4, align 8
  %134 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %3, align 8
  %135 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %132, %121
  %137 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %3, align 8
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %18, align 4
  %141 = call i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta* %137, i32 %138, i32 %139, i32 %140)
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %17, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %136
  %146 = load i64, i64* %4, align 8
  %147 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %148 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %145, %136
  br label %171

150:                                              ; preds = %90
  %151 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %152 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load i64, i64* %4, align 8
  %158 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %3, align 8
  %159 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %156, %150
  %161 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %162 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %18, align 4
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %160
  %167 = load i64, i64* %4, align 8
  %168 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %169 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  br label %170

170:                                              ; preds = %166, %160
  br label %171

171:                                              ; preds = %89, %170, %149
  ret void
}

declare dso_local i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta*, i32, i32, i32) #1

declare dso_local i32 @MINSTREL_FRAC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
