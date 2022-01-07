; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_mic_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_mic_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.wm8962_priv = type { %struct.snd_soc_jack* }
%struct.snd_soc_dapm_context = type { i32 }

@WM8962_MICDET_ENA = common dso_local global i32 0, align 4
@WM8962_MICD_EINT = common dso_local global i32 0, align 4
@WM8962_MICSCD_EINT = common dso_local global i32 0, align 4
@WM8962_INTERRUPT_STATUS_2_MASK = common dso_local global i32 0, align 4
@WM8962_ADDITIONAL_CONTROL_4 = common dso_local global i32 0, align 4
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SYSCLK\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"MICBIAS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8962_mic_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_jack*, align 8
  %5 = alloca %struct.wm8962_priv*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %4, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.wm8962_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.wm8962_priv* %10, %struct.wm8962_priv** %5, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %11)
  store %struct.snd_soc_dapm_context* %12, %struct.snd_soc_dapm_context** %6, align 8
  %13 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %14 = load %struct.wm8962_priv*, %struct.wm8962_priv** %5, align 8
  %15 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %14, i32 0, i32 0
  store %struct.snd_soc_jack* %13, %struct.snd_soc_jack** %15, align 8
  %16 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %17 = icmp ne %struct.snd_soc_jack* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* @WM8962_MICDET_ENA, align 4
  store i32 %19, i32* %8, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @WM8962_MICD_EINT, align 4
  %22 = load i32, i32* @WM8962_MICSCD_EINT, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = load i32, i32* @WM8962_INTERRUPT_STATUS_2_MASK, align 4
  %27 = load i32, i32* @WM8962_MICD_EINT, align 4
  %28 = load i32, i32* @WM8962_MICSCD_EINT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %25, i32 %26, i32 %29, i32 %30)
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = load i32, i32* @WM8962_ADDITIONAL_CONTROL_4, align 4
  %34 = load i32, i32* @WM8962_MICDET_ENA, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.wm8962_priv*, %struct.wm8962_priv** %5, align 8
  %38 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %37, i32 0, i32 0
  %39 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %38, align 8
  %40 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %41 = load i32, i32* @SND_JACK_BTN_0, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @snd_soc_jack_report(%struct.snd_soc_jack* %39, i32 0, i32 %42)
  %44 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %45 = call i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context* %44)
  %46 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %47 = icmp ne %struct.snd_soc_jack* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %24
  %49 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %50 = call i32 @snd_soc_dapm_force_enable_pin_unlocked(%struct.snd_soc_dapm_context* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %52 = call i32 @snd_soc_dapm_force_enable_pin_unlocked(%struct.snd_soc_dapm_context* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %58

53:                                               ; preds = %24
  %54 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %55 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %57 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %60 = call i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context* %59)
  ret i32 0
}

declare dso_local %struct.wm8962_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_jack_report(%struct.snd_soc_jack*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin_unlocked(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
