; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/txx9/extr_txx9aclc.c_txx9aclc_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/txx9/extr_txx9aclc.c_txx9aclc_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.snd_pcm*, %struct.snd_soc_dai*, %struct.TYPE_3__* }
%struct.snd_pcm = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.TYPE_3__ = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.platform_device = type { i32 }
%struct.txx9aclc_soc_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.resource*, i32 }
%struct.resource = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@IORESOURCE_DMA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @txx9aclc_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txx9aclc_pcm_new(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.txx9aclc_soc_device*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.snd_card*, %struct.snd_card** %16, align 8
  store %struct.snd_card* %17, %struct.snd_card** %4, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %18, i32 0, i32 1
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %19, align 8
  store %struct.snd_soc_dai* %20, %struct.snd_soc_dai** %5, align 8
  %21 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %22 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %21, i32 0, i32 0
  %23 = load %struct.snd_pcm*, %struct.snd_pcm** %22, align 8
  store %struct.snd_pcm* %23, %struct.snd_pcm** %6, align 8
  %24 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %25 = load i32, i32* @DRV_NAME, align 4
  %26 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %24, i32 %25)
  store %struct.snd_soc_component* %26, %struct.snd_soc_component** %7, align 8
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %28 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.platform_device* @to_platform_device(i32 %29)
  store %struct.platform_device* %30, %struct.platform_device** %8, align 8
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %32 = call %struct.txx9aclc_soc_device* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %31)
  store %struct.txx9aclc_soc_device* %32, %struct.txx9aclc_soc_device** %9, align 8
  %33 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %34 = load %struct.txx9aclc_soc_device*, %struct.txx9aclc_soc_device** %9, align 8
  %35 = getelementptr inbounds %struct.txx9aclc_soc_device, %struct.txx9aclc_soc_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i32 %33, i32* %38, align 8
  %39 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %40 = load %struct.txx9aclc_soc_device*, %struct.txx9aclc_soc_device** %9, align 8
  %41 = getelementptr inbounds %struct.txx9aclc_soc_device, %struct.txx9aclc_soc_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32 %39, i32* %44, align 8
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %79, %1
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %82

48:                                               ; preds = %45
  %49 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %50 = load i32, i32* @IORESOURCE_DMA, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call %struct.resource* @platform_get_resource(%struct.platform_device* %49, i32 %50, i32 %51)
  store %struct.resource* %52, %struct.resource** %10, align 8
  %53 = load %struct.resource*, %struct.resource** %10, align 8
  %54 = icmp ne %struct.resource* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  br label %89

58:                                               ; preds = %48
  %59 = load %struct.resource*, %struct.resource** %10, align 8
  %60 = load %struct.txx9aclc_soc_device*, %struct.txx9aclc_soc_device** %9, align 8
  %61 = getelementptr inbounds %struct.txx9aclc_soc_device, %struct.txx9aclc_soc_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store %struct.resource* %59, %struct.resource** %66, align 8
  %67 = load %struct.txx9aclc_soc_device*, %struct.txx9aclc_soc_device** %9, align 8
  %68 = load %struct.txx9aclc_soc_device*, %struct.txx9aclc_soc_device** %9, align 8
  %69 = getelementptr inbounds %struct.txx9aclc_soc_device, %struct.txx9aclc_soc_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = call i32 @txx9aclc_dma_init(%struct.txx9aclc_soc_device* %67, %struct.TYPE_4__* %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %58
  br label %89

78:                                               ; preds = %58
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %45

82:                                               ; preds = %45
  %83 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %84 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %85 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %86 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %83, i32 %84, i32 %87, i32 65536, i32 4194304)
  store i32 0, i32* %2, align 4
  br label %126

89:                                               ; preds = %77, %55
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %121, %89
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 2
  br i1 %92, label %93, label %124

93:                                               ; preds = %90
  %94 = load %struct.txx9aclc_soc_device*, %struct.txx9aclc_soc_device** %9, align 8
  %95 = getelementptr inbounds %struct.txx9aclc_soc_device, %struct.txx9aclc_soc_device* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %93
  %104 = load %struct.txx9aclc_soc_device*, %struct.txx9aclc_soc_device** %9, align 8
  %105 = getelementptr inbounds %struct.txx9aclc_soc_device, %struct.txx9aclc_soc_device* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @dma_release_channel(i32* %111)
  br label %113

113:                                              ; preds = %103, %93
  %114 = load %struct.txx9aclc_soc_device*, %struct.txx9aclc_soc_device** %9, align 8
  %115 = getelementptr inbounds %struct.txx9aclc_soc_device, %struct.txx9aclc_soc_device* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %90

124:                                              ; preds = %90
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %82
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.txx9aclc_soc_device* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @txx9aclc_dma_init(%struct.txx9aclc_soc_device*, %struct.TYPE_4__*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @dma_release_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
