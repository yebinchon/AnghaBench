; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9090.c_wm9090_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9090.c_wm9090_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@WM9090_IN1_LINE_INPUT_A_VOLUME = common dso_local global i32 0, align 4
@WM9090_IN1_VU = common dso_local global i32 0, align 4
@WM9090_IN1A_ZC = common dso_local global i32 0, align 4
@WM9090_IN1_LINE_INPUT_B_VOLUME = common dso_local global i32 0, align 4
@WM9090_IN1B_ZC = common dso_local global i32 0, align 4
@WM9090_IN2_LINE_INPUT_A_VOLUME = common dso_local global i32 0, align 4
@WM9090_IN2_VU = common dso_local global i32 0, align 4
@WM9090_IN2A_ZC = common dso_local global i32 0, align 4
@WM9090_IN2_LINE_INPUT_B_VOLUME = common dso_local global i32 0, align 4
@WM9090_IN2B_ZC = common dso_local global i32 0, align 4
@WM9090_SPEAKER_VOLUME_LEFT = common dso_local global i32 0, align 4
@WM9090_SPKOUT_VU = common dso_local global i32 0, align 4
@WM9090_SPKOUTL_ZC = common dso_local global i32 0, align 4
@WM9090_LEFT_OUTPUT_VOLUME = common dso_local global i32 0, align 4
@WM9090_HPOUT1_VU = common dso_local global i32 0, align 4
@WM9090_HPOUT1L_ZC = common dso_local global i32 0, align 4
@WM9090_RIGHT_OUTPUT_VOLUME = common dso_local global i32 0, align 4
@WM9090_HPOUT1R_ZC = common dso_local global i32 0, align 4
@WM9090_CLOCKING_1 = common dso_local global i32 0, align 4
@WM9090_TOCLK_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm9090_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9090_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %3 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %4 = load i32, i32* @WM9090_IN1_LINE_INPUT_A_VOLUME, align 4
  %5 = load i32, i32* @WM9090_IN1_VU, align 4
  %6 = load i32, i32* @WM9090_IN1A_ZC, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @WM9090_IN1_VU, align 4
  %9 = load i32, i32* @WM9090_IN1A_ZC, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %3, i32 %4, i32 %7, i32 %10)
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %13 = load i32, i32* @WM9090_IN1_LINE_INPUT_B_VOLUME, align 4
  %14 = load i32, i32* @WM9090_IN1_VU, align 4
  %15 = load i32, i32* @WM9090_IN1B_ZC, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WM9090_IN1_VU, align 4
  %18 = load i32, i32* @WM9090_IN1B_ZC, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %12, i32 %13, i32 %16, i32 %19)
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %22 = load i32, i32* @WM9090_IN2_LINE_INPUT_A_VOLUME, align 4
  %23 = load i32, i32* @WM9090_IN2_VU, align 4
  %24 = load i32, i32* @WM9090_IN2A_ZC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @WM9090_IN2_VU, align 4
  %27 = load i32, i32* @WM9090_IN2A_ZC, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %31 = load i32, i32* @WM9090_IN2_LINE_INPUT_B_VOLUME, align 4
  %32 = load i32, i32* @WM9090_IN2_VU, align 4
  %33 = load i32, i32* @WM9090_IN2B_ZC, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @WM9090_IN2_VU, align 4
  %36 = load i32, i32* @WM9090_IN2B_ZC, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %30, i32 %31, i32 %34, i32 %37)
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %40 = load i32, i32* @WM9090_SPEAKER_VOLUME_LEFT, align 4
  %41 = load i32, i32* @WM9090_SPKOUT_VU, align 4
  %42 = load i32, i32* @WM9090_SPKOUTL_ZC, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @WM9090_SPKOUT_VU, align 4
  %45 = load i32, i32* @WM9090_SPKOUTL_ZC, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %39, i32 %40, i32 %43, i32 %46)
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %49 = load i32, i32* @WM9090_LEFT_OUTPUT_VOLUME, align 4
  %50 = load i32, i32* @WM9090_HPOUT1_VU, align 4
  %51 = load i32, i32* @WM9090_HPOUT1L_ZC, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @WM9090_HPOUT1_VU, align 4
  %54 = load i32, i32* @WM9090_HPOUT1L_ZC, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %48, i32 %49, i32 %52, i32 %55)
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %58 = load i32, i32* @WM9090_RIGHT_OUTPUT_VOLUME, align 4
  %59 = load i32, i32* @WM9090_HPOUT1_VU, align 4
  %60 = load i32, i32* @WM9090_HPOUT1R_ZC, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @WM9090_HPOUT1_VU, align 4
  %63 = load i32, i32* @WM9090_HPOUT1R_ZC, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %57, i32 %58, i32 %61, i32 %64)
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %67 = load i32, i32* @WM9090_CLOCKING_1, align 4
  %68 = load i32, i32* @WM9090_TOCLK_ENA, align 4
  %69 = load i32, i32* @WM9090_TOCLK_ENA, align 4
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %72 = call i32 @wm9090_add_controls(%struct.snd_soc_component* %71)
  ret i32 0
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @wm9090_add_controls(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
