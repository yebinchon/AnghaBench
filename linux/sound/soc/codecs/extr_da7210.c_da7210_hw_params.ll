; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7210.c_da7210_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7210.c_da7210_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.da7210_priv = type { i64, i32 }

@DA7210_DAI_SRC_SEL = common dso_local global i32 0, align 4
@DA7210_DAI_OUT_R_SRC = common dso_local global i64 0, align 8
@DA7210_DAI_OUT_L_SRC = common dso_local global i64 0, align 8
@DA7210_DAI_CFG3 = common dso_local global i32 0, align 4
@DA7210_DAI_OE = common dso_local global i64 0, align 8
@DA7210_DAI_EN = common dso_local global i64 0, align 8
@DA7210_DAI_CFG1 = common dso_local global i32 0, align 4
@DA7210_DAI_WORD_S16_LE = common dso_local global i64 0, align 8
@DA7210_DAI_WORD_S20_3LE = common dso_local global i64 0, align 8
@DA7210_DAI_WORD_S24_LE = common dso_local global i64 0, align 8
@DA7210_DAI_WORD_S32_LE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DA7210_PLL_FS_8000 = common dso_local global i64 0, align 8
@DA7210_PLL_FS_11025 = common dso_local global i64 0, align 8
@DA7210_PLL_FS_12000 = common dso_local global i64 0, align 8
@DA7210_PLL_FS_16000 = common dso_local global i64 0, align 8
@DA7210_PLL_FS_22050 = common dso_local global i64 0, align 8
@DA7210_PLL_FS_32000 = common dso_local global i64 0, align 8
@DA7210_PLL_FS_44100 = common dso_local global i64 0, align 8
@DA7210_PLL_FS_48000 = common dso_local global i64 0, align 8
@DA7210_PLL_FS_88200 = common dso_local global i64 0, align 8
@DA7210_PLL_FS_96000 = common dso_local global i64 0, align 8
@DA7210_STARTUP1 = common dso_local global i32 0, align 4
@DA7210_SC_MST_EN = common dso_local global i64 0, align 8
@DA7210_PLL = common dso_local global i32 0, align 4
@DA7210_PLL_FS_MASK = common dso_local global i64 0, align 8
@DA7210_PLL_DIV3 = common dso_local global i32 0, align 4
@DA7210_PLL_BYP = common dso_local global i64 0, align 8
@DA7210_MCLK_SRM_EN = common dso_local global i64 0, align 8
@DA7210_MCLK_DET_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @da7210_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7210_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.da7210_priv*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %8, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %17 = call %struct.da7210_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.da7210_priv* %17, %struct.da7210_priv** %9, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = load i32, i32* @DA7210_DAI_SRC_SEL, align 4
  %20 = load i64, i64* @DA7210_DAI_OUT_R_SRC, align 8
  %21 = load i64, i64* @DA7210_DAI_OUT_L_SRC, align 8
  %22 = or i64 %20, %21
  %23 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %18, i32 %19, i64 %22)
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %25 = load i32, i32* @DA7210_DAI_CFG3, align 4
  %26 = load i64, i64* @DA7210_DAI_OE, align 8
  %27 = load i64, i64* @DA7210_DAI_EN, align 8
  %28 = or i64 %26, %27
  %29 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %24, i32 %25, i64 %28)
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %31 = load i32, i32* @DA7210_DAI_CFG1, align 4
  %32 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %30, i32 %31)
  %33 = and i32 252, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %10, align 8
  %35 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %36 = call i32 @params_width(%struct.snd_pcm_hw_params* %35)
  switch i32 %36, label %53 [
    i32 16, label %37
    i32 20, label %41
    i32 24, label %45
    i32 32, label %49
  ]

37:                                               ; preds = %3
  %38 = load i64, i64* @DA7210_DAI_WORD_S16_LE, align 8
  %39 = load i64, i64* %10, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %10, align 8
  br label %56

41:                                               ; preds = %3
  %42 = load i64, i64* @DA7210_DAI_WORD_S20_3LE, align 8
  %43 = load i64, i64* %10, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %10, align 8
  br label %56

45:                                               ; preds = %3
  %46 = load i64, i64* @DA7210_DAI_WORD_S24_LE, align 8
  %47 = load i64, i64* %10, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %10, align 8
  br label %56

49:                                               ; preds = %3
  %50 = load i64, i64* @DA7210_DAI_WORD_S32_LE, align 8
  %51 = load i64, i64* %10, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %10, align 8
  br label %56

53:                                               ; preds = %3
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %143

56:                                               ; preds = %49, %45, %41, %37
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %58 = load i32, i32* @DA7210_DAI_CFG1, align 4
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %57, i32 %58, i64 %59)
  %61 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %62 = call i32 @params_rate(%struct.snd_pcm_hw_params* %61)
  switch i32 %62, label %83 [
    i32 8000, label %63
    i32 11025, label %65
    i32 12000, label %67
    i32 16000, label %69
    i32 22050, label %71
    i32 32000, label %73
    i32 44100, label %75
    i32 48000, label %77
    i32 88200, label %79
    i32 96000, label %81
  ]

