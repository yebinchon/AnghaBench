; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_find_probe_rates.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_find_probe_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_group = type { i32*, i32 }
%struct.minstrel_ht_sta = type { i64*, i32* }

@minstrel_mcs_groups = common dso_local global %struct.mcs_group* null, align 8
@MCS_GROUP_RATES = common dso_local global i64 0, align 8
@MINSTREL_GROUPS_NB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_ht_sta*, i32*, i32*, i32)* @minstrel_ht_find_probe_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_find_probe_rates(%struct.minstrel_ht_sta* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.minstrel_ht_sta*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mcs_group*, align 8
  %10 = alloca %struct.mcs_group*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.minstrel_ht_sta* %0, %struct.minstrel_ht_sta** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.mcs_group*, %struct.mcs_group** @minstrel_mcs_groups, align 8
  %18 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %19 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MCS_GROUP_RATES, align 8
  %24 = udiv i64 %22, %23
  %25 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %17, i64 %24
  store %struct.mcs_group* %25, %struct.mcs_group** %10, align 8
  %26 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %27 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MCS_GROUP_RATES, align 8
  %32 = urem i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %14, align 4
  %34 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %35 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @minstrel_get_duration(i64 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %4
  %43 = load i32, i32* %13, align 4
  %44 = sdiv i32 %43, 16
  %45 = load i32, i32* %13, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %42, %4
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %131, %47
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @MINSTREL_GROUPS_NB, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %134

52:                                               ; preds = %48
  %53 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %54 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  br label %131

63:                                               ; preds = %52
  %64 = load %struct.mcs_group*, %struct.mcs_group** @minstrel_mcs_groups, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %64, i64 %66
  store %struct.mcs_group* %67, %struct.mcs_group** %9, align 8
  %68 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %69 = load %struct.mcs_group*, %struct.mcs_group** %10, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %72 = call i32 @minstrel_ht_probe_group(%struct.minstrel_ht_sta* %68, %struct.mcs_group* %69, i32 %70, %struct.mcs_group* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %63
  br label %131

75:                                               ; preds = %63
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %125, %75
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %130

79:                                               ; preds = %76
  %80 = load i32, i32* %15, align 4
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  br label %125

84:                                               ; preds = %79
  %85 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %86 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %93 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = shl i32 %91, %94
  %96 = load i32, i32* %13, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  br label %125

99:                                               ; preds = %84
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* @MCS_GROUP_RATES, align 8
  %103 = mul i64 %101, %102
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %103, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %111 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %109, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %99
  br label %125

117:                                              ; preds = %99
  %118 = load i32, i32* %16, align 4
  %119 = load i32*, i32** %6, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  store i32 %118, i32* %124, align 4
  br label %130

125:                                              ; preds = %116, %98, %83
  %126 = load i32, i32* %15, align 4
  %127 = ashr i32 %126, 1
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %76

130:                                              ; preds = %117, %76
  br label %131

131:                                              ; preds = %130, %74, %62
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %48

134:                                              ; preds = %48
  ret void
}

declare dso_local i32 @minstrel_get_duration(i64) #1

declare dso_local i32 @minstrel_ht_probe_group(%struct.minstrel_ht_sta*, %struct.mcs_group*, i32, %struct.mcs_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
