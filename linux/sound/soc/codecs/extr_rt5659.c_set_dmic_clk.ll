; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_set_dmic_clk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_set_dmic_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.rt5659_priv = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RT5659_ADDA_CLK_1 = common dso_local global i32 0, align 4
@RT5659_I2S_PD1_SFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to set DMIC clock\0A\00", align 1
@RT5659_DMIC_CTRL_1 = common dso_local global i32 0, align 4
@RT5659_DMIC_CLK_MASK = common dso_local global i32 0, align 4
@RT5659_DMIC_CLK_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @set_dmic_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_dmic_clk(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.rt5659_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %7, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %16 = call %struct.rt5659_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.rt5659_priv* %16, %struct.rt5659_priv** %8, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.rt5659_priv*, %struct.rt5659_priv** %8, align 8
  %20 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RT5659_ADDA_CLK_1, align 4
  %23 = load i32, i32* @RT5659_I2S_PD1_SFT, align 4
  %24 = call i32 @rl6231_get_pre_div(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.rt5659_priv*, %struct.rt5659_priv** %8, align 8
  %26 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sdiv i32 %27, %28
  %30 = call i32 @rl6231_calc_dmic_clk(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %35 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %46

38:                                               ; preds = %3
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %40 = load i32, i32* @RT5659_DMIC_CTRL_1, align 4
  %41 = load i32, i32* @RT5659_DMIC_CLK_MASK, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @RT5659_DMIC_CLK_SFT, align 4
  %44 = shl i32 %42, %43
  %45 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %39, i32 %40, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %38, %33
  %47 = load i32, i32* %10, align 4
  ret i32 %47
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.rt5659_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @rl6231_get_pre_div(i32, i32, i32) #1

declare dso_local i32 @rl6231_calc_dmic_clk(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
