; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98373.c_max98373_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98373.c_max98373_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.max98373_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"format unsupported %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX98373_R2026_PCM_CLOCK_RATIO = common dso_local global i32 0, align 4
@MAX98373_PCM_CLK_SETUP_BSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.snd_pcm_hw_params*)* @max98373_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98373_set_clock(%struct.snd_soc_component* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.max98373_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.max98373_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.max98373_priv* %10, %struct.max98373_priv** %6, align 8
  %11 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %12 = call i32 @params_channels(%struct.snd_pcm_hw_params* %11)
  %13 = load %struct.max98373_priv*, %struct.max98373_priv** %6, align 8
  %14 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.max98373_priv*, %struct.max98373_priv** %6, align 8
  %18 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @max98373_get_bclk_sel(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %28 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %31 = call i32 @params_format(%struct.snd_pcm_hw_params* %30)
  %32 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %21
  %36 = load %struct.max98373_priv*, %struct.max98373_priv** %6, align 8
  %37 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MAX98373_R2026_PCM_CLOCK_RATIO, align 4
  %40 = load i32, i32* @MAX98373_PCM_CLK_SETUP_BSEL_MASK, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %35, %2
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.max98373_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @max98373_get_bclk_sel(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
