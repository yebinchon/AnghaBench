; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_playback2_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_playback2_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_es18xx = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }

@DAC1 = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@DMA_AUTOINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_es18xx*, %struct.snd_pcm_substream*)* @snd_es18xx_playback2_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_playback2_prepare(%struct.snd_es18xx* %0, %struct.snd_pcm_substream* %1) #0 {
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
  %16 = call i32 @snd_es18xx_reset_fifo(%struct.snd_es18xx* %15)
  %17 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 2, i32 1
  %24 = call i32 @snd_es18xx_bits(%struct.snd_es18xx* %17, i32 168, i32 3, i32 %23)
  %25 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %27 = load i32, i32* @DAC1, align 4
  %28 = call i32 @snd_es18xx_rate_set(%struct.snd_es18xx* %25, %struct.snd_pcm_substream* %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = sub i32 65536, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 255
  %34 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %31, i32 164, i32 %33)
  %35 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = lshr i32 %36, 8
  %38 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %35, i32 165, i32 %37)
  %39 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @snd_pcm_format_unsigned(i32 %42)
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 128, i32 0
  %47 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %39, i32 182, i32 %46)
  %48 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @snd_pcm_format_unsigned(i32 %51)
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 81, i32 113
  %56 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %48, i32 183, i32 %55)
  %57 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %58 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 64, i32 8
  %64 = or i32 144, %63
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @snd_pcm_format_width(i32 %67)
  %69 = icmp eq i32 %68, 16
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 4, i32 0
  %72 = or i32 %64, %71
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @snd_pcm_format_unsigned(i32 %75)
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 0, i32 32
  %80 = or i32 %72, %79
  %81 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %57, i32 183, i32 %80)
  %82 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %83 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @DMA_MODE_WRITE, align 4
  %90 = load i32, i32* @DMA_AUTOINIT, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @snd_dma_program(i32 %84, i32 %87, i32 %88, i32 %91)
  ret i32 0
}

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_es18xx_reset_fifo(%struct.snd_es18xx*) #1

declare dso_local i32 @snd_es18xx_bits(%struct.snd_es18xx*, i32, i32, i32) #1

declare dso_local i32 @snd_es18xx_rate_set(%struct.snd_es18xx*, %struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_es18xx_write(%struct.snd_es18xx*, i32, i32) #1

declare dso_local i64 @snd_pcm_format_unsigned(i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @snd_dma_program(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
