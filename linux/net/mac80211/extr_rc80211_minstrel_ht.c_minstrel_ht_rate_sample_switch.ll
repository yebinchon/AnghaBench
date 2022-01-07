; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_rate_sample_switch.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_rate_sample_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.minstrel_ht_sta = type { i32*, i32*, i32, i32 }
%struct.minstrel_rate_stats = type { i64 }

@MINSTREL_GROUPS_NB = common dso_local global i32 0, align 4
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@MINSTREL_SAMPLE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_priv*, %struct.minstrel_ht_sta*)* @minstrel_ht_rate_sample_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_rate_sample_switch(%struct.minstrel_priv* %0, %struct.minstrel_ht_sta* %1) #0 {
  %3 = alloca %struct.minstrel_priv*, align 8
  %4 = alloca %struct.minstrel_ht_sta*, align 8
  %5 = alloca %struct.minstrel_rate_stats*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %3, align 8
  store %struct.minstrel_ht_sta* %1, %struct.minstrel_ht_sta** %4, align 8
  %16 = load i32, i32* @MINSTREL_GROUPS_NB, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %21 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %13, align 4
  br label %121

27:                                               ; preds = %2
  %28 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %29 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %30 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta* %28, i32 %33)
  store %struct.minstrel_rate_stats* %34, %struct.minstrel_rate_stats** %5, align 8
  %35 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %5, align 8
  %36 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @MINSTREL_FRAC(i32 75, i32 100)
  %39 = icmp sgt i64 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @minstrel_ht_find_probe_rates(%struct.minstrel_ht_sta* %41, i32* %19, i32* %8, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %51 = call i32 @minstrel_ht_find_probe_rates(%struct.minstrel_ht_sta* %50, i32* %19, i32* %8, i32 0)
  br label %52

52:                                               ; preds = %49, %46, %27
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %101, label %55

55:                                               ; preds = %52
  %56 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %57 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MCS_GROUP_RATES, align 4
  %62 = sdiv i32 %60, %61
  store i32 %62, i32* %14, align 4
  %63 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %64 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %15, align 4
  %70 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %71 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MCS_GROUP_RATES, align 4
  %76 = srem i32 %74, %75
  %77 = load i32, i32* %15, align 4
  %78 = ashr i32 %77, %76
  store i32 %78, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %95, %55
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load i32, i32* %15, align 4
  %84 = and i32 %83, 1
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  br label %95

87:                                               ; preds = %82
  %88 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %89 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %9, align 4
  br label %114

95:                                               ; preds = %86
  %96 = load i32, i32* %15, align 4
  %97 = ashr i32 %96, 1
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %79

100:                                              ; preds = %79
  store i32 1, i32* %13, align 4
  br label %121

101:                                              ; preds = %52
  store i32 0, i32* %11, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = call i32 (...) @prandom_u32()
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %8, align 4
  %108 = srem i32 %106, %107
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %104, %101
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %19, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %109, %87
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %117 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @MINSTREL_SAMPLE_ACTIVE, align 4
  %119 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %120 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %114, %100, %26
  %122 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %13, align 4
  switch i32 %123, label %125 [
    i32 0, label %124
    i32 1, label %124
  ]

124:                                              ; preds = %121, %121
  ret void

125:                                              ; preds = %121
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta*, i32) #2

declare dso_local i64 @MINSTREL_FRAC(i32, i32) #2

declare dso_local i32 @minstrel_ht_find_probe_rates(%struct.minstrel_ht_sta*, i32*, i32*, i32) #2

declare dso_local i32 @prandom_u32(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
