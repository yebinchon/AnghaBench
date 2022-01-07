; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5110.c_wm5110_hp_pre_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5110.c_wm5110_hp_pre_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.arizona_priv = type { i32 }

@ARIZONA_DRE_ENABLE = common dso_local global i32 0, align 4
@ARIZONA_DRE1L_ENA_MASK = common dso_local global i32 0, align 4
@ARIZONA_SPARE_TRIGGERS = common dso_local global i32 0, align 4
@ARIZONA_WS_TRG1 = common dso_local global i32 0, align 4
@ARIZONA_DRE1R_ENA_MASK = common dso_local global i32 0, align 4
@ARIZONA_WS_TRG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*)* @wm5110_hp_pre_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5110_hp_pre_disable(%struct.snd_soc_dapm_widget* %0) #0 {
  %2 = alloca %struct.snd_soc_dapm_widget*, align 8
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.arizona_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %2, align 8
  %6 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %2, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %8)
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %3, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.arizona_priv* %11, %struct.arizona_priv** %4, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = load i32, i32* @ARIZONA_DRE_ENABLE, align 4
  %14 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %2, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %58 [
    i32 129, label %18
    i32 128, label %38
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ARIZONA_DRE1L_ENA_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %18
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %25 = load i32, i32* @ARIZONA_SPARE_TRIGGERS, align 4
  %26 = load i32, i32* @ARIZONA_WS_TRG1, align 4
  %27 = load i32, i32* @ARIZONA_WS_TRG1, align 4
  %28 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %30 = load i32, i32* @ARIZONA_SPARE_TRIGGERS, align 4
  %31 = load i32, i32* @ARIZONA_WS_TRG1, align 4
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 %31, i32 0)
  %33 = load %struct.arizona_priv*, %struct.arizona_priv** %4, align 8
  %34 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 27
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %23, %18
  br label %59

38:                                               ; preds = %1
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ARIZONA_DRE1R_ENA_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %38
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %45 = load i32, i32* @ARIZONA_SPARE_TRIGGERS, align 4
  %46 = load i32, i32* @ARIZONA_WS_TRG2, align 4
  %47 = load i32, i32* @ARIZONA_WS_TRG2, align 4
  %48 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %50 = load i32, i32* @ARIZONA_SPARE_TRIGGERS, align 4
  %51 = load i32, i32* @ARIZONA_WS_TRG2, align 4
  %52 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %49, i32 %50, i32 %51, i32 0)
  %53 = load %struct.arizona_priv*, %struct.arizona_priv** %4, align 8
  %54 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 27
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %43, %38
  br label %59

58:                                               ; preds = %1
  br label %59

59:                                               ; preds = %58, %57, %37
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
