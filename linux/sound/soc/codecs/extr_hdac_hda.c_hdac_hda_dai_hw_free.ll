; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hda.c_hdac_hda_dai_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hda.c_hdac_hda_dai_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.hdac_hda_priv = type { i32 }
%struct.hda_pcm_stream = type { i32 }
%struct.hda_pcm = type { %struct.hda_pcm_stream* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @hdac_hda_dai_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_hda_dai_hw_free(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.hdac_hda_priv*, align 8
  %8 = alloca %struct.hda_pcm_stream*, align 8
  %9 = alloca %struct.hda_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.hdac_hda_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.hdac_hda_priv* %14, %struct.hdac_hda_priv** %7, align 8
  %15 = load %struct.hdac_hda_priv*, %struct.hdac_hda_priv** %7, align 8
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %17 = call %struct.hda_pcm* @snd_soc_find_pcm_from_dai(%struct.hdac_hda_priv* %15, %struct.snd_soc_dai* %16)
  store %struct.hda_pcm* %17, %struct.hda_pcm** %9, align 8
  %18 = load %struct.hda_pcm*, %struct.hda_pcm** %9, align 8
  %19 = icmp ne %struct.hda_pcm* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %36

23:                                               ; preds = %2
  %24 = load %struct.hda_pcm*, %struct.hda_pcm** %9, align 8
  %25 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %24, i32 0, i32 0
  %26 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %25, align 8
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %26, i64 %29
  store %struct.hda_pcm_stream* %30, %struct.hda_pcm_stream** %8, align 8
  %31 = load %struct.hdac_hda_priv*, %struct.hdac_hda_priv** %7, align 8
  %32 = getelementptr inbounds %struct.hdac_hda_priv, %struct.hdac_hda_priv* %31, i32 0, i32 0
  %33 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %8, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %35 = call i32 @snd_hda_codec_cleanup(i32* %32, %struct.hda_pcm_stream* %33, %struct.snd_pcm_substream* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %23, %20
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.hdac_hda_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.hda_pcm* @snd_soc_find_pcm_from_dai(%struct.hdac_hda_priv*, %struct.snd_soc_dai*) #1

declare dso_local i32 @snd_hda_codec_cleanup(i32*, %struct.hda_pcm_stream*, %struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
