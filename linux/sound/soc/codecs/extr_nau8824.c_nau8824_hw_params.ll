; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.nau8824 = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@NAU8824_REG_DAC_FILTER_CTRL_1 = common dso_local global i32 0, align 4
@NAU8824_DAC_OVERSAMPLE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NAU8824_REG_CLK_DIVIDER = common dso_local global i32 0, align 4
@NAU8824_CLK_DAC_SRC_MASK = common dso_local global i32 0, align 4
@osr_dac_sel = common dso_local global %struct.TYPE_3__* null, align 8
@NAU8824_CLK_DAC_SRC_SFT = common dso_local global i32 0, align 4
@NAU8824_REG_ADC_FILTER_CTRL = common dso_local global i32 0, align 4
@NAU8824_ADC_SYNC_DOWN_MASK = common dso_local global i32 0, align 4
@NAU8824_CLK_ADC_SRC_MASK = common dso_local global i32 0, align 4
@osr_adc_sel = common dso_local global %struct.TYPE_4__* null, align 8
@NAU8824_CLK_ADC_SRC_SFT = common dso_local global i32 0, align 4
@NAU8824_REG_PORT0_I2S_PCM_CTRL_2 = common dso_local global i32 0, align 4
@NAU8824_I2S_MS_MASTER = common dso_local global i32 0, align 4
@NAU8824_I2S_LRC_DIV_MASK = common dso_local global i32 0, align 4
@NAU8824_I2S_BLK_DIV_MASK = common dso_local global i32 0, align 4
@NAU8824_I2S_LRC_DIV_SFT = common dso_local global i32 0, align 4
@NAU8824_I2S_DL_16 = common dso_local global i32 0, align 4
@NAU8824_I2S_DL_20 = common dso_local global i32 0, align 4
@NAU8824_I2S_DL_24 = common dso_local global i32 0, align 4
@NAU8824_I2S_DL_32 = common dso_local global i32 0, align 4
@NAU8824_REG_PORT0_I2S_PCM_CTRL_1 = common dso_local global i32 0, align 4
@NAU8824_I2S_DL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @nau8824_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8824_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.nau8824*, align 8
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
  %19 = call %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.nau8824* %19, %struct.nau8824** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.nau8824*, %struct.nau8824** %9, align 8
  %21 = load i32, i32* @HZ, align 4
  %22 = call i32 @nau8824_sema_acquire(%struct.nau8824* %20, i32 %21)
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %24 = call i32 @params_rate(%struct.snd_pcm_hw_params* %23)
  %25 = load %struct.nau8824*, %struct.nau8824** %9, align 8
  %26 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %3
  %33 = load %struct.nau8824*, %struct.nau8824** %9, align 8
  %34 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NAU8824_REG_DAC_FILTER_CTRL_1, align 4
  %37 = call i32 @regmap_read(i32 %35, i32 %36, i32* %11)
  %38 = load i32, i32* @NAU8824_DAC_OVERSAMPLE_MASK, align 4
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load %struct.nau8824*, %struct.nau8824** %9, align 8
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nau8824*, %struct.nau8824** %9, align 8
  %46 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @nau8824_clock_check(%struct.nau8824* %41, i32 %44, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %32
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %190

54:                                               ; preds = %32
  %55 = load %struct.nau8824*, %struct.nau8824** %9, align 8
  %56 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NAU8824_REG_CLK_DIVIDER, align 4
  %59 = load i32, i32* @NAU8824_CLK_DAC_SRC_MASK, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @osr_dac_sel, align 8
  %61 = load i32, i32* %11, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @NAU8824_CLK_DAC_SRC_SFT, align 4
  %67 = shl i32 %65, %66
  %68 = call i32 @regmap_update_bits(i32 %57, i32 %58, i32 %59, i32 %67)
  br label %106

69:                                               ; preds = %3
  %70 = load %struct.nau8824*, %struct.nau8824** %9, align 8
  %71 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @NAU8824_REG_ADC_FILTER_CTRL, align 4
  %74 = call i32 @regmap_read(i32 %72, i32 %73, i32* %11)
  %75 = load i32, i32* @NAU8824_ADC_SYNC_DOWN_MASK, align 4
  %76 = load i32, i32* %11, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %11, align 4
  %78 = load %struct.nau8824*, %struct.nau8824** %9, align 8
  %79 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nau8824*, %struct.nau8824** %9, align 8
  %83 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i64 @nau8824_clock_check(%struct.nau8824* %78, i32 %81, i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %69
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %190

91:                                               ; preds = %69
  %92 = load %struct.nau8824*, %struct.nau8824** %9, align 8
  %93 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @NAU8824_REG_CLK_DIVIDER, align 4
  %96 = load i32, i32* @NAU8824_CLK_ADC_SRC_MASK, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @osr_adc_sel, align 8
  %98 = load i32, i32* %11, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @NAU8824_CLK_ADC_SRC_SFT, align 4
  %104 = shl i32 %102, %103
  %105 = call i32 @regmap_update_bits(i32 %94, i32 %95, i32 %96, i32 %104)
  br label %106

106:                                              ; preds = %91, %54
  %107 = load %struct.nau8824*, %struct.nau8824** %9, align 8
  %108 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @NAU8824_REG_PORT0_I2S_PCM_CTRL_2, align 4
  %111 = call i32 @regmap_read(i32 %109, i32 %110, i32* %12)
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @NAU8824_I2S_MS_MASTER, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %158

116:                                              ; preds = %106
  %117 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %118 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %117)
  %119 = load %struct.nau8824*, %struct.nau8824** %9, align 8
  %120 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = udiv i32 %118, %121
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp ule i32 %123, 32
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  store i32 3, i32* %14, align 4
  br label %144

126:                                              ; preds = %116
  %127 = load i32, i32* %13, align 4
  %128 = icmp ule i32 %127, 64
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 2, i32* %14, align 4
  br label %143

130:                                              ; preds = %126
  %131 = load i32, i32* %13, align 4
  %132 = icmp ule i32 %131, 128
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 1, i32* %14, align 4
  br label %142

134:                                              ; preds = %130
  %135 = load i32, i32* %13, align 4
  %136 = icmp ule i32 %135, 256
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 0, i32* %14, align 4
  br label %141

138:                                              ; preds = %134
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %190

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %141, %133
  br label %143

143:                                              ; preds = %142, %129
  br label %144

144:                                              ; preds = %143, %125
  %145 = load %struct.nau8824*, %struct.nau8824** %9, align 8
  %146 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @NAU8824_REG_PORT0_I2S_PCM_CTRL_2, align 4
  %149 = load i32, i32* @NAU8824_I2S_LRC_DIV_MASK, align 4
  %150 = load i32, i32* @NAU8824_I2S_BLK_DIV_MASK, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @NAU8824_I2S_LRC_DIV_SFT, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* %14, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @regmap_update_bits(i32 %147, i32 %148, i32 %151, i32 %156)
  br label %158

158:                                              ; preds = %144, %106
  %159 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %160 = call i32 @params_width(%struct.snd_pcm_hw_params* %159)
  switch i32 %160, label %177 [
    i32 16, label %161
    i32 20, label %165
    i32 24, label %169
    i32 32, label %173
  ]

161:                                              ; preds = %158
  %162 = load i32, i32* @NAU8824_I2S_DL_16, align 4
  %163 = load i32, i32* %10, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %10, align 4
  br label %180

165:                                              ; preds = %158
  %166 = load i32, i32* @NAU8824_I2S_DL_20, align 4
  %167 = load i32, i32* %10, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %10, align 4
  br label %180

169:                                              ; preds = %158
  %170 = load i32, i32* @NAU8824_I2S_DL_24, align 4
  %171 = load i32, i32* %10, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %10, align 4
  br label %180

173:                                              ; preds = %158
  %174 = load i32, i32* @NAU8824_I2S_DL_32, align 4
  %175 = load i32, i32* %10, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %10, align 4
  br label %180

177:                                              ; preds = %158
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  br label %190

180:                                              ; preds = %173, %169, %165, %161
  %181 = load %struct.nau8824*, %struct.nau8824** %9, align 8
  %182 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @NAU8824_REG_PORT0_I2S_PCM_CTRL_1, align 4
  %185 = load i32, i32* @NAU8824_I2S_DL_MASK, align 4
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @regmap_update_bits(i32 %183, i32 %184, i32 %185, i32 %186)
  %188 = load %struct.nau8824*, %struct.nau8824** %9, align 8
  %189 = call i32 @nau8824_sema_release(%struct.nau8824* %188)
  store i32 0, i32* %4, align 4
  br label %190

190:                                              ; preds = %180, %177, %138, %88, %51
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @nau8824_sema_acquire(%struct.nau8824*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @nau8824_clock_check(%struct.nau8824*, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @nau8824_sema_release(%struct.nau8824*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
