; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-pcm.c_mmp_pcm_preallocate_dma_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-pcm.c_mmp_pcm_preallocate_dma_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.snd_pcm_substream = type { %struct.TYPE_7__*, %struct.snd_dma_buffer }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.snd_dma_buffer = type { i64, i32, i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.gen_pool = type { i32 }

@mmp_pcm_hardware = common dso_local global %struct.TYPE_8__* null, align 8
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"asram\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @mmp_pcm_preallocate_dma_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_pcm_preallocate_dma_buffer(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_dma_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gen_pool*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  store %struct.snd_dma_buffer* %10, %struct.snd_dma_buffer** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mmp_pcm_hardware, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %18 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %19 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %31, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = call %struct.gen_pool* @sram_get_gpool(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.gen_pool* %33, %struct.gen_pool** %8, align 8
  %34 = load %struct.gen_pool*, %struct.gen_pool** %8, align 8
  %35 = icmp ne %struct.gen_pool* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %58

39:                                               ; preds = %2
  %40 = load %struct.gen_pool*, %struct.gen_pool** %8, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %43 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %42, i32 0, i32 2
  %44 = call i32 @gen_pool_dma_alloc(%struct.gen_pool* %40, i64 %41, i32* %43)
  %45 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %48 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %58

54:                                               ; preds = %39
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %51, %36
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.gen_pool* @sram_get_gpool(i8*) #1

declare dso_local i32 @gen_pool_dma_alloc(%struct.gen_pool*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
