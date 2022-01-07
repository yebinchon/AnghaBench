; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_playback_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.pcmhw*, i32 }
%struct.pcmhw = type { i32*, i32, i32, i32, i32 }
%struct.snd_riptide = type { %struct.snd_pcm_substream** }

@snd_riptide_playback = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lbus_play_paths = common dso_local global i32* null, align 8
@play_ids = common dso_local global i32* null, align 8
@play_sources = common dso_local global i32* null, align 8
@ST_STOP = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_riptide_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_riptide_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_riptide*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.pcmhw*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.snd_riptide* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_riptide* %9, %struct.snd_riptide** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = load %struct.snd_riptide*, %struct.snd_riptide** %4, align 8
  %18 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %17, i32 0, i32 0
  %19 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, i64 %21
  store %struct.snd_pcm_substream* %16, %struct.snd_pcm_substream** %22, align 8
  %23 = load i32, i32* @snd_riptide_playback, align 4
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.pcmhw* @kzalloc(i32 24, i32 %26)
  store %struct.pcmhw* %27, %struct.pcmhw** %6, align 8
  %28 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %29 = icmp eq %struct.pcmhw* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %72

33:                                               ; preds = %1
  %34 = load i32*, i32** @lbus_play_paths, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %40 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load i32*, i32** @play_ids, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %47 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** @play_sources, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %54 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %56 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 255, i32* %58, align 4
  %59 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %60 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 255, i32* %62, align 4
  %63 = load i32, i32* @ST_STOP, align 4
  %64 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %65 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 0
  store %struct.pcmhw* %66, %struct.pcmhw** %68, align 8
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %70 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %71 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %69, i32 %70)
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %33, %30
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.snd_riptide* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.pcmhw* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
