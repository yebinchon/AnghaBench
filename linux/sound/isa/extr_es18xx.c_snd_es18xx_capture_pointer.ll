; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_capture_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_capture_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_es18xx = type { i32, i32, i32 }

@ADC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es18xx_capture_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_capture_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_es18xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_es18xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_es18xx* %8, %struct.snd_es18xx** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %12 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ADC1, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %20 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @snd_dma_pointer(i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %26 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %24, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %18, %17
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.snd_es18xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_dma_pointer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
