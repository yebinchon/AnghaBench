; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_compr_get_caps.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_compr_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i32 }
%struct.snd_compr_caps = type { i32, i32*, i32, i32, i32, i32, i32 }

@SND_COMPRESS_PLAYBACK = common dso_local global i32 0, align 4
@COMPR_PLAYBACK_MIN_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@COMPR_PLAYBACK_MAX_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@COMPR_PLAYBACK_MIN_NUM_FRAGMENTS = common dso_local global i32 0, align 4
@COMPR_PLAYBACK_MAX_NUM_FRAGMENTS = common dso_local global i32 0, align 4
@SND_AUDIOCODEC_MP3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, %struct.snd_compr_caps*)* @q6asm_dai_compr_get_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6asm_dai_compr_get_caps(%struct.snd_compr_stream* %0, %struct.snd_compr_caps* %1) #0 {
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca %struct.snd_compr_caps*, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  store %struct.snd_compr_caps* %1, %struct.snd_compr_caps** %4, align 8
  %5 = load i32, i32* @SND_COMPRESS_PLAYBACK, align 4
  %6 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %7 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %6, i32 0, i32 6
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @COMPR_PLAYBACK_MIN_FRAGMENT_SIZE, align 4
  %9 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %10 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @COMPR_PLAYBACK_MAX_FRAGMENT_SIZE, align 4
  %12 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %13 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @COMPR_PLAYBACK_MIN_NUM_FRAGMENTS, align 4
  %15 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %16 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @COMPR_PLAYBACK_MAX_NUM_FRAGMENTS, align 4
  %18 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %19 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %21 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* @SND_AUDIOCODEC_MP3, align 4
  %23 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %24 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %22, i32* %26, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
