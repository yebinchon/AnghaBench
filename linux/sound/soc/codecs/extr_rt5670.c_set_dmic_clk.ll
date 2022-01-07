; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_set_dmic_clk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_set_dmic_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.rt5670_priv = type { i32, i32 }

@RT5670_ADDA_CLK1 = common dso_local global i32 0, align 4
@RT5670_I2S_PD1_SFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to set DMIC clock\0A\00", align 1
@RT5670_DMIC_CTRL1 = common dso_local global i32 0, align 4
@RT5670_DMIC_CLK_MASK = common dso_local global i32 0, align 4
@RT5670_DMIC_CLK_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @set_dmic_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_dmic_clk(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.rt5670_priv*, align 8
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
  %16 = call %struct.rt5670_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.rt5670_priv* %16, %struct.rt5670_priv** %8, align 8
  %17 = load %struct.rt5670_priv*, %struct.rt5670_priv** %8, align 8
  %18 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rt5670_priv*, %struct.rt5670_priv** %8, align 8
  %21 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RT5670_ADDA_CLK1, align 4
  %24 = load i32, i32* @RT5670_I2S_PD1_SFT, align 4
  %25 = call i32 @rl6231_get_pre_div(i32 %22, i32 %23, i32 %24)
  %26 = sdiv i32 %19, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @rl6231_calc_dmic_clk(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %33 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %44

36:                                               ; preds = %3
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %38 = load i32, i32* @RT5670_DMIC_CTRL1, align 4
  %39 = load i32, i32* @RT5670_DMIC_CLK_MASK, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @RT5670_DMIC_CLK_SFT, align 4
  %42 = shl i32 %40, %41
  %43 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %37, i32 %38, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %36, %31
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.rt5670_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
