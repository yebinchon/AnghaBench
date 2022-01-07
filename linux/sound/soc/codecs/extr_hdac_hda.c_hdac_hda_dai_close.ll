; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hda.c_hdac_hda_dai_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hda.c_hdac_hda_dai_close.c"
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

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @hdac_hda_dai_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdac_hda_dai_close(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.hdac_hda_priv*, align 8
  %7 = alloca %struct.hda_pcm_stream*, align 8
  %8 = alloca %struct.hda_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %5, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %13 = call %struct.hdac_hda_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.hdac_hda_priv* %13, %struct.hdac_hda_priv** %6, align 8
  %14 = load %struct.hdac_hda_priv*, %struct.hdac_hda_priv** %6, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %16 = call %struct.hda_pcm* @snd_soc_find_pcm_from_dai(%struct.hdac_hda_priv* %14, %struct.snd_soc_dai* %15)
  store %struct.hda_pcm* %16, %struct.hda_pcm** %8, align 8
  %17 = load %struct.hda_pcm*, %struct.hda_pcm** %8, align 8
  %18 = icmp ne %struct.hda_pcm* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %40

20:                                               ; preds = %2
  %21 = load %struct.hda_pcm*, %struct.hda_pcm** %8, align 8
  %22 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %21, i32 0, i32 0
  %23 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %22, align 8
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %23, i64 %26
  store %struct.hda_pcm_stream* %27, %struct.hda_pcm_stream** %7, align 8
  %28 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %29 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.hda_pcm_stream.0*, i32*, %struct.snd_pcm_substream*)*, i32 (%struct.hda_pcm_stream.0*, i32*, %struct.snd_pcm_substream*)** %30, align 8
  %32 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %33 = bitcast %struct.hda_pcm_stream* %32 to %struct.hda_pcm_stream.0*
  %34 = load %struct.hdac_hda_priv*, %struct.hdac_hda_priv** %6, align 8
  %35 = getelementptr inbounds %struct.hdac_hda_priv, %struct.hdac_hda_priv* %34, i32 0, i32 0
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %37 = call i32 %31(%struct.hda_pcm_stream.0* %33, i32* %35, %struct.snd_pcm_substream* %36)
  %38 = load %struct.hda_pcm*, %struct.hda_pcm** %8, align 8
  %39 = call i32 @snd_hda_codec_pcm_put(%struct.hda_pcm* %38)
  br label %40

40:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.hdac_hda_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.hda_pcm* @snd_soc_find_pcm_from_dai(%struct.hdac_hda_priv*, %struct.snd_soc_dai*) #1

declare dso_local i32 @snd_hda_codec_pcm_put(%struct.hda_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
