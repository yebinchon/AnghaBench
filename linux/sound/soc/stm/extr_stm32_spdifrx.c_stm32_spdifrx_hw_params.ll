; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.stm32_spdifrx_data = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SPDIFRX_DRFMT_PACKED = common dso_local global i32 0, align 4
@SPDIFRX_DRFMT_LEFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unexpected data format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@STM32_SPDIFRX_CR = common dso_local global i32 0, align 4
@SPDIFRX_CR_DRFMT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @stm32_spdifrx_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_spdifrx_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.stm32_spdifrx_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = call %struct.stm32_spdifrx_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.stm32_spdifrx_data* %12, %struct.stm32_spdifrx_data** %8, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %14 = call i32 @params_width(%struct.snd_pcm_hw_params* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %20 [
    i32 16, label %16
    i32 32, label %18
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @SPDIFRX_DRFMT_PACKED, align 4
  store i32 %17, i32* %10, align 4
  br label %28

18:                                               ; preds = %3
  %19 = load i32, i32* @SPDIFRX_DRFMT_LEFT, align 4
  store i32 %19, i32* %10, align 4
  br label %28

20:                                               ; preds = %3
  %21 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %8, align 8
  %22 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %45

28:                                               ; preds = %18, %16
  %29 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %30 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %8, align 8
  %31 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %34 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %8, align 8
  %35 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %34, i32 0, i32 1
  %36 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %33, i32* null, %struct.TYPE_4__* %35)
  %37 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %8, align 8
  %38 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @STM32_SPDIFRX_CR, align 4
  %41 = load i32, i32* @SPDIFRX_CR_DRFMT_MASK, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @SPDIFRX_CR_DRFMTSET(i32 %42)
  %44 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 %41, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %28, %20
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.stm32_spdifrx_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SPDIFRX_CR_DRFMTSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
