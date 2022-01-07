; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-dma.c_sprd_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-dma.c_sprd_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_runtime = type { %struct.sprd_pcm_dma_private*, %struct.TYPE_2__ }
%struct.sprd_pcm_dma_private = type { i32, %struct.sprd_pcm_dma_data*, %struct.snd_pcm_substream* }
%struct.sprd_pcm_dma_data = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@SPRD_PCM_CHANNEL_MAX = common dso_local global i32 0, align 4
@sprd_pcm_hardware = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@SPRD_PCM_DMA_BRUST_LEN = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPRD_PCM_DMA_LINKLIST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @sprd_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.sprd_pcm_dma_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sprd_pcm_dma_data*, align 8
  %14 = alloca %struct.sprd_pcm_dma_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 1
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  store %struct.snd_pcm_runtime* %17, %struct.snd_pcm_runtime** %4, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %19, align 8
  store %struct.snd_soc_pcm_runtime* %20, %struct.snd_soc_pcm_runtime** %5, align 8
  %21 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %22 = load i32, i32* @DRV_NAME, align 4
  %23 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %21, i32 %22)
  store %struct.snd_soc_component* %23, %struct.snd_soc_component** %6, align 8
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %25 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %24, i32 0, i32 0
  %26 = load %struct.device*, %struct.device** %25, align 8
  store %struct.device* %26, %struct.device** %7, align 8
  %27 = load i32, i32* @SPRD_PCM_CHANNEL_MAX, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %29 = call i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream* %28, i32* @sprd_pcm_hardware)
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %31 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %32 = load i32, i32* @SPRD_PCM_DMA_BRUST_LEN, align 4
  %33 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %30, i32 0, i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %2, align 4
  br label %146

38:                                               ; preds = %1
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %40 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %41 = load i32, i32* @SPRD_PCM_DMA_BRUST_LEN, align 4
  %42 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %39, i32 0, i32 %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %2, align 4
  br label %146

47:                                               ; preds = %38
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %49 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %50 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %2, align 4
  br label %146

55:                                               ; preds = %47
  %56 = load %struct.device*, %struct.device** %7, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.sprd_pcm_dma_private* @devm_kzalloc(%struct.device* %56, i32 24, i32 %57)
  store %struct.sprd_pcm_dma_private* %58, %struct.sprd_pcm_dma_private** %8, align 8
  %59 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %8, align 8
  %60 = icmp ne %struct.sprd_pcm_dma_private* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %146

64:                                               ; preds = %55
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SPRD_PCM_DMA_LINKLIST_SIZE, align 4
  %70 = mul nsw i32 %68, %69
  store i32 %70, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %98, %64
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %71
  %76 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %8, align 8
  %77 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %76, i32 0, i32 1
  %78 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %78, i64 %80
  store %struct.sprd_pcm_dma_data* %81, %struct.sprd_pcm_dma_data** %13, align 8
  %82 = load %struct.device*, %struct.device** %7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %13, align 8
  %85 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %84, i32 0, i32 0
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i64 @dmam_alloc_coherent(%struct.device* %82, i32 %83, i32* %85, i32 %86)
  %88 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %13, align 8
  %89 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %13, align 8
  %91 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %75
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %11, align 4
  br label %111

97:                                               ; preds = %75
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %71

101:                                              ; preds = %71
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %8, align 8
  %104 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %8, align 8
  %106 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %107 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %106, i32 0, i32 0
  store %struct.sprd_pcm_dma_private* %105, %struct.sprd_pcm_dma_private** %107, align 8
  %108 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %109 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %8, align 8
  %110 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %109, i32 0, i32 2
  store %struct.snd_pcm_substream* %108, %struct.snd_pcm_substream** %110, align 8
  store i32 0, i32* %2, align 4
  br label %146

111:                                              ; preds = %94
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %138, %111
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %112
  %117 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %8, align 8
  %118 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %117, i32 0, i32 1
  %119 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %119, i64 %121
  store %struct.sprd_pcm_dma_data* %122, %struct.sprd_pcm_dma_data** %14, align 8
  %123 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %14, align 8
  %124 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %116
  %128 = load %struct.device*, %struct.device** %7, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %14, align 8
  %131 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %14, align 8
  %134 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @dmam_free_coherent(%struct.device* %128, i32 %129, i64 %132, i32 %135)
  br label %137

137:                                              ; preds = %127, %116
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  br label %112

141:                                              ; preds = %112
  %142 = load %struct.device*, %struct.device** %7, align 8
  %143 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %8, align 8
  %144 = call i32 @devm_kfree(%struct.device* %142, %struct.sprd_pcm_dma_private* %143)
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %141, %101, %61, %53, %45, %36
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local %struct.sprd_pcm_dma_private* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @dmam_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dmam_free_coherent(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.sprd_pcm_dma_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
