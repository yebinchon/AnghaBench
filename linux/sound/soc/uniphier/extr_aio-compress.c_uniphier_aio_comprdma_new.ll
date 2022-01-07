; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-compress.c_uniphier_aio_comprdma_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-compress.c_uniphier_aio_comprdma_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, %struct.snd_compr* }
%struct.snd_compr = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.uniphier_aio = type { %struct.uniphier_aio_sub* }
%struct.uniphier_aio_sub = type { i64, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@AUD_RING_SIZE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PORT_DIR_OUTPUT = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @uniphier_aio_comprdma_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aio_comprdma_new(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_compr*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.uniphier_aio*, align 8
  %7 = alloca %struct.uniphier_aio_sub*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 1
  %13 = load %struct.snd_compr*, %struct.snd_compr** %12, align 8
  store %struct.snd_compr* %13, %struct.snd_compr** %4, align 8
  %14 = load %struct.snd_compr*, %struct.snd_compr** %4, align 8
  %15 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %5, align 8
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %20 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.uniphier_aio* @uniphier_priv(i32 %21)
  store %struct.uniphier_aio* %22, %struct.uniphier_aio** %6, align 8
  %23 = load %struct.uniphier_aio*, %struct.uniphier_aio** %6, align 8
  %24 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %23, i32 0, i32 0
  %25 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %24, align 8
  %26 = load %struct.snd_compr*, %struct.snd_compr** %4, align 8
  %27 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %25, i64 %28
  store %struct.uniphier_aio_sub* %29, %struct.uniphier_aio_sub** %7, align 8
  %30 = load i64, i64* @AUD_RING_SIZE, align 8
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32 @DMA_BIT_MASK(i32 33)
  %34 = call i32 @dma_set_mask_and_coherent(%struct.device* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %2, align 4
  br label %91

39:                                               ; preds = %1
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32* @kzalloc(i64 %40, i32 %41)
  %43 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %44 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %46 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %91

52:                                               ; preds = %39
  %53 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %54 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %60, %52
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %65 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @dma_map_single(%struct.device* %63, i32* %66, i64 %67, i32 %68)
  %70 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %71 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %74 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @dma_mapping_error(%struct.device* %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %62
  %79 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %80 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @kfree(i32* %81)
  %83 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %84 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %83, i32 0, i32 1
  store i32* null, i32** %84, align 8
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %91

87:                                               ; preds = %62
  %88 = load i64, i64* %8, align 8
  %89 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %90 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %78, %49, %37
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.uniphier_aio* @uniphier_priv(i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
