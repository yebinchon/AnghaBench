; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l90.c_cs47l90_adsp_power_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l90.c_cs47l90_adsp_power_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.cs47l90 = type { %struct.madera_priv }
%struct.madera_priv = type { %struct.madera* }
%struct.madera = type { i32, i32 }

@MADERA_DSP_CLOCK_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to read MADERA_DSP_CLOCK_2: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @cs47l90_adsp_power_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l90_adsp_power_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs47l90*, align 8
  %10 = alloca %struct.madera_priv*, align 8
  %11 = alloca %struct.madera*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %16)
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %8, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = call %struct.cs47l90* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.cs47l90* %19, %struct.cs47l90** %9, align 8
  %20 = load %struct.cs47l90*, %struct.cs47l90** %9, align 8
  %21 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %20, i32 0, i32 0
  store %struct.madera_priv* %21, %struct.madera_priv** %10, align 8
  %22 = load %struct.madera_priv*, %struct.madera_priv** %10, align 8
  %23 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %22, i32 0, i32 0
  %24 = load %struct.madera*, %struct.madera** %23, align 8
  store %struct.madera* %24, %struct.madera** %11, align 8
  %25 = load %struct.madera*, %struct.madera** %11, align 8
  %26 = getelementptr inbounds %struct.madera, %struct.madera* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MADERA_DSP_CLOCK_2, align 4
  %29 = call i32 @regmap_read(i32 %27, i32 %28, i32* %12)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %3
  %33 = load %struct.madera*, %struct.madera** %11, align 8
  %34 = getelementptr inbounds %struct.madera, %struct.madera* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %4, align 4
  br label %60

39:                                               ; preds = %3
  %40 = load i32, i32* %7, align 4
  switch i32 %40, label %54 [
    i32 128, label %41
  ]

41:                                               ; preds = %39
  %42 = load %struct.cs47l90*, %struct.cs47l90** %9, align 8
  %43 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %42, i32 0, i32 0
  %44 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @madera_set_adsp_clk(%struct.madera_priv* %43, i32 %46, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %4, align 4
  br label %60

53:                                               ; preds = %41
  br label %55

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %53
  %56 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %57 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @wm_adsp_early_event(%struct.snd_soc_dapm_widget* %56, %struct.snd_kcontrol* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %51, %32
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.cs47l90* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @madera_set_adsp_clk(%struct.madera_priv*, i32, i32) #1

declare dso_local i32 @wm_adsp_early_event(%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
