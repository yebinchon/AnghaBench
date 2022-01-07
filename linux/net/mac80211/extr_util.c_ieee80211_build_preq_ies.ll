; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_build_preq_ies.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_build_preq_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.ieee80211_scan_ies = type { i32**, i64*, i32*, i64 }
%struct.cfg80211_chan_def = type { i32 }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"not enough space for preq custom IEs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_build_preq_ies(%struct.ieee80211_local* %0, i32* %1, i64 %2, %struct.ieee80211_scan_ies* %3, i32* %4, i64 %5, i32 %6, i32* %7, %struct.cfg80211_chan_def* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_local*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ieee80211_scan_ies*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.cfg80211_chan_def*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %12, align 8
  store i32* %1, i32** %13, align 8
  store i64 %2, i64* %14, align 8
  store %struct.ieee80211_scan_ies* %3, %struct.ieee80211_scan_ies** %15, align 8
  store i32* %4, i32** %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store %struct.cfg80211_chan_def* %8, %struct.cfg80211_chan_def** %20, align 8
  store i32 %9, i32* %21, align 4
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  %26 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %15, align 8
  %27 = call i32 @memset(%struct.ieee80211_scan_ies* %26, i32 0, i32 32)
  store i32 0, i32* %25, align 4
  br label %28

28:                                               ; preds = %79, %10
  %29 = load i32, i32* %25, align 4
  %30 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %82

32:                                               ; preds = %28
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* %25, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %78

38:                                               ; preds = %32
  %39 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = load i64, i64* %22, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* %22, align 8
  %45 = sub i64 %43, %44
  %46 = load i32*, i32** %16, align 8
  %47 = load i64, i64* %17, align 8
  %48 = load i32, i32* %25, align 4
  %49 = load i32*, i32** %19, align 8
  %50 = load i32, i32* %25, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %20, align 8
  %55 = load i32, i32* %21, align 4
  %56 = call i64 @ieee80211_build_preq_ies_band(%struct.ieee80211_local* %39, i32* %42, i64 %45, i32* %46, i64 %47, i32 %48, i32 %53, %struct.cfg80211_chan_def* %54, i64* %24, i32 %55)
  %57 = load i64, i64* %22, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %22, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i64, i64* %23, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %15, align 8
  %63 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %25, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  store i32* %61, i32** %67, align 8
  %68 = load i64, i64* %22, align 8
  %69 = load i64, i64* %23, align 8
  %70 = sub i64 %68, %69
  %71 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %15, align 8
  %72 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %25, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %70, i64* %76, align 8
  %77 = load i64, i64* %22, align 8
  store i64 %77, i64* %23, align 8
  br label %78

78:                                               ; preds = %38, %32
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %25, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %25, align 4
  br label %28

82:                                               ; preds = %28
  %83 = load i32*, i32** %16, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %128

85:                                               ; preds = %82
  %86 = load i64, i64* %17, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %128

88:                                               ; preds = %85
  %89 = load i64, i64* %14, align 8
  %90 = load i64, i64* %22, align 8
  %91 = sub i64 %89, %90
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %24, align 8
  %94 = sub i64 %92, %93
  %95 = icmp ult i64 %91, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @WARN_ONCE(i32 %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load i64, i64* %22, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %11, align 4
  br label %131

102:                                              ; preds = %88
  %103 = load i32*, i32** %13, align 8
  %104 = load i64, i64* %22, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32*, i32** %16, align 8
  %107 = load i64, i64* %24, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i64, i64* %17, align 8
  %110 = load i64, i64* %24, align 8
  %111 = sub i64 %109, %110
  %112 = call i32 @memcpy(i32* %105, i32* %108, i64 %111)
  %113 = load i32*, i32** %13, align 8
  %114 = load i64, i64* %22, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %15, align 8
  %117 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %116, i32 0, i32 2
  store i32* %115, i32** %117, align 8
  %118 = load i64, i64* %17, align 8
  %119 = load i64, i64* %24, align 8
  %120 = sub i64 %118, %119
  %121 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %15, align 8
  %122 = getelementptr inbounds %struct.ieee80211_scan_ies, %struct.ieee80211_scan_ies* %121, i32 0, i32 3
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* %17, align 8
  %124 = load i64, i64* %24, align 8
  %125 = sub i64 %123, %124
  %126 = load i64, i64* %22, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %22, align 8
  br label %128

128:                                              ; preds = %102, %85, %82
  %129 = load i64, i64* %22, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %128, %99
  %132 = load i32, i32* %11, align 4
  ret i32 %132
}

declare dso_local i32 @memset(%struct.ieee80211_scan_ies*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @ieee80211_build_preq_ies_band(%struct.ieee80211_local*, i32*, i64, i32*, i64, i32, i32, %struct.cfg80211_chan_def*, i64*, i32) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
