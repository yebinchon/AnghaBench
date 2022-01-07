; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_lout_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_lout_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@RT5640_PWR_ANLG1 = common dso_local global i32 0, align 4
@RT5640_PWR_LM = common dso_local global i32 0, align 4
@RT5640_OUTPUT = common dso_local global i32 0, align 4
@RT5640_L_MUTE = common dso_local global i32 0, align 4
@RT5640_R_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @rt5640_lout_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5640_lout_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %8, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %42 [
    i32 129, label %14
    i32 128, label %28
  ]

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call i32 @hp_amp_power_on(%struct.snd_soc_component* %15)
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %18 = load i32, i32* @RT5640_PWR_ANLG1, align 4
  %19 = load i32, i32* @RT5640_PWR_LM, align 4
  %20 = load i32, i32* @RT5640_PWR_LM, align 4
  %21 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %23 = load i32, i32* @RT5640_OUTPUT, align 4
  %24 = load i32, i32* @RT5640_L_MUTE, align 4
  %25 = load i32, i32* @RT5640_R_MUTE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %22, i32 %23, i32 %26, i32 0)
  br label %43

28:                                               ; preds = %3
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %30 = load i32, i32* @RT5640_OUTPUT, align 4
  %31 = load i32, i32* @RT5640_L_MUTE, align 4
  %32 = load i32, i32* @RT5640_R_MUTE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @RT5640_L_MUTE, align 4
  %35 = load i32, i32* @RT5640_R_MUTE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %39 = load i32, i32* @RT5640_PWR_ANLG1, align 4
  %40 = load i32, i32* @RT5640_PWR_LM, align 4
  %41 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %38, i32 %39, i32 %40, i32 0)
  br label %43

42:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

43:                                               ; preds = %28, %14
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @hp_amp_power_on(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
