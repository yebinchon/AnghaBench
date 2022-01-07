; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-compress.c_sprd_platform_compr_get_caps.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-compress.c_sprd_platform_compr_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i32 }
%struct.snd_compr_caps = type { i32, i32*, i32, i32, i32, i32, i32 }

@SPRD_COMPR_MIN_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@SPRD_COMPR_MAX_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@SPRD_COMPR_MIN_NUM_FRAGMENTS = common dso_local global i32 0, align 4
@SPRD_COMPR_MAX_NUM_FRAGMENTS = common dso_local global i32 0, align 4
@SND_AUDIOCODEC_MP3 = common dso_local global i32 0, align 4
@SND_AUDIOCODEC_AAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, %struct.snd_compr_caps*)* @sprd_platform_compr_get_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_platform_compr_get_caps(%struct.snd_compr_stream* %0, %struct.snd_compr_caps* %1) #0 {
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca %struct.snd_compr_caps*, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  store %struct.snd_compr_caps* %1, %struct.snd_compr_caps** %4, align 8
  %5 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %6 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %9 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @SPRD_COMPR_MIN_FRAGMENT_SIZE, align 4
  %11 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %12 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @SPRD_COMPR_MAX_FRAGMENT_SIZE, align 4
  %14 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %15 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @SPRD_COMPR_MIN_NUM_FRAGMENTS, align 4
  %17 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %18 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @SPRD_COMPR_MAX_NUM_FRAGMENTS, align 4
  %20 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %21 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %23 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %22, i32 0, i32 0
  store i32 2, i32* %23, align 8
  %24 = load i32, i32* @SND_AUDIOCODEC_MP3, align 4
  %25 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %26 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* @SND_AUDIOCODEC_AAC, align 4
  %30 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %4, align 8
  %31 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %29, i32* %33, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
