; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_playback_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_playback_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_es18xx = type { i32, i32, i32, i32, i32, i32 }

@ES18XX_PCM2 = common dso_local global i32 0, align 4
@DAC2 = common dso_local global i32 0, align 4
@DAC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es18xx_playback_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_playback_pointer(%struct.snd_pcm_substream* %0) #0 {
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
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %1
  %16 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %17 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ES18XX_PCM2, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %15
  %23 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %24 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DAC2, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %60

30:                                               ; preds = %22
  %31 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %32 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @snd_dma_pointer(i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %38 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %36, %39
  store i32 %40, i32* %2, align 4
  br label %60

41:                                               ; preds = %15, %1
  %42 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %43 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DAC1, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %60

49:                                               ; preds = %41
  %50 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %51 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @snd_dma_pointer(i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %57 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %55, %58
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %49, %48, %30, %29
  %61 = load i32, i32* %2, align 4
  ret i32 %61
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
