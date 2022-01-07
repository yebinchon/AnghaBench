; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_playback_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_playback_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.tlv320dac33_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @dac33_playback_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac33_playback_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.tlv320dac33_priv*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %7, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = call %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.tlv320dac33_priv* %14, %struct.tlv320dac33_priv** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %37 [
    i32 128, label %16
    i32 129, label %34
  ]

16:                                               ; preds = %3
  %17 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %8, align 8
  %18 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @likely(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %8, align 8
  %24 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %27 = call i32 @dac33_calculate_times(i32 %25, %struct.snd_soc_component* %26)
  %28 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %8, align 8
  %29 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %32 = call i32 @dac33_prepare_chip(i32 %30, %struct.snd_soc_component* %31)
  br label %33

33:                                               ; preds = %22, %16
  br label %37

34:                                               ; preds = %3
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %36 = call i32 @dac33_disable_digital(%struct.snd_soc_component* %35)
  br label %37

37:                                               ; preds = %3, %34, %33
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @dac33_calculate_times(i32, %struct.snd_soc_component*) #1

declare dso_local i32 @dac33_prepare_chip(i32, %struct.snd_soc_component*) #1

declare dso_local i32 @dac33_disable_digital(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
