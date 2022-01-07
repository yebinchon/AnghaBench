; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcht_es8316.c_byt_cht_es8316_speaker_power_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcht_es8316.c_byt_cht_es8316_speaker_power_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.byt_cht_es8316_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @byt_cht_es8316_speaker_power_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_cht_es8316_speaker_power_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_card*, align 8
  %8 = alloca %struct.byt_cht_es8316_private*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_card*, %struct.snd_soc_card** %12, align 8
  store %struct.snd_soc_card* %13, %struct.snd_soc_card** %7, align 8
  %14 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %15 = call %struct.byt_cht_es8316_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %14)
  store %struct.byt_cht_es8316_private* %15, %struct.byt_cht_es8316_private** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.byt_cht_es8316_private*, %struct.byt_cht_es8316_private** %8, align 8
  %21 = getelementptr inbounds %struct.byt_cht_es8316_private, %struct.byt_cht_es8316_private* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load %struct.byt_cht_es8316_private*, %struct.byt_cht_es8316_private** %8, align 8
  %24 = getelementptr inbounds %struct.byt_cht_es8316_private, %struct.byt_cht_es8316_private* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.byt_cht_es8316_private*, %struct.byt_cht_es8316_private** %8, align 8
  %27 = getelementptr inbounds %struct.byt_cht_es8316_private, %struct.byt_cht_es8316_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.byt_cht_es8316_private*, %struct.byt_cht_es8316_private** %8, align 8
  %30 = getelementptr inbounds %struct.byt_cht_es8316_private, %struct.byt_cht_es8316_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gpiod_set_value_cansleep(i32 %28, i32 %31)
  ret i32 0
}

declare dso_local %struct.byt_cht_es8316_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
