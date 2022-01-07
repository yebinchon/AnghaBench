; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_is_using_asrc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_is_using_asrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_soc_component = type { i32 }

@RT5665_ASRC_3 = common dso_local global i32 0, align 4
@RT5665_AD_MONOR_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5665_AD_MONOL_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5665_AD_STO1_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5665_AD_STO2_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5665_ASRC_2 = common dso_local global i32 0, align 4
@RT5665_DA_MONOR_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5665_DA_MONOL_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5665_DA_STO1_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5665_DA_STO2_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5665_ADDA_CLK_1 = common dso_local global i32 0, align 4
@RT5665_I2S_PD1_MASK = common dso_local global i32 0, align 4
@RT5665_I2S_PD1_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget*)* @is_using_asrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_using_asrc(%struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %5, align 8
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %9, align 8
  %14 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %41 [
    i32 137, label %17
    i32 138, label %20
    i32 136, label %23
    i32 135, label %26
    i32 130, label %29
    i32 131, label %32
    i32 129, label %35
    i32 128, label %38
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @RT5665_ASRC_3, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @RT5665_AD_MONOR_CLK_SEL_SFT, align 4
  store i32 %19, i32* %7, align 4
  br label %42

20:                                               ; preds = %2
  %21 = load i32, i32* @RT5665_ASRC_3, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @RT5665_AD_MONOL_CLK_SEL_SFT, align 4
  store i32 %22, i32* %7, align 4
  br label %42

23:                                               ; preds = %2
  %24 = load i32, i32* @RT5665_ASRC_3, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @RT5665_AD_STO1_CLK_SEL_SFT, align 4
  store i32 %25, i32* %7, align 4
  br label %42

26:                                               ; preds = %2
  %27 = load i32, i32* @RT5665_ASRC_3, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @RT5665_AD_STO2_CLK_SEL_SFT, align 4
  store i32 %28, i32* %7, align 4
  br label %42

29:                                               ; preds = %2
  %30 = load i32, i32* @RT5665_ASRC_2, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @RT5665_DA_MONOR_CLK_SEL_SFT, align 4
  store i32 %31, i32* %7, align 4
  br label %42

32:                                               ; preds = %2
  %33 = load i32, i32* @RT5665_ASRC_2, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @RT5665_DA_MONOL_CLK_SEL_SFT, align 4
  store i32 %34, i32* %7, align 4
  br label %42

35:                                               ; preds = %2
  %36 = load i32, i32* @RT5665_ASRC_2, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @RT5665_DA_STO1_CLK_SEL_SFT, align 4
  store i32 %37, i32* %7, align 4
  br label %42

38:                                               ; preds = %2
  %39 = load i32, i32* @RT5665_ASRC_2, align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @RT5665_DA_STO2_CLK_SEL_SFT, align 4
  store i32 %40, i32* %7, align 4
  br label %42

41:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

42:                                               ; preds = %38, %35, %32, %29, %26, %23, %20, %17
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = lshr i32 %45, %46
  %48 = and i32 %47, 15
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %56 [
    i32 134, label %50
    i32 133, label %50
    i32 132, label %50
  ]

50:                                               ; preds = %42, %42, %42
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %52 = load i32, i32* @RT5665_ADDA_CLK_1, align 4
  %53 = load i32, i32* @RT5665_I2S_PD1_MASK, align 4
  %54 = load i32, i32* @RT5665_I2S_PD1_2, align 4
  %55 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %51, i32 %52, i32 %53, i32 %54)
  store i32 1, i32* %3, align 4
  br label %57

56:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %50, %41
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
