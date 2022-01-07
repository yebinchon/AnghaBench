; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_is_using_asrc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_is_using_asrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.rt5663_priv = type { i64 }

@CODEC_VER_1 = common dso_local global i64 0, align 8
@RT5663_ASRC_3 = common dso_local global i32 0, align 4
@RT5663_V2_AD_STO1_TRACK_SHIFT = common dso_local global i32 0, align 4
@RT5663_ASRC_2 = common dso_local global i32 0, align 4
@RT5663_DA_STO1_TRACK_SHIFT = common dso_local global i32 0, align 4
@RT5663_AD_STO1_TRACK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget*)* @rt5663_is_using_asrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5663_is_using_asrc(%struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca %struct.rt5663_priv*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %5, align 8
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %9, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %16 = call %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.rt5663_priv* %16, %struct.rt5663_priv** %10, align 8
  %17 = load %struct.rt5663_priv*, %struct.rt5663_priv** %10, align 8
  %18 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CODEC_VER_1, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %32 [
    i32 129, label %26
    i32 128, label %29
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* @RT5663_ASRC_3, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @RT5663_V2_AD_STO1_TRACK_SHIFT, align 4
  store i32 %28, i32* %7, align 4
  br label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @RT5663_ASRC_2, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @RT5663_DA_STO1_TRACK_SHIFT, align 4
  store i32 %31, i32* %7, align 4
  br label %33

32:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %57

33:                                               ; preds = %29, %26
  br label %46

34:                                               ; preds = %2
  %35 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %44 [
    i32 129, label %38
    i32 128, label %41
  ]

38:                                               ; preds = %34
  %39 = load i32, i32* @RT5663_ASRC_2, align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @RT5663_AD_STO1_TRACK_SHIFT, align 4
  store i32 %40, i32* %7, align 4
  br label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @RT5663_ASRC_2, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @RT5663_DA_STO1_TRACK_SHIFT, align 4
  store i32 %43, i32* %7, align 4
  br label %45

44:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %57

45:                                               ; preds = %41, %38
  br label %46

46:                                               ; preds = %45, %33
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = lshr i32 %49, %50
  %52 = and i32 %51, 7
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %57

56:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %44, %32
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
