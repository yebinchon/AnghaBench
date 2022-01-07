; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sirf/extr_sirf-audio.c_sirf_audio_spk_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sirf/extr_sirf-audio.c_sirf_audio_spk_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.snd_soc_dapm_context* }
%struct.snd_soc_dapm_context = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.sirf_audio_card = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @sirf_audio_spk_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirf_audio_spk_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dapm_context*, align 8
  %8 = alloca %struct.snd_soc_card*, align 8
  %9 = alloca %struct.sirf_audio_card*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %12, align 8
  store %struct.snd_soc_dapm_context* %13, %struct.snd_soc_dapm_context** %7, align 8
  %14 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_card*, %struct.snd_soc_card** %15, align 8
  store %struct.snd_soc_card* %16, %struct.snd_soc_card** %8, align 8
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %18 = call %struct.sirf_audio_card* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %17)
  store %struct.sirf_audio_card* %18, %struct.sirf_audio_card** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @SND_SOC_DAPM_EVENT_OFF(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load %struct.sirf_audio_card*, %struct.sirf_audio_card** %9, align 8
  %25 = getelementptr inbounds %struct.sirf_audio_card, %struct.sirf_audio_card* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @gpio_is_valid(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.sirf_audio_card*, %struct.sirf_audio_card** %9, align 8
  %31 = getelementptr inbounds %struct.sirf_audio_card, %struct.sirf_audio_card* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @gpio_set_value(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %3
  ret i32 0
}

declare dso_local %struct.sirf_audio_card* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @SND_SOC_DAPM_EVENT_OFF(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
