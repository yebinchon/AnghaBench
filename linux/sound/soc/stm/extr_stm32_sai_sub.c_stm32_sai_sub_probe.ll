; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_sub_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_sub_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dmaengine_pcm_config = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.stm32_sai_sub_data = type { i64, %struct.TYPE_13__, %struct.TYPE_12__*, i32, i32, %struct.platform_device* }
%struct.TYPE_12__ = type { i32 }
%struct.of_device_id = type { i64 }

@stm32_sai_pcm_config = common dso_local global %struct.snd_dmaengine_pcm_config zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stm32_sai_sub_ids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Parent device data not available\0A\00", align 1
@stm32_sai_playback_dai = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@stm32_sai_capture_dai = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@stm32_sai_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"IRQ request returned %d\0A\00", align 1
@stm32_component = common dso_local global i32 0, align 4
@stm32_sai_pcm_config_spdif = common dso_local global %struct.snd_dmaengine_pcm_config zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Could not register pcm dma\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_sai_sub_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_sub_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stm32_sai_sub_data*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.snd_dmaengine_pcm_config*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.snd_dmaengine_pcm_config* @stm32_sai_pcm_config, %struct.snd_dmaengine_pcm_config** %6, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.stm32_sai_sub_data* @devm_kzalloc(%struct.TYPE_14__* %9, i32 40, i32 %10)
  store %struct.stm32_sai_sub_data* %11, %struct.stm32_sai_sub_data** %4, align 8
  %12 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %13 = icmp ne %struct.stm32_sai_sub_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %139

17:                                               ; preds = %1
  %18 = load i32, i32* @stm32_sai_sub_ids, align 4
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call %struct.of_device_id* @of_match_device(i32 %18, %struct.TYPE_14__* %20)
  store %struct.of_device_id* %21, %struct.of_device_id** %5, align 8
  %22 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %23 = icmp ne %struct.of_device_id* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %139

27:                                               ; preds = %17
  %28 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %32 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %35 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %34, i32 0, i32 5
  store %struct.platform_device* %33, %struct.platform_device** %35, align 8
  %36 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %37 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %36, i32 0, i32 4
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %40 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %39, i32 0, i32 3
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %44 = call i32 @platform_set_drvdata(%struct.platform_device* %42, %struct.stm32_sai_sub_data* %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_12__* @dev_get_drvdata(i32 %48)
  %50 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %51 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %50, i32 0, i32 2
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %51, align 8
  %52 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %53 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %52, i32 0, i32 2
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = icmp ne %struct.TYPE_12__* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %27
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %139

62:                                               ; preds = %27
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %65 = call i32 @stm32_sai_sub_parse_of(%struct.platform_device* %63, %struct.stm32_sai_sub_data* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %139

70:                                               ; preds = %62
  %71 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %72 = call i64 @STM_SAI_IS_PLAYBACK(%struct.stm32_sai_sub_data* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %76 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %75, i32 0, i32 1
  %77 = bitcast %struct.TYPE_13__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 4 bitcast (%struct.TYPE_13__* @stm32_sai_playback_dai to i8*), i64 4, i1 false)
  br label %82

78:                                               ; preds = %70
  %79 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %80 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %79, i32 0, i32 1
  %81 = bitcast %struct.TYPE_13__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 4 bitcast (%struct.TYPE_13__* @stm32_sai_capture_dai to i8*), i64 4, i1 false)
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_name(%struct.TYPE_14__* %84)
  %86 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %87 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %92 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %91, i32 0, i32 2
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @stm32_sai_isr, align 4
  %97 = load i32, i32* @IRQF_SHARED, align 4
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @dev_name(%struct.TYPE_14__* %99)
  %101 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %102 = call i32 @devm_request_irq(%struct.TYPE_14__* %90, i32 %95, i32 %96, i32 %97, i32 %100, %struct.stm32_sai_sub_data* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %82
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load i32, i32* %7, align 4
  %109 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %2, align 4
  br label %139

111:                                              ; preds = %82
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %115 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %114, i32 0, i32 1
  %116 = call i32 @devm_snd_soc_register_component(%struct.TYPE_14__* %113, i32* @stm32_component, %struct.TYPE_13__* %115, i32 1)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %2, align 4
  br label %139

121:                                              ; preds = %111
  %122 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %123 = call i64 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store %struct.snd_dmaengine_pcm_config* @stm32_sai_pcm_config_spdif, %struct.snd_dmaengine_pcm_config** %6, align 8
  br label %126

126:                                              ; preds = %125, %121
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %6, align 8
  %130 = call i32 @devm_snd_dmaengine_pcm_register(%struct.TYPE_14__* %128, %struct.snd_dmaengine_pcm_config* %129, i32 0)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %139

138:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %133, %119, %105, %68, %56, %24, %14
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.stm32_sai_sub_data* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32_sai_sub_data*) #1

declare dso_local %struct.TYPE_12__* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @stm32_sai_sub_parse_of(%struct.platform_device*, %struct.stm32_sai_sub_data*) #1

declare dso_local i64 @STM_SAI_IS_PLAYBACK(%struct.stm32_sai_sub_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_name(%struct.TYPE_14__*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_14__*, i32, i32, i32, i32, %struct.stm32_sai_sub_data*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_14__*, i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data*) #1

declare dso_local i32 @devm_snd_dmaengine_pcm_register(%struct.TYPE_14__*, %struct.snd_dmaengine_pcm_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
