; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l85.c_cs47l85_hp_post_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l85.c_cs47l85_hp_post_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_soc_component = type { i32 }

@MADERA_DCS_HP1L_CONTROL = common dso_local global i32 0, align 4
@MADERA_DCS_HP1R_CONTROL = common dso_local global i32 0, align 4
@MADERA_EDRE_HP_STEREO_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dapm_widget*)* @cs47l85_hp_post_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs47l85_hp_post_disable(%struct.snd_soc_dapm_widget* %0) #0 {
  %2 = alloca %struct.snd_soc_dapm_widget*, align 8
  %3 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %2, align 8
  %4 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %2, align 8
  %5 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %6)
  store %struct.snd_soc_component* %7, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %2, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %19 [
    i32 129, label %11
    i32 128, label %15
  ]

11:                                               ; preds = %1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = load i32, i32* @MADERA_DCS_HP1L_CONTROL, align 4
  %14 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %12, i32 %13, i32 8198)
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = load i32, i32* @MADERA_DCS_HP1R_CONTROL, align 4
  %18 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %16, i32 %17, i32 8198)
  br label %20

19:                                               ; preds = %1
  br label %24

20:                                               ; preds = %15, %11
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = load i32, i32* @MADERA_EDRE_HP_STEREO_CONTROL, align 4
  %23 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 1, i32 0)
  br label %24

24:                                               ; preds = %20, %19
  ret void
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
