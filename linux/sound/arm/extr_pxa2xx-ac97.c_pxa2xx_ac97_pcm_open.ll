; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_pxa2xx-ac97.c_pxa2xx_ac97_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_pxa2xx-ac97.c_pxa2xx_ac97_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.snd_pcm_substream = type { i64, %struct.TYPE_10__*, %struct.snd_pcm_runtime* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.snd_pcm_substream*, i32)*, i32 }
%struct.snd_pcm_runtime = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@AC97_RATES_FRONT_DAC = common dso_local global i32 0, align 4
@AC97_RATES_ADC = common dso_local global i32 0, align 4
@pxa2xx_ac97_ac97 = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pxa2xx_ac97_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_ac97_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 2
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = call i32 @pxa2xx_pcm_open(%struct.snd_pcm_substream* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %80

17:                                               ; preds = %1
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 2, i32* %20, align 4
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32 2, i32* %23, align 4
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* @AC97_RATES_FRONT_DAC, align 4
  br label %33

31:                                               ; preds = %17
  %32 = load i32, i32* @AC97_RATES_ADC, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pxa2xx_ac97_ac97, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %46 = call i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime* %45)
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %5, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = icmp ne %struct.TYPE_11__* %56, null
  br i1 %57, label %58, label %78

58:                                               ; preds = %33
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32 (%struct.snd_pcm_substream*, i32)*, i32 (%struct.snd_pcm_substream*, i32)** %60, align 8
  %62 = icmp ne i32 (%struct.snd_pcm_substream*, i32)* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32 (%struct.snd_pcm_substream*, i32)*, i32 (%struct.snd_pcm_substream*, i32)** %65, align 8
  %67 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 %66(%struct.snd_pcm_substream* %67, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %76 = call i32 @pxa2xx_pcm_close(%struct.snd_pcm_substream* %75)
  br label %77

77:                                               ; preds = %74, %63
  br label %78

78:                                               ; preds = %77, %58, %33
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %15
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @pxa2xx_pcm_open(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @pxa2xx_pcm_close(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
