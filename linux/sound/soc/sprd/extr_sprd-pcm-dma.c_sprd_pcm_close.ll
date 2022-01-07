; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-dma.c_sprd_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-dma.c_sprd_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__, %struct.sprd_pcm_dma_private* }
%struct.TYPE_2__ = type { i32 }
%struct.sprd_pcm_dma_private = type { i32, %struct.sprd_pcm_dma_data* }
%struct.sprd_pcm_dma_data = type { i32, i32 }
%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@SPRD_PCM_DMA_LINKLIST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @sprd_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_pcm_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.sprd_pcm_dma_private*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sprd_pcm_dma_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %3, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %4, align 8
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 1
  %19 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %18, align 8
  store %struct.sprd_pcm_dma_private* %19, %struct.sprd_pcm_dma_private** %5, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %21 = load i32, i32* @DRV_NAME, align 4
  %22 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %20, i32 %21)
  store %struct.snd_soc_component* %22, %struct.snd_soc_component** %6, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %24 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %23, i32 0, i32 0
  %25 = load %struct.device*, %struct.device** %24, align 8
  store %struct.device* %25, %struct.device** %7, align 8
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SPRD_PCM_DMA_LINKLIST_SIZE, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %54, %1
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %5, align 8
  %35 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %5, align 8
  %40 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %39, i32 0, i32 1
  %41 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %41, i64 %43
  store %struct.sprd_pcm_dma_data* %44, %struct.sprd_pcm_dma_data** %10, align 8
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %10, align 8
  %48 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %10, align 8
  %51 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dmam_free_coherent(%struct.device* %45, i32 %46, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %38
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %32

57:                                               ; preds = %32
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %5, align 8
  %60 = call i32 @devm_kfree(%struct.device* %58, %struct.sprd_pcm_dma_private* %59)
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dmam_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.sprd_pcm_dma_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
