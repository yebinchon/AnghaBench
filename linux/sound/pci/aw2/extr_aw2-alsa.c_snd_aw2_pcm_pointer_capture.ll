; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/aw2/extr_aw2-alsa.c_snd_aw2_pcm_pointer_capture.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/aw2/extr_aw2-alsa.c_snd_aw2_pcm_pointer_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.aw2_pcm_device = type { i32, %struct.aw2* }
%struct.aw2 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_aw2_pcm_pointer_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_aw2_pcm_pointer_capture(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.aw2_pcm_device*, align 8
  %4 = alloca %struct.aw2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.aw2_pcm_device* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.aw2_pcm_device* %8, %struct.aw2_pcm_device** %3, align 8
  %9 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %3, align 8
  %10 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %9, i32 0, i32 1
  %11 = load %struct.aw2*, %struct.aw2** %10, align 8
  store %struct.aw2* %11, %struct.aw2** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %6, align 8
  %15 = load %struct.aw2*, %struct.aw2** %4, align 8
  %16 = getelementptr inbounds %struct.aw2, %struct.aw2* %15, i32 0, i32 0
  %17 = load %struct.aw2_pcm_device*, %struct.aw2_pcm_device** %3, align 8
  %18 = getelementptr inbounds %struct.aw2_pcm_device, %struct.aw2_pcm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snd_aw2_saa7146_get_hw_ptr_capture(i32* %16, i32 %19, i32 %22, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %29, i32 %30)
  ret i32 %31
}

declare dso_local %struct.aw2_pcm_device* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_aw2_saa7146_get_hw_ptr_capture(i32*, i32, i32, i32) #1

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
