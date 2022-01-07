; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wm_hubs_add_analogue_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wm_hubs_add_analogue_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@WM8993_LEFT_LINE_INPUT_1_2_VOLUME = common dso_local global i32 0, align 4
@WM8993_IN1_VU = common dso_local global i32 0, align 4
@WM8993_RIGHT_LINE_INPUT_1_2_VOLUME = common dso_local global i32 0, align 4
@WM8993_LEFT_LINE_INPUT_3_4_VOLUME = common dso_local global i32 0, align 4
@WM8993_IN2_VU = common dso_local global i32 0, align 4
@WM8993_RIGHT_LINE_INPUT_3_4_VOLUME = common dso_local global i32 0, align 4
@WM8993_SPEAKER_VOLUME_LEFT = common dso_local global i32 0, align 4
@WM8993_SPKOUT_VU = common dso_local global i32 0, align 4
@WM8993_SPEAKER_VOLUME_RIGHT = common dso_local global i32 0, align 4
@WM8993_LEFT_OUTPUT_VOLUME = common dso_local global i32 0, align 4
@WM8993_HPOUT1_VU = common dso_local global i32 0, align 4
@WM8993_HPOUT1L_ZC = common dso_local global i32 0, align 4
@WM8993_RIGHT_OUTPUT_VOLUME = common dso_local global i32 0, align 4
@WM8993_HPOUT1R_ZC = common dso_local global i32 0, align 4
@WM8993_LEFT_OPGA_VOLUME = common dso_local global i32 0, align 4
@WM8993_MIXOUTL_ZC = common dso_local global i32 0, align 4
@WM8993_MIXOUT_VU = common dso_local global i32 0, align 4
@WM8993_RIGHT_OPGA_VOLUME = common dso_local global i32 0, align 4
@WM8993_MIXOUTR_ZC = common dso_local global i32 0, align 4
@analogue_snd_controls = common dso_local global i32 0, align 4
@analogue_dapm_widgets = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm_hubs_add_analogue_controls(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %4)
  store %struct.snd_soc_dapm_context* %5, %struct.snd_soc_dapm_context** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = load i32, i32* @WM8993_LEFT_LINE_INPUT_1_2_VOLUME, align 4
  %8 = load i32, i32* @WM8993_IN1_VU, align 4
  %9 = load i32, i32* @WM8993_IN1_VU, align 4
  %10 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %6, i32 %7, i32 %8, i32 %9)
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %12 = load i32, i32* @WM8993_RIGHT_LINE_INPUT_1_2_VOLUME, align 4
  %13 = load i32, i32* @WM8993_IN1_VU, align 4
  %14 = load i32, i32* @WM8993_IN1_VU, align 4
  %15 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %17 = load i32, i32* @WM8993_LEFT_LINE_INPUT_3_4_VOLUME, align 4
  %18 = load i32, i32* @WM8993_IN2_VU, align 4
  %19 = load i32, i32* @WM8993_IN2_VU, align 4
  %20 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %22 = load i32, i32* @WM8993_RIGHT_LINE_INPUT_3_4_VOLUME, align 4
  %23 = load i32, i32* @WM8993_IN2_VU, align 4
  %24 = load i32, i32* @WM8993_IN2_VU, align 4
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %27 = load i32, i32* @WM8993_SPEAKER_VOLUME_LEFT, align 4
  %28 = load i32, i32* @WM8993_SPKOUT_VU, align 4
  %29 = load i32, i32* @WM8993_SPKOUT_VU, align 4
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %32 = load i32, i32* @WM8993_SPEAKER_VOLUME_RIGHT, align 4
  %33 = load i32, i32* @WM8993_SPKOUT_VU, align 4
  %34 = load i32, i32* @WM8993_SPKOUT_VU, align 4
  %35 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %37 = load i32, i32* @WM8993_LEFT_OUTPUT_VOLUME, align 4
  %38 = load i32, i32* @WM8993_HPOUT1_VU, align 4
  %39 = load i32, i32* @WM8993_HPOUT1L_ZC, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @WM8993_HPOUT1_VU, align 4
  %42 = load i32, i32* @WM8993_HPOUT1L_ZC, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %36, i32 %37, i32 %40, i32 %43)
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %46 = load i32, i32* @WM8993_RIGHT_OUTPUT_VOLUME, align 4
  %47 = load i32, i32* @WM8993_HPOUT1_VU, align 4
  %48 = load i32, i32* @WM8993_HPOUT1R_ZC, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @WM8993_HPOUT1_VU, align 4
  %51 = load i32, i32* @WM8993_HPOUT1R_ZC, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 %49, i32 %52)
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %55 = load i32, i32* @WM8993_LEFT_OPGA_VOLUME, align 4
  %56 = load i32, i32* @WM8993_MIXOUTL_ZC, align 4
  %57 = load i32, i32* @WM8993_MIXOUT_VU, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @WM8993_MIXOUTL_ZC, align 4
  %60 = load i32, i32* @WM8993_MIXOUT_VU, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %58, i32 %61)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %64 = load i32, i32* @WM8993_RIGHT_OPGA_VOLUME, align 4
  %65 = load i32, i32* @WM8993_MIXOUTR_ZC, align 4
  %66 = load i32, i32* @WM8993_MIXOUT_VU, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @WM8993_MIXOUTR_ZC, align 4
  %69 = load i32, i32* @WM8993_MIXOUT_VU, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %63, i32 %64, i32 %67, i32 %70)
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %73 = load i32, i32* @analogue_snd_controls, align 4
  %74 = load i32, i32* @analogue_snd_controls, align 4
  %75 = call i32 @ARRAY_SIZE(i32 %74)
  %76 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %72, i32 %73, i32 %75)
  %77 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %78 = load i32, i32* @analogue_dapm_widgets, align 4
  %79 = load i32, i32* @analogue_dapm_widgets, align 4
  %80 = call i32 @ARRAY_SIZE(i32 %79)
  %81 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %77, i32 %78, i32 %80)
  ret i32 0
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
