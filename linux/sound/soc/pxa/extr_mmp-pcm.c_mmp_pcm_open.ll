; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-pcm.c_mmp_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-pcm.c_mmp_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.platform_device = type { i32 }
%struct.mmp_dma_data = type { i32, %struct.resource* }
%struct.resource = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@IORESOURCE_DMA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@mmp_pcm_hardware = common dso_local global i32* null, align 8
@filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @mmp_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.mmp_dma_data, align 8
  %9 = alloca %struct.resource*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %4, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %14 = load i32, i32* @DRV_NAME, align 4
  %15 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %13, i32 %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %5, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.platform_device* @to_platform_device(i32 %18)
  store %struct.platform_device* %19, %struct.platform_device** %6, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %21, align 8
  store %struct.snd_soc_dai* %22, %struct.snd_soc_dai** %7, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %24 = load i32, i32* @IORESOURCE_DMA, align 4
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i64 %27)
  store %struct.resource* %28, %struct.resource** %9, align 8
  %29 = load %struct.resource*, %struct.resource** %9, align 8
  %30 = icmp ne %struct.resource* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %51

34:                                               ; preds = %1
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %36 = load i32*, i32** @mmp_pcm_hardware, align 8
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = call i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream* %35, i32* %40)
  %42 = load %struct.resource*, %struct.resource** %9, align 8
  %43 = getelementptr inbounds %struct.mmp_dma_data, %struct.mmp_dma_data* %8, i32 0, i32 1
  store %struct.resource* %42, %struct.resource** %43, align 8
  %44 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.mmp_dma_data, %struct.mmp_dma_data* %8, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %49 = load i32, i32* @filter, align 4
  %50 = call i32 @snd_dmaengine_pcm_open_request_chan(%struct.snd_pcm_substream* %48, i32 %49, %struct.mmp_dma_data* %8)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %34, %31
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i64) #1

declare dso_local i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @snd_dmaengine_pcm_open_request_chan(%struct.snd_pcm_substream*, i32, %struct.mmp_dma_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
