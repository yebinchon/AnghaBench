; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_lineout_dac_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_lineout_dac_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wcd9335_codec = type { i32 }

@WCD_CLSH_EVENT_PRE_DAC = common dso_local global i32 0, align 4
@WCD_CLSH_STATE_LO = common dso_local global i32 0, align 4
@CLS_AB = common dso_local global i32 0, align 4
@WCD_CLSH_EVENT_POST_PA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wcd9335_codec_lineout_dac_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_codec_lineout_dac_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.wcd9335_codec*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %7, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.wcd9335_codec* @dev_get_drvdata(i32 %15)
  store %struct.wcd9335_codec* %16, %struct.wcd9335_codec** %8, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %34 [
    i32 128, label %18
    i32 129, label %26
  ]

18:                                               ; preds = %3
  %19 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %20 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @WCD_CLSH_EVENT_PRE_DAC, align 4
  %23 = load i32, i32* @WCD_CLSH_STATE_LO, align 4
  %24 = load i32, i32* @CLS_AB, align 4
  %25 = call i32 @wcd_clsh_ctrl_set_state(i32 %21, i32 %22, i32 %23, i32 %24)
  br label %34

26:                                               ; preds = %3
  %27 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %28 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WCD_CLSH_EVENT_POST_PA, align 4
  %31 = load i32, i32* @WCD_CLSH_STATE_LO, align 4
  %32 = load i32, i32* @CLS_AB, align 4
  %33 = call i32 @wcd_clsh_ctrl_set_state(i32 %29, i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %3, %26, %18
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wcd9335_codec* @dev_get_drvdata(i32) #1

declare dso_local i32 @wcd_clsh_ctrl_set_state(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
