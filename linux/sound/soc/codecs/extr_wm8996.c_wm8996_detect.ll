; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.snd_soc_component.0 = type opaque
%struct.wm8996_priv = type { i32, i32 (%struct.snd_soc_component.1*, i32)*, i64, %struct.snd_soc_jack* }
%struct.snd_soc_component.1 = type opaque
%struct.snd_soc_dapm_context = type { i32 }

@WM8996_MICBIAS_1 = common dso_local global i32 0, align 4
@WM8996_MICB1_DISCH = common dso_local global i32 0, align 4
@WM8996_MICBIAS_2 = common dso_local global i32 0, align 4
@WM8996_MICB2_DISCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"SYSCLK\00", align 1
@WM8996_MIC_DETECT_1 = common dso_local global i32 0, align 4
@WM8996_MICD_ENA = common dso_local global i32 0, align 4
@WM8996_MICD_RATE_MASK = common dso_local global i32 0, align 4
@WM8996_INTERRUPT_STATUS_2_MASK = common dso_local global i32 0, align 4
@WM8996_IM_MICD_EINT = common dso_local global i32 0, align 4
@WM8996_HP_DONE_EINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8996_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1, i32 (%struct.snd_soc_component.0*, i32)* %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_soc_jack*, align 8
  %6 = alloca i32 (%struct.snd_soc_component.0*, i32)*, align 8
  %7 = alloca %struct.wm8996_priv*, align 8
  %8 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %5, align 8
  store i32 (%struct.snd_soc_component.0*, i32)* %2, i32 (%struct.snd_soc_component.0*, i32)** %6, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.wm8996_priv* %10, %struct.wm8996_priv** %7, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %11)
  store %struct.snd_soc_dapm_context* %12, %struct.snd_soc_dapm_context** %8, align 8
  %13 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %14 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %15 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %14, i32 0, i32 3
  store %struct.snd_soc_jack* %13, %struct.snd_soc_jack** %15, align 8
  %16 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %17 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i32 (%struct.snd_soc_component.0*, i32)*, i32 (%struct.snd_soc_component.0*, i32)** %6, align 8
  %19 = bitcast i32 (%struct.snd_soc_component.0*, i32)* %18 to i32 (%struct.snd_soc_component.1*, i32)*
  %20 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %21 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %20, i32 0, i32 1
  store i32 (%struct.snd_soc_component.1*, i32)* %19, i32 (%struct.snd_soc_component.1*, i32)** %21, align 8
  %22 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %23 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %25 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %24, i32 0, i32 1
  %26 = load i32 (%struct.snd_soc_component.1*, i32)*, i32 (%struct.snd_soc_component.1*, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.snd_soc_component.1*, i32)* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %30 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %29, i32 0, i32 1
  %31 = load i32 (%struct.snd_soc_component.1*, i32)*, i32 (%struct.snd_soc_component.1*, i32)** %30, align 8
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %33 = bitcast %struct.snd_soc_component* %32 to %struct.snd_soc_component.1*
  %34 = call i32 %31(%struct.snd_soc_component.1* %33, i32 0)
  br label %35

35:                                               ; preds = %28, %3
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %37 = load i32, i32* @WM8996_MICBIAS_1, align 4
  %38 = load i32, i32* @WM8996_MICB1_DISCH, align 4
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %36, i32 %37, i32 %38, i32 0)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %41 = load i32, i32* @WM8996_MICBIAS_2, align 4
  %42 = load i32, i32* @WM8996_MICB2_DISCH, align 4
  %43 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 %42, i32 0)
  %44 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %45 = call i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context* %44)
  %46 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %47 = call i32 @snd_soc_dapm_force_enable_pin_unlocked(%struct.snd_soc_dapm_context* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %49 = call i32 @snd_soc_dapm_force_enable_pin_unlocked(%struct.snd_soc_dapm_context* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %51 = call i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context* %50)
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %53 = load i32, i32* @WM8996_MIC_DETECT_1, align 4
  %54 = load i32, i32* @WM8996_MICD_ENA, align 4
  %55 = load i32, i32* @WM8996_MICD_ENA, align 4
  %56 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %58 = load i32, i32* @WM8996_MIC_DETECT_1, align 4
  %59 = load i32, i32* @WM8996_MICD_RATE_MASK, align 4
  %60 = load i32, i32* @WM8996_MICD_RATE_MASK, align 4
  %61 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %63 = load i32, i32* @WM8996_INTERRUPT_STATUS_2_MASK, align 4
  %64 = load i32, i32* @WM8996_IM_MICD_EINT, align 4
  %65 = load i32, i32* @WM8996_HP_DONE_EINT, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %62, i32 %63, i32 %66, i32 0)
  ret i32 0
}

declare dso_local %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin_unlocked(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
