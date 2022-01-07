; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5623.c_alc5623_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5623.c_alc5623_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.alc5623_priv = type { i32, i64, i64 }
%struct.snd_soc_dapm_context = type { i32 }

@ALC5623_ADD_CTRL_REG = common dso_local global i32 0, align 4
@ALC5623_JACK_DET_CTRL = common dso_local global i32 0, align 4
@alc5621_vol_snd_controls = common dso_local global i32 0, align 4
@alc5622_vol_snd_controls = common dso_local global i32 0, align 4
@alc5623_vol_snd_controls = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@alc5623_snd_controls = common dso_local global i32 0, align 4
@alc5623_dapm_widgets = common dso_local global i32 0, align 4
@intercon = common dso_local global i32 0, align 4
@alc5623_dapm_amp_widgets = common dso_local global i32 0, align 4
@intercon_amp_spk = common dso_local global i32 0, align 4
@intercon_spk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @alc5623_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc5623_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.alc5623_priv*, align 8
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.alc5623_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.alc5623_priv* %7, %struct.alc5623_priv** %4, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %8)
  store %struct.snd_soc_dapm_context* %9, %struct.snd_soc_dapm_context** %5, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call i32 @alc5623_reset(%struct.snd_soc_component* %10)
  %12 = load %struct.alc5623_priv*, %struct.alc5623_priv** %4, align 8
  %13 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = load i32, i32* @ALC5623_ADD_CTRL_REG, align 4
  %19 = load %struct.alc5623_priv*, %struct.alc5623_priv** %4, align 8
  %20 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %17, i32 %18, i64 %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.alc5623_priv*, %struct.alc5623_priv** %4, align 8
  %25 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %30 = load i32, i32* @ALC5623_JACK_DET_CTRL, align 4
  %31 = load %struct.alc5623_priv*, %struct.alc5623_priv** %4, align 8
  %32 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %29, i32 %30, i64 %33)
  br label %35

35:                                               ; preds = %28, %23
  %36 = load %struct.alc5623_priv*, %struct.alc5623_priv** %4, align 8
  %37 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %57 [
    i32 33, label %39
    i32 34, label %45
    i32 35, label %51
  ]

39:                                               ; preds = %35
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = load i32, i32* @alc5621_vol_snd_controls, align 4
  %42 = load i32, i32* @alc5621_vol_snd_controls, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %40, i32 %41, i32 %43)
  br label %60

45:                                               ; preds = %35
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %47 = load i32, i32* @alc5622_vol_snd_controls, align 4
  %48 = load i32, i32* @alc5622_vol_snd_controls, align 4
  %49 = call i32 @ARRAY_SIZE(i32 %48)
  %50 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %46, i32 %47, i32 %49)
  br label %60

51:                                               ; preds = %35
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %53 = load i32, i32* @alc5623_vol_snd_controls, align 4
  %54 = load i32, i32* @alc5623_vol_snd_controls, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %52, i32 %53, i32 %55)
  br label %60

57:                                               ; preds = %35
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %100

60:                                               ; preds = %51, %45, %39
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %62 = load i32, i32* @alc5623_snd_controls, align 4
  %63 = load i32, i32* @alc5623_snd_controls, align 4
  %64 = call i32 @ARRAY_SIZE(i32 %63)
  %65 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %61, i32 %62, i32 %64)
  %66 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %67 = load i32, i32* @alc5623_dapm_widgets, align 4
  %68 = load i32, i32* @alc5623_dapm_widgets, align 4
  %69 = call i32 @ARRAY_SIZE(i32 %68)
  %70 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %66, i32 %67, i32 %69)
  %71 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %72 = load i32, i32* @intercon, align 4
  %73 = load i32, i32* @intercon, align 4
  %74 = call i32 @ARRAY_SIZE(i32 %73)
  %75 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %71, i32 %72, i32 %74)
  %76 = load %struct.alc5623_priv*, %struct.alc5623_priv** %4, align 8
  %77 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %96 [
    i32 33, label %79
    i32 34, label %79
    i32 35, label %90
  ]

79:                                               ; preds = %60, %60
  %80 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %81 = load i32, i32* @alc5623_dapm_amp_widgets, align 4
  %82 = load i32, i32* @alc5623_dapm_amp_widgets, align 4
  %83 = call i32 @ARRAY_SIZE(i32 %82)
  %84 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %80, i32 %81, i32 %83)
  %85 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %86 = load i32, i32* @intercon_amp_spk, align 4
  %87 = load i32, i32* @intercon_amp_spk, align 4
  %88 = call i32 @ARRAY_SIZE(i32 %87)
  %89 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %85, i32 %86, i32 %88)
  br label %99

90:                                               ; preds = %60
  %91 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %92 = load i32, i32* @intercon_spk, align 4
  %93 = load i32, i32* @intercon_spk, align 4
  %94 = call i32 @ARRAY_SIZE(i32 %93)
  %95 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %91, i32 %92, i32 %94)
  br label %99

96:                                               ; preds = %60
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %100

99:                                               ; preds = %90, %79
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %96, %57
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.alc5623_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @alc5623_reset(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i64) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
