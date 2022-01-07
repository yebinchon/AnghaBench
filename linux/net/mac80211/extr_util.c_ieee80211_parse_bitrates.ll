; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_parse_bitrates.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_parse_bitrates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_chan_def = type { i32 }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_parse_bitrates(%struct.cfg80211_chan_def* %0, %struct.ieee80211_supported_band* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_rate*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def** %6, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %19 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %20 = call i32 @ieee80211_chandef_rate_flags(%struct.cfg80211_chan_def* %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %22 = call i32 @ieee80211_chandef_get_shift(%struct.cfg80211_chan_def* %21)
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %18, align 4
  %23 = load i32*, i32** %10, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %16, align 4
  br label %24

24:                                               ; preds = %80, %5
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %83

28:                                               ; preds = %24
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 127
  store i32 %34, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %35

35:                                               ; preds = %76, %28
  %36 = load i32, i32* %17, align 4
  %37 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %79

41:                                               ; preds = %35
  %42 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %42, i32 0, i32 1
  %44 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %43, align 8
  %45 = load i32, i32* %17, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %44, i64 %46
  store %struct.ieee80211_rate* %47, %struct.ieee80211_rate** %13, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %13, align 8
  %50 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %48, %51
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %76

56:                                               ; preds = %41
  %57 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %13, align 8
  %58 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = shl i32 1, %60
  %62 = mul nsw i32 %61, 5
  %63 = call i32 @DIV_ROUND_UP(i32 %59, i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %56
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @BIT(i32 %68)
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %18, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %18, align 4
  br label %79

75:                                               ; preds = %56
  br label %76

76:                                               ; preds = %75, %55
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %17, align 4
  br label %35

79:                                               ; preds = %67, %35
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %16, align 4
  br label %24

83:                                               ; preds = %24
  %84 = load i32, i32* %18, align 4
  ret i32 %84
}

declare dso_local i32 @ieee80211_chandef_rate_flags(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @ieee80211_chandef_get_shift(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
