; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_pcm.c_sof_pcm_dai_link_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_pcm.c_sof_pcm_dai_link_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_interval = type { i32, i32 }
%struct.snd_mask = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.snd_sof_dev = type { i32 }
%struct.snd_sof_dai = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"warning: no topology found for BE DAI %s config\0A\00", align 1
@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S24_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S32_LE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"error: No available DAI format!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"rate_min: %d rate_max: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"channels_min: %d channels_max: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"error: invalid fmt %d for DAI type %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"error: invalid DAI type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*, %struct.snd_pcm_hw_params*)* @sof_pcm_dai_link_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_pcm_dai_link_fixup(%struct.snd_soc_pcm_runtime* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca %struct.snd_interval*, align 8
  %8 = alloca %struct.snd_mask*, align 8
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca %struct.snd_sof_dev*, align 8
  %11 = alloca %struct.snd_sof_dai*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %13 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %14 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %12, i32 %13)
  store %struct.snd_interval* %14, %struct.snd_interval** %6, align 8
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %16 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %17 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %15, i32 %16)
  store %struct.snd_interval* %17, %struct.snd_interval** %7, align 8
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %19 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %20 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params* %18, i32 %19)
  store %struct.snd_mask* %20, %struct.snd_mask** %8, align 8
  %21 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %22 = load i32, i32* @DRV_NAME, align 4
  %23 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %21, i32 %22)
  store %struct.snd_soc_component* %23, %struct.snd_soc_component** %9, align 8
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %25 = call %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %24)
  store %struct.snd_sof_dev* %25, %struct.snd_sof_dev** %10, align 8
  %26 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %10, align 8
  %27 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %28 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call %struct.snd_sof_dai* @snd_sof_find_dai(%struct.snd_sof_dev* %26, i8* %32)
  store %struct.snd_sof_dai* %33, %struct.snd_sof_dai** %11, align 8
  %34 = load %struct.snd_sof_dai*, %struct.snd_sof_dai** %11, align 8
  %35 = icmp ne %struct.snd_sof_dai* %34, null
  br i1 %35, label %59, label %36

