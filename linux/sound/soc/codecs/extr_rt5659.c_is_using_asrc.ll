; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_is_using_asrc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_is_using_asrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_soc_component = type { i32 }

@RT5659_ASRC_3 = common dso_local global i32 0, align 4
@RT5659_AD_MONO_R_T_SFT = common dso_local global i32 0, align 4
@RT5659_AD_MONO_L_T_SFT = common dso_local global i32 0, align 4
@RT5659_ASRC_2 = common dso_local global i32 0, align 4
@RT5659_AD_STO1_T_SFT = common dso_local global i32 0, align 4
@RT5659_DA_MONO_R_T_SFT = common dso_local global i32 0, align 4
@RT5659_DA_MONO_L_T_SFT = common dso_local global i32 0, align 4
@RT5659_DA_STO_T_SFT = common dso_local global i32 0, align 4
@RT5659_ADDA_CLK_1 = common dso_local global i32 0, align 4
@RT5659_I2S_PD1_MASK = common dso_local global i32 0, align 4
@RT5659_I2S_PD1_2 = common dso_local global i32 0, align 4
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
  switch i32 %16, label %35 [
    i32 132, label %17
    i32 133, label %20
    i32 131, label %23
    i32 129, label %26
    i32 130, label %29
    i32 128, label %32
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @RT5659_ASRC_3, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @RT5659_AD_MONO_R_T_SFT, align 4
  store i32 %19, i32* %7, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load i32, i32* @RT5659_ASRC_3, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @RT5659_AD_MONO_L_T_SFT, align 4
  store i32 %22, i32* %7, align 4
  br label %36

23:                                               ; preds = %2
  %24 = load i32, i32* @RT5659_ASRC_2, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @RT5659_AD_STO1_T_SFT, align 4
  store i32 %25, i32* %7, align 4
  br label %36

26:                                               ; preds = %2
  %27 = load i32, i32* @RT5659_ASRC_2, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @RT5659_DA_MONO_R_T_SFT, align 4
  store i32 %28, i32* %7, align 4
  br label %36

29:                                               ; preds = %2
  %30 = load i32, i32* @RT5659_ASRC_2, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @RT5659_DA_MONO_L_T_SFT, align 4
  store i32 %31, i32* %7, align 4
  br label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @RT5659_ASRC_2, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @RT5659_DA_STO_T_SFT, align 4
  store i32 %34, i32* %7, align 4
  br label %36

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

36:                                               ; preds = %32, %29, %26, %23, %20, %17
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = lshr i32 %39, %40
  %42 = and i32 %41, 15
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  switch i32 %43, label %50 [
    i32 1, label %44
    i32 2, label %44
    i32 3, label %44
  ]

44:                                               ; preds = %36, %36, %36
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %46 = load i32, i32* @RT5659_ADDA_CLK_1, align 4
  %47 = load i32, i32* @RT5659_I2S_PD1_MASK, align 4
  %48 = load i32, i32* @RT5659_I2S_PD1_2, align 4
  %49 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 %47, i32 %48)
  store i32 1, i32* %3, align 4
  br label %51

50:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %44, %35
  %52 = load i32, i32* %3, align 4
  ret i32 %52
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
