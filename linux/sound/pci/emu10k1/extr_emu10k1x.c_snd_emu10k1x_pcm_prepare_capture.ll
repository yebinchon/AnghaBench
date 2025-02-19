; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_prepare_capture.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm_prepare_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.emu10k1x = type { i32 }

@CAPTURE_DMA_ADDR = common dso_local global i32 0, align 4
@CAPTURE_BUFFER_SIZE = common dso_local global i32 0, align 4
@CAPTURE_POINTER = common dso_local global i32 0, align 4
@CAPTURE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_emu10k1x_pcm_prepare_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1x_pcm_prepare_capture(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.emu10k1x*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.emu10k1x* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.emu10k1x* %6, %struct.emu10k1x** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %4, align 8
  %10 = load %struct.emu10k1x*, %struct.emu10k1x** %3, align 8
  %11 = load i32, i32* @CAPTURE_DMA_ADDR, align 4
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %10, i32 %11, i32 0, i32 %14)
  %16 = load %struct.emu10k1x*, %struct.emu10k1x** %3, align 8
  %17 = load i32, i32* @CAPTURE_BUFFER_SIZE, align 4
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %18, i32 %21)
  %23 = shl i32 %22, 16
  %24 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %16, i32 %17, i32 0, i32 %23)
  %25 = load %struct.emu10k1x*, %struct.emu10k1x** %3, align 8
  %26 = load i32, i32* @CAPTURE_POINTER, align 4
  %27 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %25, i32 %26, i32 0, i32 0)
  %28 = load %struct.emu10k1x*, %struct.emu10k1x** %3, align 8
  %29 = load i32, i32* @CAPTURE_UNKNOWN, align 4
  %30 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %28, i32 %29, i32 0, i32 0)
  ret i32 0
}

declare dso_local %struct.emu10k1x* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x*, i32, i32, i32) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
