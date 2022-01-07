; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8993.c_wm8993_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8993.c_wm8993_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8993_priv = type { i32 }

@WM8993_AUDIO_INTERFACE_1 = common dso_local global i32 0, align 4
@WM8993_AUDIO_INTERFACE_4 = common dso_local global i32 0, align 4
@WM8993_BCLK_DIR = common dso_local global i32 0, align 4
@WM8993_AIF_BCLK_INV = common dso_local global i32 0, align 4
@WM8993_AIF_LRCLK_INV = common dso_local global i32 0, align 4
@WM8993_AIF_FMT_MASK = common dso_local global i32 0, align 4
@WM8993_LRCLK_DIR = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8993_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8993_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.wm8993_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.wm8993_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.wm8993_priv* %14, %struct.wm8993_priv** %7, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %16 = load i32, i32* @WM8993_AUDIO_INTERFACE_1, align 4
  %17 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %19 = load i32, i32* @WM8993_AUDIO_INTERFACE_4, align 4
  %20 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @WM8993_BCLK_DIR, align 4
  %22 = load i32, i32* @WM8993_AIF_BCLK_INV, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @WM8993_AIF_LRCLK_INV, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @WM8993_AIF_FMT_MASK, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @WM8993_LRCLK_DIR, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %37 = and i32 %35, %36
  switch i32 %37, label %62 [
    i32 137, label %38
    i32 138, label %41
    i32 139, label %47
    i32 140, label %53
  ]

38:                                               ; preds = %2
  %39 = load %struct.wm8993_priv*, %struct.wm8993_priv** %7, align 8
  %40 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %65

41:                                               ; preds = %2
  %42 = load i32, i32* @WM8993_LRCLK_DIR, align 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load %struct.wm8993_priv*, %struct.wm8993_priv** %7, align 8
  %46 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  br label %65

47:                                               ; preds = %2
  %48 = load i32, i32* @WM8993_BCLK_DIR, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load %struct.wm8993_priv*, %struct.wm8993_priv** %7, align 8
  %52 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  br label %65

53:                                               ; preds = %2
  %54 = load i32, i32* @WM8993_BCLK_DIR, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @WM8993_LRCLK_DIR, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load %struct.wm8993_priv*, %struct.wm8993_priv** %7, align 8
  %61 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  br label %65

62:                                               ; preds = %2
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %138

65:                                               ; preds = %53, %47, %41, %38
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %68 = and i32 %66, %67
  switch i32 %68, label %83 [
    i32 135, label %69
    i32 136, label %73
    i32 134, label %76
    i32 128, label %79
    i32 131, label %80
  ]

69:                                               ; preds = %65
  %70 = load i32, i32* @WM8993_AIF_LRCLK_INV, align 4
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %65, %69
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, 24
  store i32 %75, i32* %8, align 4
  br label %86

76:                                               ; preds = %65
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, 16
  store i32 %78, i32* %8, align 4
  br label %86

79:                                               ; preds = %65
  br label %86

80:                                               ; preds = %65
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, 8
  store i32 %82, i32* %8, align 4
  br label %86

83:                                               ; preds = %65
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %138

86:                                               ; preds = %80, %79, %76, %73
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %89 = and i32 %87, %88
  switch i32 %89, label %126 [
    i32 136, label %90
    i32 135, label %90
    i32 134, label %103
    i32 128, label %103
    i32 131, label %103
  ]

90:                                               ; preds = %86, %86
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %93 = and i32 %91, %92
  switch i32 %93, label %99 [
    i32 129, label %94
    i32 132, label %95
  ]

94:                                               ; preds = %90
  br label %102

95:                                               ; preds = %90
  %96 = load i32, i32* @WM8993_AIF_BCLK_INV, align 4
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %102

99:                                               ; preds = %90
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %138

102:                                              ; preds = %95, %94
  br label %129

103:                                              ; preds = %86, %86, %86
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %106 = and i32 %104, %105
  switch i32 %106, label %122 [
    i32 129, label %107
    i32 133, label %108
    i32 132, label %114
    i32 130, label %118
  ]

107:                                              ; preds = %103
  br label %125

108:                                              ; preds = %103
  %109 = load i32, i32* @WM8993_AIF_BCLK_INV, align 4
  %110 = load i32, i32* @WM8993_AIF_LRCLK_INV, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %8, align 4
  br label %125

114:                                              ; preds = %103
  %115 = load i32, i32* @WM8993_AIF_BCLK_INV, align 4
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %8, align 4
  br label %125

118:                                              ; preds = %103
  %119 = load i32, i32* @WM8993_AIF_LRCLK_INV, align 4
  %120 = load i32, i32* %8, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %8, align 4
  br label %125

122:                                              ; preds = %103
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %138

125:                                              ; preds = %118, %114, %108, %107
  br label %129

126:                                              ; preds = %86
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %138

129:                                              ; preds = %125, %102
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %131 = load i32, i32* @WM8993_AUDIO_INTERFACE_1, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %130, i32 %131, i32 %132)
  %134 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %135 = load i32, i32* @WM8993_AUDIO_INTERFACE_4, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %134, i32 %135, i32 %136)
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %129, %126, %122, %99, %83, %62
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.wm8993_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
