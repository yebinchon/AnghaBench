; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8961.c_wm8961_spk_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8961.c_wm8961_spk_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@WM8961_PWR_MGMT_2 = common dso_local global i32 0, align 4
@WM8961_CLASS_D_CONTROL_1 = common dso_local global i32 0, align 4
@SND_SOC_DAPM_POST_PMU = common dso_local global i32 0, align 4
@WM8961_SPKL_PGA = common dso_local global i32 0, align 4
@WM8961_SPKR_PGA = common dso_local global i32 0, align 4
@WM8961_SPKL_ENA = common dso_local global i32 0, align 4
@WM8961_SPKR_ENA = common dso_local global i32 0, align 4
@SND_SOC_DAPM_PRE_PMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wm8961_spk_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8961_spk_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %7, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = load i32, i32* @WM8961_PWR_MGMT_2, align 4
  %16 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %18 = load i32, i32* @WM8961_CLASS_D_CONTROL_1, align 4
  %19 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SND_SOC_DAPM_POST_PMU, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %3
  %25 = load i32, i32* @WM8961_SPKL_PGA, align 4
  %26 = load i32, i32* @WM8961_SPKR_PGA, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %31 = load i32, i32* @WM8961_PWR_MGMT_2, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @WM8961_SPKL_ENA, align 4
  %35 = load i32, i32* @WM8961_SPKR_ENA, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %40 = load i32, i32* @WM8961_CLASS_D_CONTROL_1, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %24, %3
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @SND_SOC_DAPM_PRE_PMD, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %43
  %49 = load i32, i32* @WM8961_SPKL_ENA, align 4
  %50 = load i32, i32* @WM8961_SPKR_ENA, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %56 = load i32, i32* @WM8961_CLASS_D_CONTROL_1, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %55, i32 %56, i32 %57)
  %59 = load i32, i32* @WM8961_SPKL_PGA, align 4
  %60 = load i32, i32* @WM8961_SPKR_PGA, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %66 = load i32, i32* @WM8961_PWR_MGMT_2, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %48, %43
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
