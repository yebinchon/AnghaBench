; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_get_rates.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_get_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32 }

@BSS_MEMBERSHIP_SELECTOR_HT_PHY = common dso_local global i32 0, align 4
@BSS_MEMBERSHIP_SELECTOR_VHT_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_supported_band*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32)* @ieee80211_get_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_get_rates(%struct.ieee80211_supported_band* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32 %8) #0 {
  %10 = alloca %struct.ieee80211_supported_band*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.ieee80211_rate*, align 8
  %24 = alloca i32, align 4
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %25

25:                                               ; preds = %129, %9
  %26 = load i32, i32* %19, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %132

29:                                               ; preds = %25
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %19, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 127
  store i32 %35, i32* %21, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %19, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 128
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* %21, align 4
  %47 = mul nsw i32 %46, 5
  %48 = load i32, i32* %18, align 4
  %49 = shl i32 1, %48
  %50 = mul nsw i32 %47, %49
  %51 = icmp sgt i32 %50, 110
  br i1 %51, label %52, label %54

52:                                               ; preds = %29
  %53 = load i32*, i32** %15, align 8
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %29
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %19, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BSS_MEMBERSHIP_SELECTOR_HT_PHY, align 4
  %61 = or i32 128, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %72, label %63

63:                                               ; preds = %54
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @BSS_MEMBERSHIP_SELECTOR_VHT_PHY, align 4
  %70 = or i32 128, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63, %54
  br label %129

73:                                               ; preds = %63
  store i32 0, i32* %20, align 4
  br label %74

74:                                               ; preds = %125, %73
  %75 = load i32, i32* %20, align 4
  %76 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %77 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %128

80:                                               ; preds = %74
  %81 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %82 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %81, i32 0, i32 1
  %83 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %82, align 8
  %84 = load i32, i32* %20, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %83, i64 %85
  store %struct.ieee80211_rate* %86, %struct.ieee80211_rate** %23, align 8
  %87 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %23, align 8
  %88 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %18, align 4
  %91 = shl i32 1, %90
  %92 = mul nsw i32 %91, 5
  %93 = call i32 @DIV_ROUND_UP(i32 %89, i32 %92)
  store i32 %93, i32* %24, align 4
  %94 = load i32, i32* %24, align 4
  %95 = load i32, i32* %21, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %124

97:                                               ; preds = %80
  %98 = load i32, i32* %20, align 4
  %99 = call i32 @BIT(i32 %98)
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %99
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %22, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = load i32, i32* %20, align 4
  %107 = call i32 @BIT(i32 %106)
  %108 = load i32*, i32** %14, align 8
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %97
  %112 = load i32, i32* %21, align 4
  %113 = mul nsw i32 %112, 5
  %114 = load i32*, i32** %16, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load i32, i32* %21, align 4
  %119 = mul nsw i32 %118, 5
  %120 = load i32*, i32** %16, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %20, align 4
  %122 = load i32*, i32** %17, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %117, %111
  br label %128

124:                                              ; preds = %80
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %20, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %20, align 4
  br label %74

128:                                              ; preds = %123, %74
  br label %129

129:                                              ; preds = %128, %72
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %19, align 4
  br label %25

132:                                              ; preds = %25
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
