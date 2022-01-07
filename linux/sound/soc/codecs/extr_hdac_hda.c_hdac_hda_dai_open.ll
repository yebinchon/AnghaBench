; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hda.c_hdac_hda_dai_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hda.c_hdac_hda_dai_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.hdac_hda_priv = type { i32 }
%struct.hda_pcm_stream = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.hda_pcm_stream.0*, i32*, %struct.snd_pcm_substream*)* }
%struct.hda_pcm_stream.0 = type opaque
%struct.hda_pcm = type { %struct.hda_pcm_stream* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @hdac_hda_dai_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_hda_dai_open(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.hdac_hda_priv*, align 8
  %8 = alloca %struct.hda_pcm_stream*, align 8
  %9 = alloca %struct.hda_pcm*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.hdac_hda_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.hdac_hda_priv* %15, %struct.hdac_hda_priv** %7, align 8
  %16 = load %struct.hdac_hda_priv*, %struct.hdac_hda_priv** %7, align 8
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %18 = call %struct.hda_pcm* @snd_soc_find_pcm_from_dai(%struct.hdac_hda_priv* %16, %struct.snd_soc_dai* %17)
  store %struct.hda_pcm* %18, %struct.hda_pcm** %9, align 8
  %19 = load %struct.hda_pcm*, %struct.hda_pcm** %9, align 8
  %20 = icmp ne %struct.hda_pcm* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %2
  %25 = load %struct.hda_pcm*, %struct.hda_pcm** %9, align 8
  %26 = call i32 @snd_hda_codec_pcm_get(%struct.hda_pcm* %25)
  %27 = load %struct.hda_pcm*, %struct.hda_pcm** %9, align 8
  %28 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %27, i32 0, i32 0
  %29 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %28, align 8
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %29, i64 %32
  store %struct.hda_pcm_stream* %33, %struct.hda_pcm_stream** %8, align 8
  %34 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %8, align 8
  %35 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.hda_pcm_stream.0*, i32*, %struct.snd_pcm_substream*)*, i32 (%struct.hda_pcm_stream.0*, i32*, %struct.snd_pcm_substream*)** %36, align 8
  %38 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %8, align 8
  %39 = bitcast %struct.hda_pcm_stream* %38 to %struct.hda_pcm_stream.0*
  %40 = load %struct.hdac_hda_priv*, %struct.hdac_hda_priv** %7, align 8
  %41 = getelementptr inbounds %struct.hdac_hda_priv, %struct.hdac_hda_priv* %40, i32 0, i32 0
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %43 = call i32 %37(%struct.hda_pcm_stream.0* %39, i32* %41, %struct.snd_pcm_substream* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %24
  %47 = load %struct.hda_pcm*, %struct.hda_pcm** %9, align 8
  %48 = call i32 @snd_hda_codec_pcm_put(%struct.hda_pcm* %47)
  br label %49

49:                                               ; preds = %46, %24
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.hdac_hda_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.hda_pcm* @snd_soc_find_pcm_from_dai(%struct.hdac_hda_priv*, %struct.snd_soc_dai*) #1

declare dso_local i32 @snd_hda_codec_pcm_get(%struct.hda_pcm*) #1

declare dso_local i32 @snd_hda_codec_pcm_put(%struct.hda_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
