; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_priv = type { i32 }
%struct.minstrel_sta_info = type { i32, i32*, i64, i32, %struct.minstrel_rate* }
%struct.minstrel_rate = type { i32, i32, %struct.minstrel_rate_stats }
%struct.minstrel_rate_stats = type { i64, i32 }

@MAX_THR_RATES = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_priv*, %struct.minstrel_sta_info*)* @minstrel_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_update_stats(%struct.minstrel_priv* %0, %struct.minstrel_sta_info* %1) #0 {
  %3 = alloca %struct.minstrel_priv*, align 8
  %4 = alloca %struct.minstrel_sta_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.minstrel_rate*, align 8
  %12 = alloca %struct.minstrel_rate_stats*, align 8
  %13 = alloca %struct.minstrel_rate_stats*, align 8
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %3, align 8
  store %struct.minstrel_sta_info* %1, %struct.minstrel_sta_info** %4, align 8
  %14 = load i32, i32* @MAX_THR_RATES, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %26, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @MAX_THR_RATES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %17, i64 %24
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %18

29:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %146, %29
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %33 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %149

36:                                               ; preds = %30
  %37 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %38 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %37, i32 0, i32 4
  %39 = load %struct.minstrel_rate*, %struct.minstrel_rate** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %39, i64 %41
  store %struct.minstrel_rate* %42, %struct.minstrel_rate** %11, align 8
  %43 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %44 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %43, i32 0, i32 4
  %45 = load %struct.minstrel_rate*, %struct.minstrel_rate** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %45, i64 %47
  %49 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %48, i32 0, i32 2
  store %struct.minstrel_rate_stats* %49, %struct.minstrel_rate_stats** %12, align 8
  %50 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %51 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %50, i32 0, i32 4
  %52 = load %struct.minstrel_rate*, %struct.minstrel_rate** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %52, i64 %53
  %55 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %54, i32 0, i32 2
  store %struct.minstrel_rate_stats* %55, %struct.minstrel_rate_stats** %13, align 8
  %56 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %57 = call i32 @minstrel_calc_rate_stats(%struct.minstrel_rate_stats* %56)
  %58 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %59 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @MINSTREL_FRAC(i32 95, i32 100)
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %36
  %64 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %65 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @MINSTREL_FRAC(i32 10, i32 100)
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %63, %36
  %70 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %71 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = ashr i32 %72, 1
  %74 = load %struct.minstrel_rate*, %struct.minstrel_rate** %11, align 8
  %75 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.minstrel_rate*, %struct.minstrel_rate** %11, align 8
  %77 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %78, 2
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  %81 = load %struct.minstrel_rate*, %struct.minstrel_rate** %11, align 8
  %82 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %81, i32 0, i32 0
  store i32 2, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %69
  %84 = load %struct.minstrel_rate*, %struct.minstrel_rate** %11, align 8
  %85 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %84, i32 0, i32 1
  store i32 4, i32* %85, align 4
  br label %94

86:                                               ; preds = %63
  %87 = load %struct.minstrel_rate*, %struct.minstrel_rate** %11, align 8
  %88 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %87, i32 0, i32 1
  store i32 -1, i32* %88, align 4
  %89 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %90 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.minstrel_rate*, %struct.minstrel_rate** %11, align 8
  %93 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %86, %83
  %95 = load %struct.minstrel_rate*, %struct.minstrel_rate** %11, align 8
  %96 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load %struct.minstrel_rate*, %struct.minstrel_rate** %11, align 8
  %101 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %100, i32 0, i32 0
  store i32 2, i32* %101, align 8
  br label %102

102:                                              ; preds = %99, %94
  %103 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @minstrel_sort_best_tp_rates(%struct.minstrel_sta_info* %103, i32 %104, i64* %17)
  %106 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %107 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @MINSTREL_FRAC(i32 95, i32 100)
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %102
  %112 = load %struct.minstrel_rate*, %struct.minstrel_rate** %11, align 8
  %113 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %114 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @minstrel_get_tp_avg(%struct.minstrel_rate* %112, i64 %115)
  store i32 %116, i32* %9, align 4
  %117 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %118 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %117, i32 0, i32 4
  %119 = load %struct.minstrel_rate*, %struct.minstrel_rate** %118, align 8
  %120 = load i64, i64* %7, align 8
  %121 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %119, i64 %120
  %122 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %13, align 8
  %123 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @minstrel_get_tp_avg(%struct.minstrel_rate* %121, i64 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp sge i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %111
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %7, align 8
  br label %132

132:                                              ; preds = %129, %111
  br label %145

133:                                              ; preds = %102
  %134 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %135 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %13, align 8
  %138 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp sge i64 %136, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %7, align 8
  br label %144

144:                                              ; preds = %141, %133
  br label %145

145:                                              ; preds = %144, %132
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %30

149:                                              ; preds = %30
  %150 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %151 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @memcpy(i32* %152, i64* %17, i32 8)
  %154 = load i64, i64* %7, align 8
  %155 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %156 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %155, i32 0, i32 2
  store i64 %154, i64* %156, align 8
  %157 = load i32, i32* @jiffies, align 4
  %158 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %159 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  %160 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %161 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %162 = call i32 @minstrel_update_rates(%struct.minstrel_priv* %160, %struct.minstrel_sta_info* %161)
  %163 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %163)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @minstrel_calc_rate_stats(%struct.minstrel_rate_stats*) #2

declare dso_local i64 @MINSTREL_FRAC(i32, i32) #2

declare dso_local i32 @minstrel_sort_best_tp_rates(%struct.minstrel_sta_info*, i32, i64*) #2

declare dso_local i32 @minstrel_get_tp_avg(%struct.minstrel_rate*, i64) #2

declare dso_local i32 @memcpy(i32*, i64*, i32) #2

declare dso_local i32 @minstrel_update_rates(%struct.minstrel_priv*, %struct.minstrel_sta_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
