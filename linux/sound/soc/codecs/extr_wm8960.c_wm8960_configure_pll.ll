; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_configure_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_configure_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8960_priv = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@sysclk_divs = common dso_local global i32* null, align 8
@dac_divs = common dso_local global i32* null, align 8
@bclk_divs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32*, i32*, i32*)* @wm8960_configure_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8960_configure_pll(%struct.snd_soc_component* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.wm8960_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %24 = call %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %23)
  store %struct.wm8960_priv* %24, %struct.wm8960_priv** %12, align 8
  %25 = load %struct.wm8960_priv*, %struct.wm8960_priv** %12, align 8
  %26 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.wm8960_priv*, %struct.wm8960_priv** %12, align 8
  %29 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %19, align 4
  %34 = load i32*, i32** %11, align 8
  store i32 -1, i32* %34, align 4
  %35 = load i32*, i32** %10, align 8
  store i32 -1, i32* %35, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 -1, i32* %36, align 4
  store i32 0, i32* %20, align 4
  br label %37

37:                                               ; preds = %128, %5
  %38 = load i32, i32* %20, align 4
  %39 = load i32*, i32** @sysclk_divs, align 8
  %40 = call i32 @ARRAY_SIZE(i32* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %131

42:                                               ; preds = %37
  %43 = load i32*, i32** @sysclk_divs, align 8
  %44 = load i32, i32* %20, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %128

50:                                               ; preds = %42
  store i32 0, i32* %21, align 4
  br label %51

51:                                               ; preds = %124, %50
  %52 = load i32, i32* %21, align 4
  %53 = load i32*, i32** @dac_divs, align 8
  %54 = call i32 @ARRAY_SIZE(i32* %53)
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %127

56:                                               ; preds = %51
  %57 = load i32, i32* %15, align 4
  %58 = load i32*, i32** @dac_divs, align 8
  %59 = load i32, i32* %21, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %57, %62
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** @sysclk_divs, align 8
  %66 = load i32, i32* %20, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %64, %69
  store i32 %70, i32* %16, align 4
  store i32 0, i32* %22, align 4
  br label %71

71:                                               ; preds = %120, %56
  %72 = load i32, i32* %22, align 4
  %73 = load i32*, i32** @bclk_divs, align 8
  %74 = call i32 @ARRAY_SIZE(i32* %73)
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %123

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @is_pll_freq_available(i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  br label %120

82:                                               ; preds = %76
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32*, i32** @bclk_divs, align 8
  %86 = load i32, i32* %22, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %84, %89
  %91 = sdiv i32 %90, 10
  %92 = sub nsw i32 %83, %91
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %82
  %96 = load i32, i32* %20, align 4
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %21, align 4
  %99 = load i32*, i32** %10, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %22, align 4
  %101 = load i32*, i32** %11, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %16, align 4
  store i32 %102, i32* %6, align 4
  br label %133

103:                                              ; preds = %82
  %104 = load i32, i32* %17, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %103
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i32, i32* %20, align 4
  %112 = load i32*, i32** %9, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %21, align 4
  %114 = load i32*, i32** %10, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %22, align 4
  %116 = load i32*, i32** %11, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* %17, align 4
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %19, align 4
  br label %119

119:                                              ; preds = %110, %106, %103
  br label %120

120:                                              ; preds = %119, %81
  %121 = load i32, i32* %22, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %22, align 4
  br label %71

123:                                              ; preds = %71
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %21, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %21, align 4
  br label %51

127:                                              ; preds = %51
  br label %128

128:                                              ; preds = %127, %49
  %129 = load i32, i32* %20, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %20, align 4
  br label %37

131:                                              ; preds = %37
  %132 = load i32, i32* %19, align 4
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %131, %95
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @is_pll_freq_available(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
