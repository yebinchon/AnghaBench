; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.wm5100_priv = type { i32, %struct.snd_soc_jack*, i64 }
%struct.snd_soc_dapm_context = type { i32 }

@WM5100_MIC_DETECT_1 = common dso_local global i32 0, align 4
@WM5100_ACCDET_BIAS_STARTTIME_MASK = common dso_local global i32 0, align 4
@WM5100_ACCDET_RATE_MASK = common dso_local global i32 0, align 4
@WM5100_ACCDET_BIAS_STARTTIME_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"CP2\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"SYSCLK\00", align 1
@WM5100_ACCDET_ENA = common dso_local global i32 0, align 4
@WM5100_INTERRUPT_STATUS_3_MASK = common dso_local global i32 0, align 4
@WM5100_IM_ACCDET_EINT = common dso_local global i32 0, align 4
@WM5100_IM_HPDET_EINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm5100_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_jack*, align 8
  %5 = alloca %struct.wm5100_priv*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %4, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.wm5100_priv* %8, %struct.wm5100_priv** %5, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %9)
  store %struct.snd_soc_dapm_context* %10, %struct.snd_soc_dapm_context** %6, align 8
  %11 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %12 = icmp ne %struct.snd_soc_jack* %11, null
  br i1 %12, label %13, label %52

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %15 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %16 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %15, i32 0, i32 1
  store %struct.snd_soc_jack* %14, %struct.snd_soc_jack** %16, align 8
  %17 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %18 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %20 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %22 = call i32 @wm5100_set_detect_mode(%struct.wm5100_priv* %21, i32 0)
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %24 = load i32, i32* @WM5100_MIC_DETECT_1, align 4
  %25 = load i32, i32* @WM5100_ACCDET_BIAS_STARTTIME_MASK, align 4
  %26 = load i32, i32* @WM5100_ACCDET_RATE_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @WM5100_ACCDET_BIAS_STARTTIME_SHIFT, align 4
  %29 = shl i32 7, %28
  %30 = load i32, i32* @WM5100_ACCDET_RATE_MASK, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %23, i32 %24, i32 %27, i32 %31)
  %33 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %34 = call i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context* %33)
  %35 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %36 = call i32 @snd_soc_dapm_force_enable_pin_unlocked(%struct.snd_soc_dapm_context* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %38 = call i32 @snd_soc_dapm_force_enable_pin_unlocked(%struct.snd_soc_dapm_context* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %40 = call i32 @snd_soc_dapm_sync_unlocked(%struct.snd_soc_dapm_context* %39)
  %41 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %42 = call i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context* %41)
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %44 = load i32, i32* @WM5100_MIC_DETECT_1, align 4
  %45 = load i32, i32* @WM5100_ACCDET_ENA, align 4
  %46 = load i32, i32* @WM5100_ACCDET_ENA, align 4
  %47 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %49 = load i32, i32* @WM5100_INTERRUPT_STATUS_3_MASK, align 4
  %50 = load i32, i32* @WM5100_IM_ACCDET_EINT, align 4
  %51 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %48, i32 %49, i32 %50, i32 0)
  br label %68

52:                                               ; preds = %2
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %54 = load i32, i32* @WM5100_INTERRUPT_STATUS_3_MASK, align 4
  %55 = load i32, i32* @WM5100_IM_HPDET_EINT, align 4
  %56 = load i32, i32* @WM5100_IM_ACCDET_EINT, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @WM5100_IM_HPDET_EINT, align 4
  %59 = load i32, i32* @WM5100_IM_ACCDET_EINT, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i32 %54, i32 %57, i32 %60)
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %63 = load i32, i32* @WM5100_MIC_DETECT_1, align 4
  %64 = load i32, i32* @WM5100_ACCDET_ENA, align 4
  %65 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %62, i32 %63, i32 %64, i32 0)
  %66 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %67 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %66, i32 0, i32 1
  store %struct.snd_soc_jack* null, %struct.snd_soc_jack** %67, align 8
  br label %68

68:                                               ; preds = %52, %13
  ret i32 0
}

declare dso_local %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @wm5100_set_detect_mode(%struct.wm5100_priv*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin_unlocked(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync_unlocked(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
