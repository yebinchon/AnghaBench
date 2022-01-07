; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bdw-rt5677.c_bdw_rt5677_event_hp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bdw-rt5677.c_bdw_rt5677_event_hp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.snd_soc_dapm_context* }
%struct.snd_soc_dapm_context = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.bdw_rt5677_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @bdw_rt5677_event_hp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdw_rt5677_event_hp(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dapm_context*, align 8
  %8 = alloca %struct.snd_soc_card*, align 8
  %9 = alloca %struct.bdw_rt5677_priv*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %11, align 8
  store %struct.snd_soc_dapm_context* %12, %struct.snd_soc_dapm_context** %7, align 8
  %13 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %14, align 8
  store %struct.snd_soc_card* %15, %struct.snd_soc_card** %8, align 8
  %16 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %17 = call %struct.bdw_rt5677_priv* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %16)
  store %struct.bdw_rt5677_priv* %17, %struct.bdw_rt5677_priv** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = call i32 @msleep(i32 70)
  br label %23

23:                                               ; preds = %21, %3
  %24 = load %struct.bdw_rt5677_priv*, %struct.bdw_rt5677_priv** %9, align 8
  %25 = getelementptr inbounds %struct.bdw_rt5677_priv, %struct.bdw_rt5677_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %27)
  %29 = call i32 @gpiod_set_value_cansleep(i32 %26, i64 %28)
  ret i32 0
}

declare dso_local %struct.bdw_rt5677_priv* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
