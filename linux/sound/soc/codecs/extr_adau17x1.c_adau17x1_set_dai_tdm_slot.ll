; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_set_dai_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_set_dai_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.adau = type { i32*, i32, i64*, i32 }

@ADAU17X1_SERIAL_PORT0_STEREO = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT0_TDM4 = common dso_local global i32 0, align 4
@ADAU1361 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT0_TDM8 = common dso_local global i32 0, align 4
@ADAU1761 = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT1_BCLK32 = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT1_BCLK64 = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT1_BCLK48 = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT1_BCLK128 = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT1_BCLK256 = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ADAU17X1_CONVERTER0 = common dso_local global i32 0, align 4
@ADAU17X1_CONVERTER0_DAC_PAIR_MASK = common dso_local global i32 0, align 4
@ADAU17X1_CONVERTER1 = common dso_local global i32 0, align 4
@ADAU17X1_CONVERTER1_ADC_PAIR_MASK = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT0 = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT0_TDM_MASK = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT1 = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_PORT1_BCLK_MASK = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_INPUT_ROUTE = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_OUTPUT_ROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @adau17x1_set_dai_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau17x1_set_dai_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.adau*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.adau* @snd_soc_component_get_drvdata(i32 %19)
  store %struct.adau* %20, %struct.adau** %12, align 8
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 2, i32* %10, align 4
  store i32 3, i32* %9, align 4
  store i32 3, i32* %8, align 4
  store i32 32, i32* %11, align 4
  br label %24

