; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_tm2_wm5110.c_tm2_mic_bias.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_tm2_wm5110.c_tm2_mic_bias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.tm2_machine_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @tm2_mic_bias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm2_mic_bias(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_card*, align 8
  %8 = alloca %struct.tm2_machine_priv*, align 8
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
  %15 = call %struct.tm2_machine_priv* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %14)
  store %struct.tm2_machine_priv* %15, %struct.tm2_machine_priv** %8, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %27 [
    i32 128, label %17
    i32 129, label %22
  ]

17:                                               ; preds = %3
  %18 = load %struct.tm2_machine_priv*, %struct.tm2_machine_priv** %8, align 8
  %19 = getelementptr inbounds %struct.tm2_machine_priv, %struct.tm2_machine_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @gpiod_set_value_cansleep(i32 %20, i32 1)
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.tm2_machine_priv*, %struct.tm2_machine_priv** %8, align 8
  %24 = getelementptr inbounds %struct.tm2_machine_priv, %struct.tm2_machine_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gpiod_set_value_cansleep(i32 %25, i32 0)
  br label %27

27:                                               ; preds = %3, %22, %17
  ret i32 0
}

declare dso_local %struct.tm2_machine_priv* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
