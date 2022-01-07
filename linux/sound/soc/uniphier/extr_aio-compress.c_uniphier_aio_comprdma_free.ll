; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-compress.c_uniphier_aio_comprdma_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-compress.c_uniphier_aio_comprdma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, %struct.snd_compr* }
%struct.snd_compr = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.uniphier_aio = type { %struct.uniphier_aio_sub* }
%struct.uniphier_aio_sub = type { i32*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PORT_DIR_OUTPUT = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @uniphier_aio_comprdma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aio_comprdma_free(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %3 = alloca %struct.snd_compr*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.uniphier_aio*, align 8
  %6 = alloca %struct.uniphier_aio_sub*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %2, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 1
  %10 = load %struct.snd_compr*, %struct.snd_compr** %9, align 8
  store %struct.snd_compr* %10, %struct.snd_compr** %3, align 8
  %11 = load %struct.snd_compr*, %struct.snd_compr** %3, align 8
  %12 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.uniphier_aio* @uniphier_priv(i32 %18)
  store %struct.uniphier_aio* %19, %struct.uniphier_aio** %5, align 8
  %20 = load %struct.uniphier_aio*, %struct.uniphier_aio** %5, align 8
  %21 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %20, i32 0, i32 0
  %22 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %21, align 8
  %23 = load %struct.snd_compr*, %struct.snd_compr** %3, align 8
  %24 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %22, i64 %25
  store %struct.uniphier_aio_sub* %26, %struct.uniphier_aio_sub** %6, align 8
  %27 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %29 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %35, %1
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %40 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %43 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dma_unmap_single(%struct.device* %38, i32 %41, i32 %44, i32 %45)
  %47 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %48 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @kfree(i32* %49)
  %51 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %52 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  ret i32 0
}

declare dso_local %struct.uniphier_aio* @uniphier_priv(i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
