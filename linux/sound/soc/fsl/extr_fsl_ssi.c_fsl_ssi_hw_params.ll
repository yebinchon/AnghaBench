; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.fsl_ssi = type { i32, i32, i64, i64, i32, %struct.regmap* }
%struct.regmap = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SSI_SCR_I2S_MODE_NORMAL = common dso_local global i32 0, align 4
@SSI_SCR_NET = common dso_local global i32 0, align 4
@REG_SSI_SCR = common dso_local global i32 0, align 4
@SSI_SCR_I2S_NET_MASK = common dso_local global i32 0, align 4
@SSI_SxCCR_WL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @fsl_ssi_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_ssi_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fsl_ssi*, align 8
  %11 = alloca %struct.regmap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %24 = call %struct.fsl_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %23)
  store %struct.fsl_ssi* %24, %struct.fsl_ssi** %10, align 8
  %25 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %26 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %25, i32 0, i32 5
  %27 = load %struct.regmap*, %struct.regmap** %26, align 8
  store %struct.regmap* %27, %struct.regmap** %11, align 8
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %29 = call i32 @params_channels(%struct.snd_pcm_hw_params* %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %31 = call i32 @params_width(%struct.snd_pcm_hw_params* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @SSI_SxCCR_WL(i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %35 = call i64 @fsl_ssi_is_i2s_master(%struct.fsl_ssi* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %75

37:                                               ; preds = %3
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %39 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %40 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %41 = call i32 @fsl_ssi_set_bclk(%struct.snd_pcm_substream* %38, %struct.snd_soc_dai* %39, %struct.snd_pcm_hw_params* %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %4, align 4
  br label %132

46:                                               ; preds = %37
  %47 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %48 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @BIT(i64 %52)
  %54 = and i32 %49, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %46
  %57 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %58 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @clk_prepare_enable(i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %4, align 4
  br label %132

65:                                               ; preds = %56
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @BIT(i64 %68)
  %70 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %71 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %65, %46
  br label %75

75:                                               ; preds = %74, %3
  %76 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %77 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %82 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %132

86:                                               ; preds = %80, %75
  %87 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %88 = call i32 @fsl_ssi_is_ac97(%struct.fsl_ssi* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %115, label %90

90:                                               ; preds = %86
  %91 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %92 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %16, align 4
  %94 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %95 = call i64 @fsl_ssi_is_i2s_cbm_cfs(%struct.fsl_ssi* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load i32, i32* %13, align 4
  %99 = icmp eq i32 %98, 16
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* @SSI_SCR_I2S_MODE_NORMAL, align 4
  %102 = load i32, i32* @SSI_SCR_NET, align 4
  %103 = or i32 %101, %102
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %100, %97, %90
  %105 = load i32, i32* %12, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* @SSI_SCR_I2S_MODE_NORMAL, align 4
  store i32 %108, i32* %16, align 4
  br label %109

109:                                              ; preds = %107, %104
  %110 = load %struct.regmap*, %struct.regmap** %11, align 8
  %111 = load i32, i32* @REG_SSI_SCR, align 4
  %112 = load i32, i32* @SSI_SCR_I2S_NET_MASK, align 4
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @regmap_update_bits(%struct.regmap* %110, i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %109, %86
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %120 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br label %123

123:                                              ; preds = %118, %115
  %124 = phi i1 [ true, %115 ], [ %122, %118 ]
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %8, align 4
  %126 = load %struct.regmap*, %struct.regmap** %11, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @REG_SSI_SxCCR(i32 %127)
  %129 = load i32, i32* @SSI_SxCCR_WL_MASK, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @regmap_update_bits(%struct.regmap* %126, i32 %128, i32 %129, i32 %130)
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %123, %85, %63, %44
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local %struct.fsl_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @SSI_SxCCR_WL(i32) #1

declare dso_local i64 @fsl_ssi_is_i2s_master(%struct.fsl_ssi*) #1

declare dso_local i32 @fsl_ssi_set_bclk(%struct.snd_pcm_substream*, %struct.snd_soc_dai*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @fsl_ssi_is_ac97(%struct.fsl_ssi*) #1

declare dso_local i64 @fsl_ssi_is_i2s_cbm_cfs(%struct.fsl_ssi*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @REG_SSI_SxCCR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
