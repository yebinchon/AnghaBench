; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_set_mandatory_flags_band.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_set_mandatory_flags_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32 }

@IEEE80211_RATE_MANDATORY_A = common dso_local global i32 0, align 4
@IEEE80211_RATE_MANDATORY_B = common dso_local global i32 0, align 4
@IEEE80211_RATE_MANDATORY_G = common dso_local global i32 0, align 4
@IEEE80211_RATE_ERP_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_supported_band*)* @set_mandatory_flags_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mandatory_flags_band(%struct.ieee80211_supported_band* %0) #0 {
  %2 = alloca %struct.ieee80211_supported_band*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %2, align 8
  %5 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %155 [
    i32 131, label %8
    i32 129, label %8
    i32 132, label %65
    i32 130, label %134
    i32 128, label %154
  ]

8:                                                ; preds = %1, %1
  store i32 3, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %59, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %9
  %16 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 60
  br i1 %24, label %45, label %25

25:                                               ; preds = %15
  %26 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 120
  br i1 %34, label %45, label %35

35:                                               ; preds = %25
  %36 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %37 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 240
  br i1 %44, label %45, label %58

45:                                               ; preds = %35, %25, %15
  %46 = load i32, i32* @IEEE80211_RATE_MANDATORY_A, align 4
  %47 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %48 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %46
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %45, %35
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %9

62:                                               ; preds = %9
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @WARN_ON(i32 %63)
  br label %157

65:                                               ; preds = %1
  store i32 7, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %121, %65
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %69 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %124

72:                                               ; preds = %66
  %73 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %74 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %109 [
    i32 10, label %81
    i32 20, label %81
    i32 55, label %81
    i32 110, label %81
    i32 60, label %96
    i32 120, label %96
    i32 240, label %96
  ]

81:                                               ; preds = %72, %72, %72, %72
  %82 = load i32, i32* @IEEE80211_RATE_MANDATORY_B, align 4
  %83 = load i32, i32* @IEEE80211_RATE_MANDATORY_G, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %86 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %85, i32 0, i32 3
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %84
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %4, align 4
  br label %120

96:                                               ; preds = %72, %72, %72
  %97 = load i32, i32* @IEEE80211_RATE_MANDATORY_G, align 4
  %98 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %99 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %98, i32 0, i32 3
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %97
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %72, %96
  %110 = load i32, i32* @IEEE80211_RATE_ERP_G, align 4
  %111 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %112 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %111, i32 0, i32 3
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %110
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %109, %81
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  br label %66

124:                                              ; preds = %66
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 3
  br label %130

130:                                              ; preds = %127, %124
  %131 = phi i1 [ false, %124 ], [ %129, %127 ]
  %132 = zext i1 %131 to i32
  %133 = call i32 @WARN_ON(i32 %132)
  br label %157

134:                                              ; preds = %1
  %135 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %136 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i32 @WARN_ON(i32 %141)
  %143 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %2, align 8
  %144 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 30
  %151 = icmp ne i32 %150, 30
  %152 = zext i1 %151 to i32
  %153 = call i32 @WARN_ON(i32 %152)
  br label %157

154:                                              ; preds = %1
  br label %155

155:                                              ; preds = %1, %154
  %156 = call i32 @WARN_ON(i32 1)
  br label %157

157:                                              ; preds = %155, %134, %130, %62
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
