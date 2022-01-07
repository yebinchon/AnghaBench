; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_rt5668_hp_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_rt5668_hp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@RT5668_HP_LOGIC_CTRL_2 = common dso_local global i32 0, align 4
@RT5668_HP_CTRL_2 = common dso_local global i32 0, align 4
@RT5668_STO_NG2_CTRL_1 = common dso_local global i32 0, align 4
@RT5668_NG2_EN_MASK = common dso_local global i32 0, align 4
@RT5668_NG2_EN = common dso_local global i32 0, align 4
@RT5668_DEPOP_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @rt5668_hp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5668_hp_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
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
  switch i32 %13, label %36 [
    i32 128, label %14
    i32 129, label %29
  ]

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = load i32, i32* @RT5668_HP_LOGIC_CTRL_2, align 4
  %17 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %15, i32 %16, i32 18)
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = load i32, i32* @RT5668_HP_CTRL_2, align 4
  %20 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %18, i32 %19, i32 24576)
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %22 = load i32, i32* @RT5668_STO_NG2_CTRL_1, align 4
  %23 = load i32, i32* @RT5668_NG2_EN_MASK, align 4
  %24 = load i32, i32* @RT5668_NG2_EN, align 4
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %27 = load i32, i32* @RT5668_DEPOP_1, align 4
  %28 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 96, i32 96)
  br label %37

29:                                               ; preds = %3
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %31 = load i32, i32* @RT5668_DEPOP_1, align 4
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %30, i32 %31, i32 96, i32 0)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %34 = load i32, i32* @RT5668_HP_CTRL_2, align 4
  %35 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %33, i32 %34, i32 0)
  br label %37

36:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

37:                                               ; preds = %29, %14
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