36:                                               ; preds = %2
  %37 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %10, align 8
  %38 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %41 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @dev_warn(i32 %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %47 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %46, i32 0, i32 0
  store i32 48000, i32* %47, align 4
  %48 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %49 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %48, i32 0, i32 1
  store i32 48000, i32* %49, align 4
  %50 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %51 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %50, i32 0, i32 0
  store i32 2, i32* %51, align 4
  %52 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %53 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %52, i32 0, i32 1
  store i32 2, i32* %53, align 4
  %54 = load %struct.snd_mask*, %struct.snd_mask** %8, align 8
  %55 = call i32 @snd_mask_none(%struct.snd_mask* %54)
  %56 = load %struct.snd_mask*, %struct.snd_mask** %8, align 8
  %57 = load i32, i32* @SNDRV_PCM_FORMAT_S16_LE, align 4
  %58 = call i32 @snd_mask_set_format(%struct.snd_mask* %56, i32 %57)
  store i32 0, i32* %3, align 4
  br label %181

59:                                               ; preds = %2
  %60 = load %struct.snd_mask*, %struct.snd_mask** %8, align 8
  %61 = call i32 @snd_mask_none(%struct.snd_mask* %60)
  %62 = load %struct.snd_sof_dai*, %struct.snd_sof_dai** %11, align 8
  %63 = getelementptr inbounds %struct.snd_sof_dai, %struct.snd_sof_dai* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %79 [
    i32 130, label %67
    i32 129, label %71
    i32 128, label %75
  ]

67:                                               ; preds = %59
  %68 = load %struct.snd_mask*, %struct.snd_mask** %8, align 8
  %69 = load i32, i32* @SNDRV_PCM_FORMAT_S16_LE, align 4
  %70 = call i32 @snd_mask_set_format(%struct.snd_mask* %68, i32 %69)
  br label %86

71:                                               ; preds = %59
  %72 = load %struct.snd_mask*, %struct.snd_mask** %8, align 8
  %73 = load i32, i32* @SNDRV_PCM_FORMAT_S24_LE, align 4
  %74 = call i32 @snd_mask_set_format(%struct.snd_mask* %72, i32 %73)
  br label %86

75:                                               ; preds = %59
  %76 = load %struct.snd_mask*, %struct.snd_mask** %8, align 8
  %77 = load i32, i32* @SNDRV_PCM_FORMAT_S32_LE, align 4
  %78 = call i32 @snd_mask_set_format(%struct.snd_mask* %76, i32 %77)
  br label %86

79:                                               ; preds = %59
  %80 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %10, align 8
  %81 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, ...) @dev_err(i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %181

86:                                               ; preds = %75, %71, %67
  %87 = load %struct.snd_sof_dai*, %struct.snd_sof_dai** %11, align 8
  %88 = getelementptr inbounds %struct.snd_sof_dai, %struct.snd_sof_dai* %87, i32 0, i32 0
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %170 [
    i32 131, label %92
    i32 133, label %145
    i32 132, label %168
    i32 134, label %169
  ]

92:                                               ; preds = %86
  %93 = load %struct.snd_sof_dai*, %struct.snd_sof_dai** %11, align 8
  %94 = getelementptr inbounds %struct.snd_sof_dai, %struct.snd_sof_dai* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %100 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.snd_sof_dai*, %struct.snd_sof_dai** %11, align 8
  %102 = getelementptr inbounds %struct.snd_sof_dai, %struct.snd_sof_dai* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %108 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.snd_sof_dai*, %struct.snd_sof_dai** %11, align 8
  %110 = getelementptr inbounds %struct.snd_sof_dai, %struct.snd_sof_dai* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %116 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.snd_sof_dai*, %struct.snd_sof_dai** %11, align 8
  %118 = getelementptr inbounds %struct.snd_sof_dai, %struct.snd_sof_dai* %117, i32 0, i32 0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %124 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %10, align 8
  %126 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %129 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %132 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @dev_dbg(i32 %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %133)
  %135 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %10, align 8
  %136 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %139 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %142 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @dev_dbg(i32 %137, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %140, i32 %143)
  br label %180

145:                                              ; preds = %86
  %146 = load %struct.snd_sof_dai*, %struct.snd_sof_dai** %11, align 8
  %147 = getelementptr inbounds %struct.snd_sof_dai, %struct.snd_sof_dai* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 129
  br i1 %151, label %152, label %167

152:                                              ; preds = %145
  %153 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %10, align 8
  %154 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.snd_sof_dai*, %struct.snd_sof_dai** %11, align 8
  %157 = getelementptr inbounds %struct.snd_sof_dai, %struct.snd_sof_dai* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.snd_sof_dai*, %struct.snd_sof_dai** %11, align 8
  %162 = getelementptr inbounds %struct.snd_sof_dai, %struct.snd_sof_dai* %161, i32 0, i32 0
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i8*, ...) @dev_err(i32 %155, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %160, i32 %165)
  br label %167

167:                                              ; preds = %152, %145
  br label %180

168:                                              ; preds = %86
  br label %180

169:                                              ; preds = %86
  br label %180

170:                                              ; preds = %86
  %171 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %10, align 8
  %172 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.snd_sof_dai*, %struct.snd_sof_dai** %11, align 8
  %175 = getelementptr inbounds %struct.snd_sof_dai, %struct.snd_sof_dai* %174, i32 0, i32 0
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i32, i8*, ...) @dev_err(i32 %173, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %170, %169, %168, %167, %92
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %79, %36
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_sof_dai* @snd_sof_find_dai(%struct.snd_sof_dev*, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

declare dso_local i32 @snd_mask_none(%struct.snd_mask*) #1

declare dso_local i32 @snd_mask_set_format(%struct.snd_mask*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
