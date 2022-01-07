; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_dma_ctrl_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_dma_ctrl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.stm32_spdifrx_data = type { i32*, %struct.TYPE_7__, %struct.TYPE_6__*, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.device* }

@.str = private unnamed_addr constant [8 x i8] c"rx-ctrl\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"dma_request_slave_channel failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV_IRAM = common dso_local global i32 0, align 4
@SPDIFRX_CSR_BUF_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"snd_dma_alloc_pages returned error %d\0A\00", align 1
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@STM32_SPDIFRX_CSR = common dso_local global i64 0, align 8
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"dmaengine_slave_config returned error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.stm32_spdifrx_data*)* @stm32_spdifrx_dma_ctrl_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_spdifrx_dma_ctrl_register(%struct.device* %0, %struct.stm32_spdifrx_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.stm32_spdifrx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.stm32_spdifrx_data* %1, %struct.stm32_spdifrx_data** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call i32* @dma_request_chan(%struct.device* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %10 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %9, i32 0, i32 0
  store i32* %8, i32** %10, align 8
  %11 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %12 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i64 @IS_ERR(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %20 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @PTR_ERR(i32* %21)
  store i32 %22, i32* %3, align 4
  br label %112

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.TYPE_6__* @devm_kzalloc(%struct.device* %24, i32 4, i32 %25)
  %27 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %28 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %27, i32 0, i32 2
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %28, align 8
  %29 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %30 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %112

36:                                               ; preds = %23
  %37 = load i32, i32* @SNDRV_DMA_TYPE_DEV_IRAM, align 4
  %38 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %39 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 8
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %45 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store %struct.device* %43, %struct.device** %48, align 8
  %49 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %50 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load i32, i32* @SPDIFRX_CSR_BUF_LENGTH, align 4
  %57 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %58 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = call i32 @snd_dma_alloc_pages(i32 %54, %struct.device* %55, i32 %56, %struct.TYPE_6__* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %36
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %112

68:                                               ; preds = %36
  %69 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %70 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %71 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 4
  store i32 %69, i32* %72, align 8
  %73 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %74 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @STM32_SPDIFRX_CSR, align 8
  %77 = add nsw i64 %75, %76
  %78 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %79 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  store i64 %77, i64* %80, align 8
  %81 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %82 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %87 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 8
  %89 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %90 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %91 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %94 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %97 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %100 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %99, i32 0, i32 1
  %101 = call i32 @dmaengine_slave_config(i32* %98, %struct.TYPE_7__* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %68
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %109 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %108, i32 0, i32 0
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %104, %68
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %63, %33, %16
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32* @dma_request_chan(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.TYPE_6__* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @snd_dma_alloc_pages(i32, %struct.device*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dmaengine_slave_config(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
