; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.nau8825 = type { i32 }

@HZ = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@NAU8825_REG_DAC_CTRL1 = common dso_local global i32 0, align 4
@NAU8825_DAC_OVERSAMPLE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NAU8825_REG_CLK_DIVIDER = common dso_local global i32 0, align 4
@NAU8825_CLK_DAC_SRC_MASK = common dso_local global i32 0, align 4
@osr_dac_sel = common dso_local global %struct.TYPE_3__* null, align 8
@NAU8825_CLK_DAC_SRC_SFT = common dso_local global i32 0, align 4
@NAU8825_REG_ADC_RATE = common dso_local global i32 0, align 4
@NAU8825_ADC_SYNC_DOWN_MASK = common dso_local global i32 0, align 4
@NAU8825_CLK_ADC_SRC_MASK = common dso_local global i32 0, align 4
@osr_adc_sel = common dso_local global %struct.TYPE_4__* null, align 8
@NAU8825_CLK_ADC_SRC_SFT = common dso_local global i32 0, align 4
@NAU8825_REG_I2S_PCM_CTRL2 = common dso_local global i32 0, align 4
@NAU8825_I2S_MS_MASTER = common dso_local global i32 0, align 4
@NAU8825_I2S_LRC_DIV_MASK = common dso_local global i32 0, align 4
@NAU8825_I2S_BLK_DIV_MASK = common dso_local global i32 0, align 4
@NAU8825_I2S_LRC_DIV_SFT = common dso_local global i32 0, align 4
@NAU8825_I2S_DL_16 = common dso_local global i32 0, align 4
@NAU8825_I2S_DL_20 = common dso_local global i32 0, align 4
@NAU8825_I2S_DL_24 = common dso_local global i32 0, align 4
@NAU8825_I2S_DL_32 = common dso_local global i32 0, align 4
@NAU8825_REG_I2S_PCM_CTRL1 = common dso_local global i32 0, align 4
@NAU8825_I2S_DL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @nau8825_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8825_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.nau8825*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %8, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = call %struct.nau8825* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.nau8825* %19, %struct.nau8825** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.nau8825*, %struct.nau8825** %9, align 8
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 3, %21
  %23 = call i32 @nau8825_sema_acquire(%struct.nau8825* %20, i32 %22)
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %3
  %30 = load %struct.nau8825*, %struct.nau8825** %9, align 8
  %31 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NAU8825_REG_DAC_CTRL1, align 4
  %34 = call i32 @regmap_read(i32 %32, i32 %33, i32* %11)
  %35 = load i32, i32* @NAU8825_DAC_OVERSAMPLE_MASK, align 4
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %11, align 4
  %38 = load %struct.nau8825*, %struct.nau8825** %9, align 8
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %43 = call i32 @params_rate(%struct.snd_pcm_hw_params* %42)
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @nau8825_clock_check(%struct.nau8825* %38, i32 %41, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %29
  %48 = load %struct.nau8825*, %struct.nau8825** %9, align 8
  %49 = call i32 @nau8825_sema_release(%struct.nau8825* %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %188

52:                                               ; preds = %29
  %53 = load %struct.nau8825*, %struct.nau8825** %9, align 8
  %54 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NAU8825_REG_CLK_DIVIDER, align 4
  %57 = load i32, i32* @NAU8825_CLK_DAC_SRC_MASK, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @osr_dac_sel, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NAU8825_CLK_DAC_SRC_SFT, align 4
  %65 = shl i32 %63, %64
  %66 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 %57, i32 %65)
  br label %105

67:                                               ; preds = %3
  %68 = load %struct.nau8825*, %struct.nau8825** %9, align 8
  %69 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @NAU8825_REG_ADC_RATE, align 4
  %72 = call i32 @regmap_read(i32 %70, i32 %71, i32* %11)
  %73 = load i32, i32* @NAU8825_ADC_SYNC_DOWN_MASK, align 4
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %11, align 4
  %76 = load %struct.nau8825*, %struct.nau8825** %9, align 8
  %77 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %81 = call i32 @params_rate(%struct.snd_pcm_hw_params* %80)
  %82 = load i32, i32* %11, align 4
  %83 = call i64 @nau8825_clock_check(%struct.nau8825* %76, i32 %79, i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %67
  %86 = load %struct.nau8825*, %struct.nau8825** %9, align 8
  %87 = call i32 @nau8825_sema_release(%struct.nau8825* %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %188

90:                                               ; preds = %67
  %91 = load %struct.nau8825*, %struct.nau8825** %9, align 8
  %92 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @NAU8825_REG_CLK_DIVIDER, align 4
  %95 = load i32, i32* @NAU8825_CLK_ADC_SRC_MASK, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @osr_adc_sel, align 8
  %97 = load i32, i32* %11, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @NAU8825_CLK_ADC_SRC_SFT, align 4
  %103 = shl i32 %101, %102
  %104 = call i32 @regmap_update_bits(i32 %93, i32 %94, i32 %95, i32 %103)
  br label %105

105:                                              ; preds = %90, %52
  %106 = load %struct.nau8825*, %struct.nau8825** %9, align 8
  %107 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @NAU8825_REG_I2S_PCM_CTRL2, align 4
  %110 = call i32 @regmap_read(i32 %108, i32 %109, i32* %12)
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @NAU8825_I2S_MS_MASTER, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %154

115:                                              ; preds = %105
  %116 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %117 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %116)
  %118 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %119 = call i32 @params_rate(%struct.snd_pcm_hw_params* %118)
  %120 = udiv i32 %117, %119
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ule i32 %121, 32
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  store i32 2, i32* %14, align 4
  br label %139

124:                                              ; preds = %115
  %125 = load i32, i32* %13, align 4
  %126 = icmp ule i32 %125, 64
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 1, i32* %14, align 4
  br label %138

128:                                              ; preds = %124
  %129 = load i32, i32* %13, align 4
  %130 = icmp ule i32 %129, 128
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 0, i32* %14, align 4
  br label %137

132:                                              ; preds = %128
  %133 = load %struct.nau8825*, %struct.nau8825** %9, align 8
  %134 = call i32 @nau8825_sema_release(%struct.nau8825* %133)
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %188

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %127
  br label %139

139:                                              ; preds = %138, %123
  %140 = load %struct.nau8825*, %struct.nau8825** %9, align 8
  %141 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @NAU8825_REG_I2S_PCM_CTRL2, align 4
  %144 = load i32, i32* @NAU8825_I2S_LRC_DIV_MASK, align 4
  %145 = load i32, i32* @NAU8825_I2S_BLK_DIV_MASK, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* %14, align 4
  %148 = add i32 %147, 1
  %149 = load i32, i32* @NAU8825_I2S_LRC_DIV_SFT, align 4
  %150 = shl i32 %148, %149
  %151 = load i32, i32* %14, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @regmap_update_bits(i32 %142, i32 %143, i32 %146, i32 %152)
  br label %154

154:                                              ; preds = %139, %105
  %155 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %156 = call i32 @params_width(%struct.snd_pcm_hw_params* %155)
  switch i32 %156, label %173 [
    i32 16, label %157
    i32 20, label %161
    i32 24, label %165
    i32 32, label %169
  ]

157:                                              ; preds = %154
  %158 = load i32, i32* @NAU8825_I2S_DL_16, align 4
  %159 = load i32, i32* %10, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %10, align 4
  br label %178

161:                                              ; preds = %154
  %162 = load i32, i32* @NAU8825_I2S_DL_20, align 4
  %163 = load i32, i32* %10, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %10, align 4
  br label %178

165:                                              ; preds = %154
  %166 = load i32, i32* @NAU8825_I2S_DL_24, align 4
  %167 = load i32, i32* %10, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %10, align 4
  br label %178

169:                                              ; preds = %154
  %170 = load i32, i32* @NAU8825_I2S_DL_32, align 4
  %171 = load i32, i32* %10, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %10, align 4
  br label %178

173:                                              ; preds = %154
  %174 = load %struct.nau8825*, %struct.nau8825** %9, align 8
  %175 = call i32 @nau8825_sema_release(%struct.nau8825* %174)
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %4, align 4
  br label %188

178:                                              ; preds = %169, %165, %161, %157
  %179 = load %struct.nau8825*, %struct.nau8825** %9, align 8
  %180 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @NAU8825_REG_I2S_PCM_CTRL1, align 4
  %183 = load i32, i32* @NAU8825_I2S_DL_MASK, align 4
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @regmap_update_bits(i32 %181, i32 %182, i32 %183, i32 %184)
  %186 = load %struct.nau8825*, %struct.nau8825** %9, align 8
  %187 = call i32 @nau8825_sema_release(%struct.nau8825* %186)
  store i32 0, i32* %4, align 4
  br label %188

188:                                              ; preds = %178, %173, %132, %85, %47
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local %struct.nau8825* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @nau8825_sema_acquire(%struct.nau8825*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @nau8825_clock_check(%struct.nau8825*, i32, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @nau8825_sema_release(%struct.nau8825*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
