; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_p16v.c_snd_p16v_pcm_prepare_capture.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_p16v.c_snd_p16v_pcm_prepare_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__*, %struct.snd_pcm_runtime* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_runtime = type { i32, i32, i32 }
%struct.snd_emu10k1 = type { i32 }

@A_SPDIF_SAMPLERATE = common dso_local global i32 0, align 4
@CAPTURE_DMA_ADDR = common dso_local global i32 0, align 4
@CAPTURE_BUFFER_SIZE = common dso_local global i32 0, align 4
@CAPTURE_POINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_p16v_pcm_prepare_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_p16v_pcm_prepare_capture(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_emu10k1* %8, %struct.snd_emu10k1** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %18 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %22 = load i32, i32* @A_SPDIF_SAMPLERATE, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %53 [
    i32 44100, label %28
    i32 96000, label %36
    i32 192000, label %44
    i32 48000, label %52
  ]

28:                                               ; preds = %1
  %29 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %30 = load i32, i32* @A_SPDIF_SAMPLERATE, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, -3585
  %34 = or i32 %33, 2048
  %35 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %29, i32 %30, i32 %31, i32 %34)
  br label %60

36:                                               ; preds = %1
  %37 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %38 = load i32, i32* @A_SPDIF_SAMPLERATE, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, -3585
  %42 = or i32 %41, 1024
  %43 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %37, i32 %38, i32 %39, i32 %42)
  br label %60

44:                                               ; preds = %1
  %45 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %46 = load i32, i32* @A_SPDIF_SAMPLERATE, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, -3585
  %50 = or i32 %49, 512
  %51 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %45, i32 %46, i32 %47, i32 %50)
  br label %60

52:                                               ; preds = %1
  br label %53

53:                                               ; preds = %1, %52
  %54 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %55 = load i32, i32* @A_SPDIF_SAMPLERATE, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, -3585
  %59 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %54, i32 %55, i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %53, %44, %36, %28
  %61 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %61, i32 19, i32 %62, i32 0)
  %64 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %65 = load i32, i32* @CAPTURE_DMA_ADDR, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %64, i32 %65, i32 %66, i32 %69)
  %71 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %72 = load i32, i32* @CAPTURE_BUFFER_SIZE, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %74, i32 %77)
  %79 = shl i32 %78, 16
  %80 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %71, i32 %72, i32 %73, i32 %79)
  %81 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %82 = load i32, i32* @CAPTURE_POINTER, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %81, i32 %82, i32 %83, i32 0)
  ret i32 0
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
