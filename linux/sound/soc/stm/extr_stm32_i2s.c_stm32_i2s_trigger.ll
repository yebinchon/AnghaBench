; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.stm32_i2s_data = type { i32, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"start I2S %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@I2S_CFG1_RXDMAEN = common dso_local global i32 0, align 4
@I2S_CFG1_TXDMAEN = common dso_local global i32 0, align 4
@STM32_I2S_CFG1_REG = common dso_local global i32 0, align 4
@STM32_I2S_CR1_REG = common dso_local global i32 0, align 4
@I2S_CR1_SPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Error %d enabling I2S\0A\00", align 1
@I2S_CR1_CSTART = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Error %d starting I2S\0A\00", align 1
@STM32_I2S_IFCR_REG = common dso_local global i32 0, align 4
@I2S_IFCR_MASK = common dso_local global i32 0, align 4
@I2S_IER_UDRIE = common dso_local global i32 0, align 4
@I2S_IER_OVRIE = common dso_local global i32 0, align 4
@STM32_I2S_TXDR_REG = common dso_local global i32 0, align 4
@I2S_IER_TIFREIE = common dso_local global i32 0, align 4
@STM32_I2S_IER_REG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"stop I2S %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Error %d disabling I2S\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @stm32_i2s_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_i2s_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.stm32_i2s_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = call %struct.stm32_i2s_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.stm32_i2s_data* %14, %struct.stm32_i2s_data** %8, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %206 [
    i32 130, label %22
    i32 131, label %22
    i32 132, label %22
    i32 129, label %129
    i32 128, label %129
    i32 133, label %129
  ]

22:                                               ; preds = %3, %3, %3
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %30 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @I2S_CFG1_RXDMAEN, align 4
  %32 = load i32, i32* @I2S_CFG1_TXDMAEN, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %35 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @STM32_I2S_CFG1_REG, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %42 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @STM32_I2S_CR1_REG, align 4
  %45 = load i32, i32* @I2S_CR1_SPE, align 4
  %46 = load i32, i32* @I2S_CR1_SPE, align 4
  %47 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %22
  %51 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %4, align 4
  br label %210

57:                                               ; preds = %22
  %58 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %59 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @STM32_I2S_CR1_REG, align 4
  %62 = load i32, i32* @I2S_CR1_CSTART, align 4
  %63 = load i32, i32* @I2S_CR1_CSTART, align 4
  %64 = call i32 @regmap_write_bits(i32 %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %69 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %4, align 4
  br label %210

74:                                               ; preds = %57
  %75 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %76 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @STM32_I2S_IFCR_REG, align 4
  %79 = load i32, i32* @I2S_IFCR_MASK, align 4
  %80 = load i32, i32* @I2S_IFCR_MASK, align 4
  %81 = call i32 @regmap_write_bits(i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %83 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %82, i32 0, i32 2
  %84 = call i32 @spin_lock(i32* %83)
  %85 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %86 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %74
  %92 = load i32, i32* @I2S_IER_UDRIE, align 4
  store i32 %92, i32* %11, align 4
  br label %110

93:                                               ; preds = %74
  %94 = load i32, i32* @I2S_IER_OVRIE, align 4
  store i32 %94, i32* %11, align 4
  %95 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %96 = call i32 @STM32_I2S_IS_MASTER(%struct.stm32_i2s_data* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %100 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %105 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @STM32_I2S_TXDR_REG, align 4
  %108 = call i32 @regmap_write(i32 %106, i32 %107, i32 0)
  br label %109

109:                                              ; preds = %103, %98, %93
  br label %110

110:                                              ; preds = %109, %91
  %111 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %112 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %111, i32 0, i32 2
  %113 = call i32 @spin_unlock(i32* %112)
  %114 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %115 = call i32 @STM32_I2S_IS_SLAVE(%struct.stm32_i2s_data* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* @I2S_IER_TIFREIE, align 4
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %117, %110
  %122 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %123 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @STM32_I2S_IER_REG, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @regmap_update_bits(i32 %124, i32 %125, i32 %126, i32 %127)
  br label %209

129:                                              ; preds = %3, %3, %3
  %130 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %131 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %137 = call i32 @dev_dbg(i32 %132, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %136)
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %129
  %141 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %142 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @STM32_I2S_IER_REG, align 4
  %145 = load i32, i32* @I2S_IER_UDRIE, align 4
  %146 = load i32, i32* @I2S_IER_UDRIE, align 4
  %147 = xor i32 %146, -1
  %148 = call i32 @regmap_update_bits(i32 %143, i32 %144, i32 %145, i32 %147)
  br label %158

149:                                              ; preds = %129
  %150 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %151 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @STM32_I2S_IER_REG, align 4
  %154 = load i32, i32* @I2S_IER_OVRIE, align 4
  %155 = load i32, i32* @I2S_IER_OVRIE, align 4
  %156 = xor i32 %155, -1
  %157 = call i32 @regmap_update_bits(i32 %152, i32 %153, i32 %154, i32 %156)
  br label %158

158:                                              ; preds = %149, %140
  %159 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %160 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %159, i32 0, i32 2
  %161 = call i32 @spin_lock(i32* %160)
  %162 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %163 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %163, align 4
  %166 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %167 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %158
  %171 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %172 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %171, i32 0, i32 2
  %173 = call i32 @spin_unlock(i32* %172)
  br label %209

174:                                              ; preds = %158
  %175 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %176 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @STM32_I2S_CR1_REG, align 4
  %179 = load i32, i32* @I2S_CR1_SPE, align 4
  %180 = call i32 @regmap_update_bits(i32 %177, i32 %178, i32 %179, i32 0)
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %174
  %184 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %185 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @dev_err(i32 %186, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %187)
  %189 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %190 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %189, i32 0, i32 2
  %191 = call i32 @spin_unlock(i32* %190)
  %192 = load i32, i32* %12, align 4
  store i32 %192, i32* %4, align 4
  br label %210

193:                                              ; preds = %174
  %194 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %195 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %194, i32 0, i32 2
  %196 = call i32 @spin_unlock(i32* %195)
  %197 = load i32, i32* @I2S_CFG1_RXDMAEN, align 4
  %198 = load i32, i32* @I2S_CFG1_TXDMAEN, align 4
  %199 = or i32 %197, %198
  store i32 %199, i32* %10, align 4
  %200 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %201 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @STM32_I2S_CFG1_REG, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @regmap_update_bits(i32 %202, i32 %203, i32 %204, i32 0)
  br label %209

206:                                              ; preds = %3
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %4, align 4
  br label %210

209:                                              ; preds = %193, %170, %121
  store i32 0, i32* %4, align 4
  br label %210

210:                                              ; preds = %209, %206, %183, %67, %50
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local %struct.stm32_i2s_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @STM32_I2S_IS_MASTER(%struct.stm32_i2s_data*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @STM32_I2S_IS_SLAVE(%struct.stm32_i2s_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
