; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_hpdet_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_hpdet_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@WM8996_ANALOGUE_HP_1 = common dso_local global i32 0, align 4
@WM8996_HPOUT1L_RMV_SHORT = common dso_local global i32 0, align 4
@WM8996_HPOUT1R_RMV_SHORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Bandgap\00", align 1
@WM8996_MIC_DETECT_1 = common dso_local global i32 0, align 4
@WM8996_MICD_ENA = common dso_local global i32 0, align 4
@WM8996_ACCESSORY_DETECT_MODE_1 = common dso_local global i32 0, align 4
@WM8996_JD_MODE_MASK = common dso_local global i32 0, align 4
@WM8996_HEADPHONE_DETECT_1 = common dso_local global i32 0, align 4
@WM8996_HP_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @wm8996_hpdet_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8996_hpdet_start(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %4)
  store %struct.snd_soc_dapm_context* %5, %struct.snd_soc_dapm_context** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = load i32, i32* @WM8996_ANALOGUE_HP_1, align 4
  %8 = load i32, i32* @WM8996_HPOUT1L_RMV_SHORT, align 4
  %9 = load i32, i32* @WM8996_HPOUT1R_RMV_SHORT, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @WM8996_HPOUT1L_RMV_SHORT, align 4
  %12 = load i32, i32* @WM8996_HPOUT1R_RMV_SHORT, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %6, i32 %7, i32 %10, i32 %13)
  %15 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %16 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %18 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %17)
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %20 = load i32, i32* @WM8996_MIC_DETECT_1, align 4
  %21 = load i32, i32* @WM8996_MICD_ENA, align 4
  %22 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 %21, i32 0)
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %24 = load i32, i32* @WM8996_ACCESSORY_DETECT_MODE_1, align 4
  %25 = load i32, i32* @WM8996_JD_MODE_MASK, align 4
  %26 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %23, i32 %24, i32 %25, i32 1)
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %28 = load i32, i32* @WM8996_HEADPHONE_DETECT_1, align 4
  %29 = load i32, i32* @WM8996_HP_POLL, align 4
  %30 = load i32, i32* @WM8996_HP_POLL, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 %29, i32 %30)
  ret void
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
