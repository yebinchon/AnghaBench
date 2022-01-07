; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }
%struct.snd_es18xx = type { i32 }

@ADC1 = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4
@DMA_AUTOINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es18xx_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_es18xx*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.snd_es18xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_es18xx* %8, %struct.snd_es18xx** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %17 = call i32 @snd_es18xx_reset_fifo(%struct.snd_es18xx* %16)
  %18 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 2, i32 1
  %25 = call i32 @snd_es18xx_bits(%struct.snd_es18xx* %18, i32 168, i32 3, i32 %24)
  %26 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %28 = load i32, i32* @ADC1, align 4
  %29 = call i32 @snd_es18xx_rate_set(%struct.snd_es18xx* %26, %struct.snd_pcm_substream* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = sub i32 65536, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 255
  %35 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %32, i32 164, i32 %34)
  %36 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = lshr i32 %37, 8
  %39 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %36, i32 165, i32 %38)
  %40 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @snd_pcm_format_unsigned(i32 %43)
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 81, i32 113
  %48 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %40, i32 183, i32 %47)
  %49 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 1
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 64, i32 8
  %56 = or i32 144, %55
  %57 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @snd_pcm_format_width(i32 %59)
  %61 = icmp eq i32 %60, 16
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 4, i32 0
  %64 = or i32 %56, %63
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @snd_pcm_format_unsigned(i32 %67)
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 0, i32 32
  %72 = or i32 %64, %71
  %73 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %49, i32 183, i32 %72)
  %74 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %75 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @DMA_MODE_READ, align 4
  %82 = load i32, i32* @DMA_AUTOINIT, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @snd_dma_program(i32 %76, i32 %79, i32 %80, i32 %83)
  ret i32 0
}

declare dso_local %struct.snd_es18xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

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
