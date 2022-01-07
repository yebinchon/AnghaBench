; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-compress.c_sprd_platform_compr_get_codec_caps.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-compress.c_sprd_platform_compr_get_codec_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i32 }
%struct.snd_compr_codec_caps = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32, i32, i32, i32 }

@SND_AUDIOCHANMODE_MP3_STEREO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, %struct.snd_compr_codec_caps*)* @sprd_platform_compr_get_codec_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_platform_compr_get_codec_caps(%struct.snd_compr_stream* %0, %struct.snd_compr_codec_caps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_compr_stream*, align 8
  %5 = alloca %struct.snd_compr_codec_caps*, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %4, align 8
  store %struct.snd_compr_codec_caps* %1, %struct.snd_compr_codec_caps** %5, align 8
  %6 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %5, align 8
  %7 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %94 [
    i32 128, label %9
    i32 129, label %52
  ]

9:                                                ; preds = %2
  %10 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %5, align 8
  %11 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %10, i32 0, i32 1
  store i32 2, i32* %11, align 4
  %12 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %5, align 8
  %13 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 2, i32* %16, align 8
  %17 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %5, align 8
  %18 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 320, i32* %23, align 4
  %24 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %5, align 8
  %25 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 128, i32* %30, align 4
  %31 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %5, align 8
  %32 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i32 2, i32* %35, align 8
  %36 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %5, align 8
  %37 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* @SND_AUDIOCHANMODE_MP3_STEREO, align 4
  %42 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %5, align 8
  %43 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  store i32 %41, i32* %46, align 8
  %47 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %5, align 8
  %48 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  store i32 0, i32* %51, align 4
  br label %97

52:                                               ; preds = %2
  %53 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %5, align 8
  %54 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %53, i32 0, i32 1
  store i32 2, i32* %54, align 4
  %55 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %5, align 8
  %56 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 2, i32* %59, align 8
  %60 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %5, align 8
  %61 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 320, i32* %66, align 4
  %67 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %5, align 8
  %68 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 128, i32* %73, align 4
  %74 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %5, align 8
  %75 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i32 2, i32* %78, align 8
  %79 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %5, align 8
  %80 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 5
  store i32 0, i32* %83, align 4
  %84 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %5, align 8
  %85 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  store i32 0, i32* %88, align 8
  %89 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %5, align 8
  %90 = getelementptr inbounds %struct.snd_compr_codec_caps, %struct.snd_compr_codec_caps* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  store i32 0, i32* %93, align 4
  br label %97

94:                                               ; preds = %2
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %98

97:                                               ; preds = %52, %9
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %94
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
