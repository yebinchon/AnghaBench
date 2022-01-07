; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_hpdet_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_hpdet_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.wm8996_priv = type { i32, i32, i64 }

@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@WM8996_HEADPHONE_DETECT_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to read HPDET status\0A\00", align 1
@WM8996_HP_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Got HPDET IRQ but HPDET is busy\0A\00", align 1
@WM8996_HP_LVL_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"HPDET measured %d ohms\0A\00", align 1
@SND_JACK_LINEOUT = common dso_local global i32 0, align 4
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@WM8996_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8996_HPOUT1L_ENA = common dso_local global i32 0, align 4
@WM8996_HPOUT1R_RMV_SHORT = common dso_local global i32 0, align 4
@WM8996_ANALOGUE_HP_1 = common dso_local global i32 0, align 4
@WM8996_HPOUT1L_RMV_SHORT = common dso_local global i32 0, align 4
@WM8996_ACCESSORY_DETECT_MODE_1 = common dso_local global i32 0, align 4
@WM8996_JD_MODE_MASK = common dso_local global i32 0, align 4
@WM8996_MIC_DETECT_1 = common dso_local global i32 0, align 4
@WM8996_MICD_ENA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Bandgap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @wm8996_hpdet_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8996_hpdet_irq(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.snd_soc_dapm_context*, align 8
  %4 = alloca %struct.wm8996_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %9 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %8)
  store %struct.snd_soc_dapm_context* %9, %struct.snd_soc_dapm_context** %3, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = call %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.wm8996_priv* %11, %struct.wm8996_priv** %4, align 8
  %12 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %14 = load i32, i32* @WM8996_HEADPHONE_DETECT_2, align 4
  %15 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %49

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @WM8996_HP_DONE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %30 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %49

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @WM8996_HP_LVL_MASK, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %5, align 4
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %38 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = icmp sge i32 %42, 126
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @SND_JACK_LINEOUT, align 4
  store i32 %45, i32* %7, align 4
  br label %48

46:                                               ; preds = %33
  %47 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %44
  br label %49

49:                                               ; preds = %48, %28, %18
  %50 = load %struct.wm8996_priv*, %struct.wm8996_priv** %4, align 8
  %51 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.wm8996_priv*, %struct.wm8996_priv** %4, align 8
  %60 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @SND_JACK_LINEOUT, align 4
  %64 = load i32, i32* @SND_JACK_HEADSET, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @snd_soc_jack_report(i32 %61, i32 %62, i32 %65)
  %67 = load %struct.wm8996_priv*, %struct.wm8996_priv** %4, align 8
  %68 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %70 = load i32, i32* @WM8996_POWER_MANAGEMENT_1, align 4
  %71 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %69, i32 %70)
  %72 = load i32, i32* @WM8996_HPOUT1L_ENA, align 4
  %73 = load i32, i32* @WM8996_HPOUT1R_RMV_SHORT, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %58
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %79 = load i32, i32* @WM8996_ANALOGUE_HP_1, align 4
  %80 = load i32, i32* @WM8996_HPOUT1L_RMV_SHORT, align 4
  %81 = load i32, i32* @WM8996_HPOUT1R_RMV_SHORT, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %78, i32 %79, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %77, %58
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %86 = load i32, i32* @WM8996_ACCESSORY_DETECT_MODE_1, align 4
  %87 = load i32, i32* @WM8996_JD_MODE_MASK, align 4
  %88 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %85, i32 %86, i32 %87, i32 0)
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %90 = load i32, i32* @WM8996_MIC_DETECT_1, align 4
  %91 = load i32, i32* @WM8996_MICD_ENA, align 4
  %92 = load i32, i32* @WM8996_MICD_ENA, align 4
  %93 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %89, i32 %90, i32 %91, i32 %92)
  %94 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %95 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %97 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %96)
  ret void
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
