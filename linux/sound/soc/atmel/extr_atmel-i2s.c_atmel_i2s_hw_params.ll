; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-i2s.c_atmel_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-i2s.c_atmel_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.atmel_i2s_dev = type { i32, i32, i32, i32* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@ATMEL_I2SC_MR_FORMAT_I2S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unsupported bus format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@ATMEL_I2SC_MR_MODE_MASTER = common dso_local global i32 0, align 4
@ATMEL_I2SC_MR_MODE_SLAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unsupported master/slave mode\0A\00", align 1
@ATMEL_I2SC_MR_TXMONO = common dso_local global i32 0, align 4
@ATMEL_I2SC_MR_RXMONO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"unsupported number of audio channels\0A\00", align 1
@ATMEL_I2SC_MR_DATALENGTH_8_BITS = common dso_local global i32 0, align 4
@ATMEL_I2SC_MR_DATALENGTH_16_BITS = common dso_local global i32 0, align 4
@ATMEL_I2SC_MR_DATALENGTH_18_BITS = common dso_local global i32 0, align 4
@ATMEL_I2SC_MR_IWS = common dso_local global i32 0, align 4
@ATMEL_I2SC_MR_DATALENGTH_20_BITS = common dso_local global i32 0, align 4
@ATMEL_I2SC_MR_DATALENGTH_24_BITS = common dso_local global i32 0, align 4
@ATMEL_I2SC_MR_DATALENGTH_32_BITS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"unsupported size/endianness for audio samples\0A\00", align 1
@ATMEL_I2SC_MR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @atmel_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.atmel_i2s_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = call %struct.atmel_i2s_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %12)
  store %struct.atmel_i2s_dev* %13, %struct.atmel_i2s_dev** %8, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %8, align 8
  %21 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %29 [
    i32 128, label %25
  ]

25:                                               ; preds = %3
  %26 = load i32, i32* @ATMEL_I2SC_MR_FORMAT_I2S, align 4
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  br label %36

29:                                               ; preds = %3
  %30 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %8, align 8
  %31 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %142

36:                                               ; preds = %25
  %37 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %8, align 8
  %38 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %41 = and i32 %39, %40
  switch i32 %41, label %61 [
    i32 129, label %42
    i32 130, label %55
  ]

42:                                               ; preds = %36
  %43 = load i32, i32* @ATMEL_I2SC_MR_MODE_MASTER, align 4
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  %46 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %8, align 8
  %47 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %48 = call i32 @params_rate(%struct.snd_pcm_hw_params* %47)
  %49 = call i32 @atmel_i2s_get_gck_param(%struct.atmel_i2s_dev* %46, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %142

54:                                               ; preds = %42
  br label %68

55:                                               ; preds = %36
  %56 = load i32, i32* @ATMEL_I2SC_MR_MODE_SLAVE, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %8, align 8
  %60 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %59, i32 0, i32 3
  store i32* null, i32** %60, align 8
  br label %68

61:                                               ; preds = %36
  %62 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %8, align 8
  %63 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %142

68:                                               ; preds = %55, %54
  %69 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %70 = call i32 @params_channels(%struct.snd_pcm_hw_params* %69)
  switch i32 %70, label %84 [
    i32 1, label %71
    i32 2, label %83
  ]

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* @ATMEL_I2SC_MR_TXMONO, align 4
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %10, align 4
  br label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @ATMEL_I2SC_MR_RXMONO, align 4
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %78, %74
  br label %91

83:                                               ; preds = %68
  br label %91

84:                                               ; preds = %68
  %85 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %8, align 8
  %86 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %142

91:                                               ; preds = %83, %82
  %92 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %93 = call i32 @params_format(%struct.snd_pcm_hw_params* %92)
  switch i32 %93, label %128 [
    i32 131, label %94
    i32 137, label %98
    i32 136, label %102
    i32 135, label %108
    i32 134, label %114
    i32 133, label %120
    i32 132, label %124
  ]

94:                                               ; preds = %91
  %95 = load i32, i32* @ATMEL_I2SC_MR_DATALENGTH_8_BITS, align 4
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %135

98:                                               ; preds = %91
  %99 = load i32, i32* @ATMEL_I2SC_MR_DATALENGTH_16_BITS, align 4
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %10, align 4
  br label %135

102:                                              ; preds = %91
  %103 = load i32, i32* @ATMEL_I2SC_MR_DATALENGTH_18_BITS, align 4
  %104 = load i32, i32* @ATMEL_I2SC_MR_IWS, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %135

108:                                              ; preds = %91
  %109 = load i32, i32* @ATMEL_I2SC_MR_DATALENGTH_20_BITS, align 4
  %110 = load i32, i32* @ATMEL_I2SC_MR_IWS, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %10, align 4
  br label %135

114:                                              ; preds = %91
  %115 = load i32, i32* @ATMEL_I2SC_MR_DATALENGTH_24_BITS, align 4
  %116 = load i32, i32* @ATMEL_I2SC_MR_IWS, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %10, align 4
  br label %135

120:                                              ; preds = %91
  %121 = load i32, i32* @ATMEL_I2SC_MR_DATALENGTH_24_BITS, align 4
  %122 = load i32, i32* %10, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %10, align 4
  br label %135

124:                                              ; preds = %91
  %125 = load i32, i32* @ATMEL_I2SC_MR_DATALENGTH_32_BITS, align 4
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  br label %135

128:                                              ; preds = %91
  %129 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %8, align 8
  %130 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @dev_err(i32 %131, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %142

135:                                              ; preds = %124, %120, %114, %108, %102, %98, %94
  %136 = load %struct.atmel_i2s_dev*, %struct.atmel_i2s_dev** %8, align 8
  %137 = getelementptr inbounds %struct.atmel_i2s_dev, %struct.atmel_i2s_dev* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @ATMEL_I2SC_MR, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @regmap_write(i32 %138, i32 %139, i32 %140)
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %135, %128, %84, %61, %52, %29
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local %struct.atmel_i2s_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @atmel_i2s_get_gck_param(%struct.atmel_i2s_dev*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
