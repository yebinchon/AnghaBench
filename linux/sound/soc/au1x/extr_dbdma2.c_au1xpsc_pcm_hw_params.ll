; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dbdma2.c_au1xpsc_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dbdma2.c_au1xpsc_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64, i32, i64 }
%struct.snd_pcm_hw_params = type { i64 }
%struct.au1xpsc_audio_dmadata = type { i64, i64, i64, i64, i64, i64, i32, %struct.snd_pcm_substream* }

@.str = private unnamed_addr constant [88 x i8] c"runtime->dma_area = 0x%08lx dma_addr_t = 0x%08lx dma_size = %zu runtime->min_align %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"bits %d  frags %d  frag_bytes %d  is_rx %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"DDMA channel (re)alloc failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @au1xpsc_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.au1xpsc_audio_dmadata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %14 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %13)
  %15 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %12, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %82

19:                                               ; preds = %2
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = call %struct.au1xpsc_audio_dmadata* @to_dmadata(%struct.snd_pcm_substream* %23)
  store %struct.au1xpsc_audio_dmadata* %24, %struct.au1xpsc_audio_dmadata** %6, align 8
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @DBG(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %30, i32 %33, i32 %36)
  %38 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %42 = call i64 @params_periods(%struct.snd_pcm_hw_params* %41)
  %43 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %44 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @DBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %42, i32 %44, i32 %45)
  %47 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @au1x_pcm_dbdma_realloc(%struct.au1xpsc_audio_dmadata* %47, i32 %48, i64 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %19
  %56 = call i32 @MSG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %82

57:                                               ; preds = %19
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %59 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %60 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %59, i32 0, i32 7
  store %struct.snd_pcm_substream* %58, %struct.snd_pcm_substream** %60, align 8
  %61 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %62 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %61)
  %63 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %64 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %66 = call i64 @params_periods(%struct.snd_pcm_hw_params* %65)
  %67 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %68 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %73 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %72, i32 0, i32 4
  store i64 %71, i64* %73, align 8
  %74 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %75 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %74, i32 0, i32 5
  store i64 %71, i64* %75, align 8
  %76 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %77 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %79 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %6, align 8
  %81 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %57, %55, %18
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.au1xpsc_audio_dmadata* @to_dmadata(%struct.snd_pcm_substream*) #1

declare dso_local i32 @DBG(i8*, i64, i64, i32, i32) #1

declare dso_local i64 @params_periods(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @au1x_pcm_dbdma_realloc(%struct.au1xpsc_audio_dmadata*, i32, i64) #1

declare dso_local i32 @MSG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