24:                                               ; preds = %23, %5
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %41 [
    i32 2, label %26
    i32 4, label %28
    i32 8, label %30
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @ADAU17X1_SERIAL_PORT0_STEREO, align 4
  store i32 %27, i32* %13, align 4
  br label %44

28:                                               ; preds = %24
  %29 = load i32, i32* @ADAU17X1_SERIAL_PORT0_TDM4, align 4
  store i32 %29, i32* %13, align 4
  br label %44

30:                                               ; preds = %24
  %31 = load %struct.adau*, %struct.adau** %12, align 8
  %32 = getelementptr inbounds %struct.adau, %struct.adau* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ADAU1361, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %223

39:                                               ; preds = %30
  %40 = load i32, i32* @ADAU17X1_SERIAL_PORT0_TDM8, align 4
  store i32 %40, i32* %13, align 4
  br label %44

41:                                               ; preds = %24
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %223

44:                                               ; preds = %39, %28, %26
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 %45, %46
  switch i32 %47, label %76 [
    i32 32, label %48
    i32 64, label %59
    i32 48, label %61
    i32 128, label %63
    i32 256, label %65
  ]

48:                                               ; preds = %44
  %49 = load %struct.adau*, %struct.adau** %12, align 8
  %50 = getelementptr inbounds %struct.adau, %struct.adau* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ADAU1761, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %223

57:                                               ; preds = %48
  %58 = load i32, i32* @ADAU17X1_SERIAL_PORT1_BCLK32, align 4
  store i32 %58, i32* %14, align 4
  br label %79

59:                                               ; preds = %44
  %60 = load i32, i32* @ADAU17X1_SERIAL_PORT1_BCLK64, align 4
  store i32 %60, i32* %14, align 4
  br label %79

61:                                               ; preds = %44
  %62 = load i32, i32* @ADAU17X1_SERIAL_PORT1_BCLK48, align 4
  store i32 %62, i32* %14, align 4
  br label %79

63:                                               ; preds = %44
  %64 = load i32, i32* @ADAU17X1_SERIAL_PORT1_BCLK128, align 4
  store i32 %64, i32* %14, align 4
  br label %79

65:                                               ; preds = %44
  %66 = load %struct.adau*, %struct.adau** %12, align 8
  %67 = getelementptr inbounds %struct.adau, %struct.adau* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ADAU1361, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %223

74:                                               ; preds = %65
  %75 = load i32, i32* @ADAU17X1_SERIAL_PORT1_BCLK256, align 4
  store i32 %75, i32* %14, align 4
  br label %79

76:                                               ; preds = %44
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %223

79:                                               ; preds = %74, %63, %61, %59, %57
  %80 = load i32, i32* %9, align 4
  switch i32 %80, label %109 [
    i32 3, label %81
    i32 12, label %88
    i32 48, label %95
    i32 192, label %102
  ]

81:                                               ; preds = %79
  %82 = call i32 @ADAU17X1_CONVERTER1_ADC_PAIR(i32 1)
  store i32 %82, i32* %16, align 4
  %83 = load %struct.adau*, %struct.adau** %12, align 8
  %84 = getelementptr inbounds %struct.adau, %struct.adau* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 0, i32* %87, align 4
  br label %112

88:                                               ; preds = %79
  %89 = call i32 @ADAU17X1_CONVERTER1_ADC_PAIR(i32 2)
  store i32 %89, i32* %16, align 4
  %90 = load %struct.adau*, %struct.adau** %12, align 8
  %91 = getelementptr inbounds %struct.adau, %struct.adau* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32 1, i32* %94, align 4
  br label %112

95:                                               ; preds = %79
  %96 = call i32 @ADAU17X1_CONVERTER1_ADC_PAIR(i32 3)
  store i32 %96, i32* %16, align 4
  %97 = load %struct.adau*, %struct.adau** %12, align 8
  %98 = getelementptr inbounds %struct.adau, %struct.adau* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32 2, i32* %101, align 4
  br label %112

102:                                              ; preds = %79
  %103 = call i32 @ADAU17X1_CONVERTER1_ADC_PAIR(i32 4)
  store i32 %103, i32* %16, align 4
  %104 = load %struct.adau*, %struct.adau** %12, align 8
  %105 = getelementptr inbounds %struct.adau, %struct.adau* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 3, i32* %108, align 4
  br label %112

109:                                              ; preds = %79
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %223

112:                                              ; preds = %102, %95, %88, %81
  %113 = load i32, i32* %8, align 4
  switch i32 %113, label %142 [
    i32 3, label %114
    i32 12, label %121
    i32 48, label %128
    i32 192, label %135
  ]

114:                                              ; preds = %112
  %115 = call i32 @ADAU17X1_CONVERTER0_DAC_PAIR(i32 1)
  store i32 %115, i32* %15, align 4
  %116 = load %struct.adau*, %struct.adau** %12, align 8
  %117 = getelementptr inbounds %struct.adau, %struct.adau* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32 0, i32* %120, align 4
  br label %145

121:                                              ; preds = %112
  %122 = call i32 @ADAU17X1_CONVERTER0_DAC_PAIR(i32 2)
  store i32 %122, i32* %15, align 4
  %123 = load %struct.adau*, %struct.adau** %12, align 8
  %124 = getelementptr inbounds %struct.adau, %struct.adau* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32 1, i32* %127, align 4
  br label %145

128:                                              ; preds = %112
  %129 = call i32 @ADAU17X1_CONVERTER0_DAC_PAIR(i32 3)
  store i32 %129, i32* %15, align 4
  %130 = load %struct.adau*, %struct.adau** %12, align 8
  %131 = getelementptr inbounds %struct.adau, %struct.adau* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32 2, i32* %134, align 4
  br label %145

135:                                              ; preds = %112
  %136 = call i32 @ADAU17X1_CONVERTER0_DAC_PAIR(i32 4)
  store i32 %136, i32* %15, align 4
  %137 = load %struct.adau*, %struct.adau** %12, align 8
  %138 = getelementptr inbounds %struct.adau, %struct.adau* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32 3, i32* %141, align 4
  br label %145

142:                                              ; preds = %112
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %6, align 4
  br label %223

145:                                              ; preds = %135, %128, %121, %114
  %146 = load %struct.adau*, %struct.adau** %12, align 8
  %147 = getelementptr inbounds %struct.adau, %struct.adau* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @ADAU17X1_CONVERTER0, align 4
  %150 = load i32, i32* @ADAU17X1_CONVERTER0_DAC_PAIR_MASK, align 4
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @regmap_update_bits(i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load %struct.adau*, %struct.adau** %12, align 8
  %154 = getelementptr inbounds %struct.adau, %struct.adau* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @ADAU17X1_CONVERTER1, align 4
  %157 = load i32, i32* @ADAU17X1_CONVERTER1_ADC_PAIR_MASK, align 4
  %158 = load i32, i32* %16, align 4
  %159 = call i32 @regmap_update_bits(i32 %155, i32 %156, i32 %157, i32 %158)
  %160 = load %struct.adau*, %struct.adau** %12, align 8
  %161 = getelementptr inbounds %struct.adau, %struct.adau* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @ADAU17X1_SERIAL_PORT0, align 4
  %164 = load i32, i32* @ADAU17X1_SERIAL_PORT0_TDM_MASK, align 4
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @regmap_update_bits(i32 %162, i32 %163, i32 %164, i32 %165)
  %167 = load %struct.adau*, %struct.adau** %12, align 8
  %168 = getelementptr inbounds %struct.adau, %struct.adau* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @ADAU17X1_SERIAL_PORT1, align 4
  %171 = load i32, i32* @ADAU17X1_SERIAL_PORT1_BCLK_MASK, align 4
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @regmap_update_bits(i32 %169, i32 %170, i32 %171, i32 %172)
  %174 = load %struct.adau*, %struct.adau** %12, align 8
  %175 = call i32 @adau17x1_has_dsp(%struct.adau* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %145
  store i32 0, i32* %6, align 4
  br label %223

178:                                              ; preds = %145
  %179 = load %struct.adau*, %struct.adau** %12, align 8
  %180 = getelementptr inbounds %struct.adau, %struct.adau* %179, i32 0, i32 2
  %181 = load i64*, i64** %180, align 8
  %182 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %183 = getelementptr inbounds i64, i64* %181, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %178
  %187 = load %struct.adau*, %struct.adau** %12, align 8
  %188 = getelementptr inbounds %struct.adau, %struct.adau* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @ADAU17X1_SERIAL_INPUT_ROUTE, align 4
  %191 = load %struct.adau*, %struct.adau** %12, align 8
  %192 = getelementptr inbounds %struct.adau, %struct.adau* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %196, 2
  %198 = add nsw i32 %197, 1
  %199 = call i32 @regmap_write(i32 %189, i32 %190, i32 %198)
  br label %200

200:                                              ; preds = %186, %178
  %201 = load %struct.adau*, %struct.adau** %12, align 8
  %202 = getelementptr inbounds %struct.adau, %struct.adau* %201, i32 0, i32 2
  %203 = load i64*, i64** %202, align 8
  %204 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %205 = getelementptr inbounds i64, i64* %203, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %200
  %209 = load %struct.adau*, %struct.adau** %12, align 8
  %210 = getelementptr inbounds %struct.adau, %struct.adau* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @ADAU17X1_SERIAL_OUTPUT_ROUTE, align 4
  %213 = load %struct.adau*, %struct.adau** %12, align 8
  %214 = getelementptr inbounds %struct.adau, %struct.adau* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = mul nsw i32 %218, 2
  %220 = add nsw i32 %219, 1
  %221 = call i32 @regmap_write(i32 %211, i32 %212, i32 %220)
  br label %222

222:                                              ; preds = %208, %200
  store i32 0, i32* %6, align 4
  br label %223

223:                                              ; preds = %222, %177, %142, %109, %76, %71, %54, %41, %36
  %224 = load i32, i32* %6, align 4
  ret i32 %224
}

declare dso_local %struct.adau* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @ADAU17X1_CONVERTER1_ADC_PAIR(i32) #1

declare dso_local i32 @ADAU17X1_CONVERTER0_DAC_PAIR(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @adau17x1_has_dsp(%struct.adau*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