63:                                               ; preds = %56
  %64 = load i64, i64* @DA7210_PLL_FS_8000, align 8
  store i64 %64, i64* %11, align 8
  store i64 3072000, i64* %12, align 8
  br label %86

65:                                               ; preds = %56
  %66 = load i64, i64* @DA7210_PLL_FS_11025, align 8
  store i64 %66, i64* %11, align 8
  store i64 2822400, i64* %12, align 8
  br label %86

67:                                               ; preds = %56
  %68 = load i64, i64* @DA7210_PLL_FS_12000, align 8
  store i64 %68, i64* %11, align 8
  store i64 3072000, i64* %12, align 8
  br label %86

69:                                               ; preds = %56
  %70 = load i64, i64* @DA7210_PLL_FS_16000, align 8
  store i64 %70, i64* %11, align 8
  store i64 3072000, i64* %12, align 8
  br label %86

71:                                               ; preds = %56
  %72 = load i64, i64* @DA7210_PLL_FS_22050, align 8
  store i64 %72, i64* %11, align 8
  store i64 2822400, i64* %12, align 8
  br label %86

73:                                               ; preds = %56
  %74 = load i64, i64* @DA7210_PLL_FS_32000, align 8
  store i64 %74, i64* %11, align 8
  store i64 3072000, i64* %12, align 8
  br label %86

75:                                               ; preds = %56
  %76 = load i64, i64* @DA7210_PLL_FS_44100, align 8
  store i64 %76, i64* %11, align 8
  store i64 2822400, i64* %12, align 8
  br label %86

77:                                               ; preds = %56
  %78 = load i64, i64* @DA7210_PLL_FS_48000, align 8
  store i64 %78, i64* %11, align 8
  store i64 3072000, i64* %12, align 8
  br label %86

79:                                               ; preds = %56
  %80 = load i64, i64* @DA7210_PLL_FS_88200, align 8
  store i64 %80, i64* %11, align 8
  store i64 2822400, i64* %12, align 8
  br label %86

81:                                               ; preds = %56
  %82 = load i64, i64* @DA7210_PLL_FS_96000, align 8
  store i64 %82, i64* %11, align 8
  store i64 3072000, i64* %12, align 8
  br label %86

83:                                               ; preds = %56
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %143

86:                                               ; preds = %81, %79, %77, %75, %73, %71, %69, %67, %65, %63
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %88 = load i32, i32* @DA7210_STARTUP1, align 4
  %89 = load i64, i64* @DA7210_SC_MST_EN, align 8
  %90 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %88, i64 %89, i64 0)
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %92 = load i32, i32* @DA7210_PLL, align 4
  %93 = load i64, i64* @DA7210_PLL_FS_MASK, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %91, i32 %92, i64 %93, i64 %94)
  %96 = load %struct.da7210_priv*, %struct.da7210_priv** %9, align 8
  %97 = getelementptr inbounds %struct.da7210_priv, %struct.da7210_priv* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %126

100:                                              ; preds = %86
  %101 = load %struct.da7210_priv*, %struct.da7210_priv** %9, align 8
  %102 = getelementptr inbounds %struct.da7210_priv, %struct.da7210_priv* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %126

106:                                              ; preds = %100
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %108 = load i32, i32* @DA7210_PLL_DIV3, align 4
  %109 = load i64, i64* @DA7210_PLL_BYP, align 8
  %110 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %107, i32 %108, i64 %109, i64 0)
  %111 = load %struct.da7210_priv*, %struct.da7210_priv** %9, align 8
  %112 = getelementptr inbounds %struct.da7210_priv, %struct.da7210_priv* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %106
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %117 = load i32, i32* @DA7210_PLL, align 4
  %118 = load i64, i64* @DA7210_MCLK_SRM_EN, align 8
  %119 = load i64, i64* @DA7210_MCLK_DET_EN, align 8
  %120 = or i64 %118, %119
  %121 = load i64, i64* @DA7210_MCLK_SRM_EN, align 8
  %122 = load i64, i64* @DA7210_MCLK_DET_EN, align 8
  %123 = or i64 %121, %122
  %124 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %116, i32 %117, i64 %120, i64 %123)
  br label %125

125:                                              ; preds = %115, %106
  br label %137

126:                                              ; preds = %100, %86
  %127 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %128 = load i32, i32* @DA7210_PLL, align 4
  %129 = load i64, i64* @DA7210_MCLK_DET_EN, align 8
  %130 = load i64, i64* @DA7210_MCLK_DET_EN, align 8
  %131 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %127, i32 %128, i64 %129, i64 %130)
  %132 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %133 = load i32, i32* @DA7210_PLL_DIV3, align 4
  %134 = load i64, i64* @DA7210_PLL_BYP, align 8
  %135 = load i64, i64* @DA7210_PLL_BYP, align 8
  %136 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %132, i32 %133, i64 %134, i64 %135)
  br label %137

137:                                              ; preds = %126, %125
  %138 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %139 = load i32, i32* @DA7210_STARTUP1, align 4
  %140 = load i64, i64* @DA7210_SC_MST_EN, align 8
  %141 = load i64, i64* @DA7210_SC_MST_EN, align 8
  %142 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %138, i32 %139, i64 %140, i64 %141)
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %137, %83, %53
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.da7210_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i64) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
