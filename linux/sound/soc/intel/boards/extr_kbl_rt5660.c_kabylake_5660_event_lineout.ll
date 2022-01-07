; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_rt5660.c_kabylake_5660_event_lineout.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_rt5660.c_kabylake_5660_event_lineout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.snd_soc_dapm_context* }
%struct.snd_soc_dapm_context = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.kbl_codec_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @kabylake_5660_event_lineout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kabylake_5660_event_lineout(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dapm_context*, align 8
  %8 = alloca %struct.kbl_codec_private*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %10, align 8
  store %struct.snd_soc_dapm_context* %11, %struct.snd_soc_dapm_context** %7, align 8
  %12 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.kbl_codec_private* @snd_soc_card_get_drvdata(i32 %14)
  store %struct.kbl_codec_private* %15, %struct.kbl_codec_private** %8, align 8
  %16 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %8, align 8
  %17 = getelementptr inbounds %struct.kbl_codec_private, %struct.kbl_codec_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @SND_SOC_DAPM_EVENT_ON(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @gpiod_set_value_cansleep(i32 %18, i32 %23)
  ret i32 0
}

declare dso_local %struct.kbl_codec_private* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @SND_SOC_DAPM_EVENT_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
