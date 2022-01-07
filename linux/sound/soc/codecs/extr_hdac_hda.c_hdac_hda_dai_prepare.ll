; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hda.c_hdac_hda_dai_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hda.c_hdac_hda_dai_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.hda_pcm_stream = type { i32 }
%struct.hdac_hda_priv = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.hdac_device }
%struct.hdac_device = type { i32 }
%struct.TYPE_3__ = type { i32*, i32* }
%struct.hda_pcm = type { %struct.hda_pcm_stream* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"codec prepare failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @hdac_hda_dai_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_hda_dai_prepare(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.hda_pcm_stream*, align 8
  %8 = alloca %struct.hdac_hda_priv*, align 8
  %9 = alloca %struct.hdac_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hda_pcm*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %6, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %18 = call %struct.hdac_hda_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.hdac_hda_priv* %18, %struct.hdac_hda_priv** %8, align 8
  %19 = load %struct.hdac_hda_priv*, %struct.hdac_hda_priv** %8, align 8
  %20 = getelementptr inbounds %struct.hdac_hda_priv, %struct.hdac_hda_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.hdac_device* %21, %struct.hdac_device** %9, align 8
  %22 = load %struct.hdac_hda_priv*, %struct.hdac_hda_priv** %8, align 8
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %24 = call %struct.hda_pcm* @snd_soc_find_pcm_from_dai(%struct.hdac_hda_priv* %22, %struct.snd_soc_dai* %23)
  store %struct.hda_pcm* %24, %struct.hda_pcm** %11, align 8
  %25 = load %struct.hda_pcm*, %struct.hda_pcm** %11, align 8
  %26 = icmp ne %struct.hda_pcm* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %82

30:                                               ; preds = %2
  %31 = load %struct.hda_pcm*, %struct.hda_pcm** %11, align 8
  %32 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %31, i32 0, i32 0
  %33 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %32, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %33, i64 %36
  store %struct.hda_pcm_stream* %37, %struct.hda_pcm_stream** %7, align 8
  %38 = load %struct.hdac_hda_priv*, %struct.hdac_hda_priv** %8, align 8
  %39 = getelementptr inbounds %struct.hdac_hda_priv, %struct.hdac_hda_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %12, align 4
  %52 = load %struct.hdac_hda_priv*, %struct.hdac_hda_priv** %8, align 8
  %53 = getelementptr inbounds %struct.hdac_hda_priv, %struct.hdac_hda_priv* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %56 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  %66 = load %struct.hdac_hda_priv*, %struct.hdac_hda_priv** %8, align 8
  %67 = getelementptr inbounds %struct.hdac_hda_priv, %struct.hdac_hda_priv* %66, i32 0, i32 0
  %68 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %72 = call i32 @snd_hda_codec_prepare(%struct.TYPE_4__* %67, %struct.hda_pcm_stream* %68, i32 %69, i32 %70, %struct.snd_pcm_substream* %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %30
  %76 = load %struct.hdac_device*, %struct.hdac_device** %9, align 8
  %77 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %76, i32 0, i32 0
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %30
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %27
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.hdac_hda_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.hda_pcm* @snd_soc_find_pcm_from_dai(%struct.hdac_hda_priv*, %struct.snd_soc_dai*) #1

declare dso_local i32 @snd_hda_codec_prepare(%struct.TYPE_4__*, %struct.hda_pcm_stream*, i32, i32, %struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
