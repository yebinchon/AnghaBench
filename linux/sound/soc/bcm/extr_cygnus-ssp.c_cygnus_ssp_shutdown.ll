; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-ssp.c_cygnus_ssp_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-ssp.c_cygnus_ssp_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.cygnus_aio_port = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32, i64 }
%struct.TYPE_4__ = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@CYGNUS_PLLCLKSEL_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Clk index %u is out of bounds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @cygnus_ssp_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cygnus_ssp_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.cygnus_aio_port*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = call %struct.cygnus_aio_port* @cygnus_dai_get_portinfo(%struct.snd_soc_dai* %7)
  store %struct.cygnus_aio_port* %8, %struct.cygnus_aio_port** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %5, align 8
  %16 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %5, align 8
  %20 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %5, align 8
  %24 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %105, label %27

27:                                               ; preds = %22
  %28 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %5, align 8
  %29 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %5, align 8
  %34 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %32, %36
  %38 = call i64 @readl(i64 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* @CYGNUS_PLLCLKSEL_MASK, align 8
  %40 = load i64, i64* %6, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %5, align 8
  %44 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @ARRAY_SIZE(i32* %47)
  %49 = icmp uge i64 %42, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %27
  %51 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %5, align 8
  %52 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %56)
  br label %105

58:                                               ; preds = %27
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %5, align 8
  %66 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %5, align 8
  %72 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @clk_disable_unprepare(i32 %78)
  %80 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %5, align 8
  %81 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %70, %64
  br label %104

84:                                               ; preds = %58
  %85 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %5, align 8
  %86 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %5, align 8
  %92 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @clk_disable_unprepare(i32 %98)
  %100 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %5, align 8
  %101 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %90, %84
  br label %104

104:                                              ; preds = %103, %83
  br label %105

105:                                              ; preds = %50, %104, %22
  ret void
}

declare dso_local %struct.cygnus_aio_port* @cygnus_dai_get_portinfo(%struct.snd_soc_dai*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
