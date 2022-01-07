; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_wss = type { i32, i32*, i32, i32 }

@CS4231_PLAYBACK_ENABLE = common dso_local global i32 0, align 4
@CS4231_PLAYBACK_PIO = common dso_local global i32 0, align 4
@CS4231_IFACE_CTRL = common dso_local global i64 0, align 8
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@DMA_AUTOINIT = common dso_local global i32 0, align 4
@CS4231_PLAYBK_FORMAT = common dso_local global i64 0, align 8
@CS4231_PLY_LWR_CNT = common dso_local global i32 0, align 4
@CS4231_PLY_UPR_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_wss_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_wss_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_wss*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.snd_wss* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_wss* %9, %struct.snd_wss** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %18 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %17, i32 0, i32 2
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %23 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @CS4231_PLAYBACK_ENABLE, align 4
  %25 = load i32, i32* @CS4231_PLAYBACK_PIO, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %29 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %27
  store i32 %34, i32* %32, align 4
  %35 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %36 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @DMA_MODE_WRITE, align 4
  %43 = load i32, i32* @DMA_AUTOINIT, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @snd_dma_program(i32 %37, i32 %40, i32 %41, i32 %44)
  %46 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %47 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @snd_wss_get_count(i32 %51, i32 %52)
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %56 = load i32, i32* @CS4231_PLY_LWR_CNT, align 4
  %57 = load i32, i32* %7, align 4
  %58 = trunc i32 %57 to i8
  %59 = call i32 @snd_wss_out(%struct.snd_wss* %55, i32 %56, i8 zeroext %58)
  %60 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %61 = load i32, i32* @CS4231_PLY_UPR_CNT, align 4
  %62 = load i32, i32* %7, align 4
  %63 = lshr i32 %62, 8
  %64 = trunc i32 %63 to i8
  %65 = call i32 @snd_wss_out(%struct.snd_wss* %60, i32 %61, i8 zeroext %64)
  %66 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %67 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %66, i32 0, i32 2
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  ret i32 0
}

declare dso_local %struct.snd_wss* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_dma_program(i32, i32, i32, i32) #1

declare dso_local i32 @snd_wss_get_count(i32, i32) #1

declare dso_local i32 @snd_wss_out(%struct.snd_wss*, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
