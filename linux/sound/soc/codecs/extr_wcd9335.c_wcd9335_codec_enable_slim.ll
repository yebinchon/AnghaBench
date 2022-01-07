; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_enable_slim.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_enable_slim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i64, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wcd9335_codec = type { %struct.wcd_slim_codec_dai_data* }
%struct.wcd_slim_codec_dai_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wcd9335_codec_enable_slim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_codec_enable_slim(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.wcd9335_codec*, align 8
  %9 = alloca %struct.wcd_slim_codec_dai_data*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %7, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = call %struct.wcd9335_codec* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.wcd9335_codec* %15, %struct.wcd9335_codec** %8, align 8
  %16 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %17 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %16, i32 0, i32 0
  %18 = load %struct.wcd_slim_codec_dai_data*, %struct.wcd_slim_codec_dai_data** %17, align 8
  %19 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.wcd_slim_codec_dai_data, %struct.wcd_slim_codec_dai_data* %18, i64 %21
  store %struct.wcd_slim_codec_dai_data* %22, %struct.wcd_slim_codec_dai_data** %9, align 8
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %34 [
    i32 128, label %24
    i32 129, label %28
  ]

24:                                               ; preds = %3
  %25 = load %struct.wcd_slim_codec_dai_data*, %struct.wcd_slim_codec_dai_data** %9, align 8
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %27 = call i32 @wcd9335_codec_enable_int_port(%struct.wcd_slim_codec_dai_data* %25, %struct.snd_soc_component* %26)
  br label %34

28:                                               ; preds = %3
  %29 = load %struct.wcd_slim_codec_dai_data*, %struct.wcd_slim_codec_dai_data** %9, align 8
  %30 = getelementptr inbounds %struct.wcd_slim_codec_dai_data, %struct.wcd_slim_codec_dai_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @kfree(i32 %32)
  br label %34

34:                                               ; preds = %3, %28, %24
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wcd9335_codec* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @wcd9335_codec_enable_int_port(%struct.wcd_slim_codec_dai_data*, %struct.snd_soc_component*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
