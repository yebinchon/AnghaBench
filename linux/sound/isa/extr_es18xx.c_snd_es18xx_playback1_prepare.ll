; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_playback1_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_playback1_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_es18xx = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }

@DAC2 = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@DMA_AUTOINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_es18xx*, %struct.snd_pcm_substream*)* @snd_es18xx_playback1_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_playback1_prepare(%struct.snd_es18xx* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.snd_es18xx*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_es18xx* %0, %struct.snd_es18xx** %3, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %17 = load i32, i32* @DAC2, align 4
  %18 = call i32 @snd_es18xx_rate_set(%struct.snd_es18xx* %15, %struct.snd_pcm_substream* %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = sub i32 65536, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 255
  %24 = call i32 @snd_es18xx_mixer_write(%struct.snd_es18xx* %21, i32 116, i32 %23)
  %25 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = lshr i32 %26, 8
  %28 = call i32 @snd_es18xx_mixer_write(%struct.snd_es18xx* %25, i32 118, i32 %27)
  %29 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 2
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @snd_pcm_format_width(i32 %38)
  %40 = icmp eq i32 %39, 16
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = or i32 %35, %42
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @snd_pcm_format_unsigned(i32 %46)
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 0, i32 4
  %51 = or i32 %43, %50
  %52 = call i32 @snd_es18xx_mixer_bits(%struct.snd_es18xx* %29, i32 122, i32 7, i32 %51)
  %53 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %54 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @DMA_MODE_WRITE, align 4
  %61 = load i32, i32* @DMA_AUTOINIT, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @snd_dma_program(i32 %55, i32 %58, i32 %59, i32 %62)
  ret i32 0
}

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_es18xx_rate_set(%struct.snd_es18xx*, %struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_es18xx_mixer_write(%struct.snd_es18xx*, i32, i32) #1

declare dso_local i32 @snd_es18xx_mixer_bits(%struct.snd_es18xx*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i64 @snd_pcm_format_unsigned(i32) #1

declare dso_local i32 @snd_dma_program(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
