; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5110.c_wm5110_hp_pre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5110.c_wm5110_hp_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_sequence = type { i32 }
%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.arizona_priv = type { i32, %struct.arizona* }
%struct.arizona = type { i32 }

@ARIZONA_DRE_ENABLE = common dso_local global i32 0, align 4
@ARIZONA_DRE1L_ENA_MASK = common dso_local global i32 0, align 4
@wm5110_dre_left_enable = common dso_local global %struct.reg_sequence* null, align 8
@wm5110_no_dre_left_enable = common dso_local global %struct.reg_sequence* null, align 8
@ARIZONA_DRE1R_ENA_MASK = common dso_local global i32 0, align 4
@wm5110_dre_right_enable = common dso_local global %struct.reg_sequence* null, align 8
@wm5110_no_dre_right_enable = common dso_local global %struct.reg_sequence* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*)* @wm5110_hp_pre_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5110_hp_pre_enable(%struct.snd_soc_dapm_widget* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dapm_widget*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.arizona_priv*, align 8
  %6 = alloca %struct.arizona*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.reg_sequence*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %3, align 8
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %4, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %15 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.arizona_priv* %15, %struct.arizona_priv** %5, align 8
  %16 = load %struct.arizona_priv*, %struct.arizona_priv** %5, align 8
  %17 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %16, i32 0, i32 1
  %18 = load %struct.arizona*, %struct.arizona** %17, align 8
  store %struct.arizona* %18, %struct.arizona** %6, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %20 = load i32, i32* @ARIZONA_DRE_ENABLE, align 4
  %21 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %61 [
    i32 129, label %25
    i32 128, label %43
  ]

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @ARIZONA_DRE1L_ENA_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.reg_sequence*, %struct.reg_sequence** @wm5110_dre_left_enable, align 8
  store %struct.reg_sequence* %31, %struct.reg_sequence** %8, align 8
  %32 = load %struct.reg_sequence*, %struct.reg_sequence** @wm5110_dre_left_enable, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.reg_sequence* %32)
  store i32 %33, i32* %9, align 4
  br label %42

34:                                               ; preds = %25
  %35 = load %struct.reg_sequence*, %struct.reg_sequence** @wm5110_no_dre_left_enable, align 8
  store %struct.reg_sequence* %35, %struct.reg_sequence** %8, align 8
  %36 = load %struct.reg_sequence*, %struct.reg_sequence** @wm5110_no_dre_left_enable, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.reg_sequence* %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.arizona_priv*, %struct.arizona_priv** %5, align 8
  %39 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 10
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %34, %30
  br label %62

43:                                               ; preds = %1
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @ARIZONA_DRE1R_ENA_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.reg_sequence*, %struct.reg_sequence** @wm5110_dre_right_enable, align 8
  store %struct.reg_sequence* %49, %struct.reg_sequence** %8, align 8
  %50 = load %struct.reg_sequence*, %struct.reg_sequence** @wm5110_dre_right_enable, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.reg_sequence* %50)
  store i32 %51, i32* %9, align 4
  br label %60

52:                                               ; preds = %43
  %53 = load %struct.reg_sequence*, %struct.reg_sequence** @wm5110_no_dre_right_enable, align 8
  store %struct.reg_sequence* %53, %struct.reg_sequence** %8, align 8
  %54 = load %struct.reg_sequence*, %struct.reg_sequence** @wm5110_no_dre_right_enable, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.reg_sequence* %54)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.arizona_priv*, %struct.arizona_priv** %5, align 8
  %57 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 10
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %52, %48
  br label %62

61:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

62:                                               ; preds = %60, %42
  %63 = load %struct.arizona*, %struct.arizona** %6, align 8
  %64 = getelementptr inbounds %struct.arizona, %struct.arizona* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.reg_sequence*, %struct.reg_sequence** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @regmap_multi_reg_write(i32 %65, %struct.reg_sequence* %66, i32 %67)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %62, %61
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.reg_sequence*) #1

declare dso_local i32 @regmap_multi_reg_write(i32, %struct.reg_sequence*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
