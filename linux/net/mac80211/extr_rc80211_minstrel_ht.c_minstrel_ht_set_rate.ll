; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_group = type { i32, i32 }
%struct.minstrel_priv = type { i32* }
%struct.minstrel_ht_sta = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_sta_rates = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.minstrel_rate_stats = type { i64, i32, i32, i32 }

@minstrel_mcs_groups = common dso_local global %struct.mcs_group* null, align 8
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@MINSTREL_CCK_GROUP = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@IEEE80211_SMPS_DYNAMIC = common dso_local global i64 0, align 8
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_priv*, %struct.minstrel_ht_sta*, %struct.ieee80211_sta_rates*, i32, i32)* @minstrel_ht_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_set_rate(%struct.minstrel_priv* %0, %struct.minstrel_ht_sta* %1, %struct.ieee80211_sta_rates* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.minstrel_priv*, align 8
  %7 = alloca %struct.minstrel_ht_sta*, align 8
  %8 = alloca %struct.ieee80211_sta_rates*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mcs_group*, align 8
  %12 = alloca %struct.minstrel_rate_stats*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %6, align 8
  store %struct.minstrel_ht_sta* %1, %struct.minstrel_ht_sta** %7, align 8
  store %struct.ieee80211_sta_rates* %2, %struct.ieee80211_sta_rates** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.mcs_group*, %struct.mcs_group** @minstrel_mcs_groups, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @MCS_GROUP_RATES, align 4
  %18 = sdiv i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %15, i64 %19
  store %struct.mcs_group* %20, %struct.mcs_group** %11, align 8
  %21 = load %struct.mcs_group*, %struct.mcs_group** %11, align 8
  %22 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  %24 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta* %24, i32 %25)
  store %struct.minstrel_rate_stats* %26, %struct.minstrel_rate_stats** %12, align 8
  %27 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %28 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %5
  %32 = load %struct.minstrel_priv*, %struct.minstrel_priv** %6, align 8
  %33 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @minstrel_calc_retransmit(%struct.minstrel_priv* %32, %struct.minstrel_ht_sta* %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %5
  %37 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %38 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @MINSTREL_FRAC(i32 20, i32 100)
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %44 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %69, label %47

47:                                               ; preds = %42, %36
  %48 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %49 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 2, i32* %54, align 4
  %55 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 2, i32* %61, align 4
  %62 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 2, i32* %68, align 4
  br label %100

69:                                               ; preds = %42
  %70 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %71 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %74 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 4
  %80 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %81 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %84 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  store i32 %82, i32* %89, align 4
  %90 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %91 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %94 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store i32 %92, i32* %99, align 4
  br label %100

100:                                              ; preds = %69, %47
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @MCS_GROUP_RATES, align 4
  %103 = sdiv i32 %101, %102
  %104 = load i32, i32* @MINSTREL_CCK_GROUP, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %100
  %107 = load %struct.minstrel_priv*, %struct.minstrel_priv** %6, align 8
  %108 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.minstrel_priv*, %struct.minstrel_priv** %6, align 8
  %112 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @ARRAY_SIZE(i32* %113)
  %115 = srem i32 %110, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %109, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %13, align 4
  br label %146

119:                                              ; preds = %100
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = load %struct.mcs_group*, %struct.mcs_group** %11, align 8
  %126 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, 1
  %129 = shl i32 %128, 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @MCS_GROUP_RATES, align 4
  %132 = srem i32 %130, %131
  %133 = and i32 %132, 15
  %134 = or i32 %129, %133
  store i32 %134, i32* %13, align 4
  br label %145

135:                                              ; preds = %119
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @MCS_GROUP_RATES, align 4
  %138 = srem i32 %136, %137
  %139 = load %struct.mcs_group*, %struct.mcs_group** %11, align 8
  %140 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, 1
  %143 = mul nsw i32 %142, 8
  %144 = add nsw i32 %138, %143
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %135, %124
  br label %146

146:                                              ; preds = %145, %106
  %147 = load i32, i32* %9, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %162, label %149

149:                                              ; preds = %146
  %150 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %7, align 8
  %151 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %150, i32 0, i32 0
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @IEEE80211_SMPS_DYNAMIC, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %181

157:                                              ; preds = %149
  %158 = load %struct.mcs_group*, %struct.mcs_group** %11, align 8
  %159 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp sgt i32 %160, 1
  br i1 %161, label %162, label %181

162:                                              ; preds = %157, %146
  %163 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %164 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %172 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %171, i32 0, i32 0
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  store i32 %170, i32* %177, align 4
  %178 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %179 = load i32, i32* %14, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %14, align 4
  br label %181

181:                                              ; preds = %162, %157, %149
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %184 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 3
  store i32 %182, i32* %189, align 4
  %190 = load i32, i32* %14, align 4
  %191 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %192 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %191, i32 0, i32 0
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 4
  store i32 %190, i32* %197, align 4
  ret void
}

declare dso_local %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta*, i32) #1

declare dso_local i32 @minstrel_calc_retransmit(%struct.minstrel_priv*, %struct.minstrel_ht_sta*, i32) #1

declare dso_local i64 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
