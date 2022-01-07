; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdmi-codec.c_hdmi_codec_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdmi-codec.c_hdmi_codec_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.snd_soc_dai_driver* }
%struct.snd_soc_dai_driver = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.hdmi_codec_priv = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__*, %struct.hdmi_codec_priv* }
%struct.TYPE_7__ = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_kcontrol_new = type { i32, i8*, i32, i32, i32, i32 }

@SNDRV_CTL_ELEM_ACCESS_READ = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_VOLATILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ELD\00", align 1
@hdmi_eld_ctl_get = common dso_local global i32 0, align 4
@hdmi_eld_ctl_info = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_IFACE_PCM = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@hdmi_codec_chmap_ctl_get = common dso_local global i32 0, align 4
@hdmi_codec_stereo_chmaps = common dso_local global i32 0, align 4
@HDMI_CODEC_CHMAP_IDX_UNKNOWN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*, %struct.snd_soc_dai*)* @hdmi_codec_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_codec_pcm_new(%struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_dai_driver*, align 8
  %7 = alloca %struct.hdmi_codec_priv*, align 8
  %8 = alloca %struct.snd_kcontrol*, align 8
  %9 = alloca %struct.snd_kcontrol_new, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %12, align 8
  store %struct.snd_soc_dai_driver* %13, %struct.snd_soc_dai_driver** %6, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %15 = call %struct.hdmi_codec_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %14)
  store %struct.hdmi_codec_priv* %15, %struct.hdmi_codec_priv** %7, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %9, i32 0, i32 0
  %17 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READ, align 4
  %18 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_VOLATILE, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %16, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %9, i32 0, i32 2
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %21, align 8
  %27 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %9, i32 0, i32 3
  %28 = load i32, i32* @hdmi_eld_ctl_get, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %9, i32 0, i32 4
  %30 = load i32, i32* @hdmi_eld_ctl_info, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %9, i32 0, i32 5
  %32 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_PCM, align 4
  store i32 %32, i32* %31, align 4
  %33 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %34 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %37 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %7, align 8
  %42 = getelementptr inbounds %struct.hdmi_codec_priv, %struct.hdmi_codec_priv* %41, i32 0, i32 1
  %43 = call i32 @snd_pcm_add_chmap_ctls(%struct.TYPE_9__* %35, i32 %36, i32* null, i32 %40, i32 0, %struct.TYPE_10__** %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %2
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %86

48:                                               ; preds = %2
  %49 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %7, align 8
  %50 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %7, align 8
  %51 = getelementptr inbounds %struct.hdmi_codec_priv, %struct.hdmi_codec_priv* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  store %struct.hdmi_codec_priv* %49, %struct.hdmi_codec_priv** %53, align 8
  %54 = load i32, i32* @hdmi_codec_chmap_ctl_get, align 4
  %55 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %7, align 8
  %56 = getelementptr inbounds %struct.hdmi_codec_priv, %struct.hdmi_codec_priv* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %54, i32* %60, align 4
  %61 = load i32, i32* @hdmi_codec_stereo_chmaps, align 4
  %62 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %7, align 8
  %63 = getelementptr inbounds %struct.hdmi_codec_priv, %struct.hdmi_codec_priv* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 8
  %66 = load i32, i32* @HDMI_CODEC_CHMAP_IDX_UNKNOWN, align 4
  %67 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %7, align 8
  %68 = getelementptr inbounds %struct.hdmi_codec_priv, %struct.hdmi_codec_priv* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %70 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %9, i32 %71)
  store %struct.snd_kcontrol* %72, %struct.snd_kcontrol** %8, align 8
  %73 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %74 = icmp ne %struct.snd_kcontrol* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %48
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %86

78:                                               ; preds = %48
  %79 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %80 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %85 = call i32 @snd_ctl_add(i32 %83, %struct.snd_kcontrol* %84)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %78, %75, %46
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.hdmi_codec_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @snd_pcm_add_chmap_ctls(%struct.TYPE_9__*, i32, i32*, i32, i32, %struct.TYPE_10__**) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, i32) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
