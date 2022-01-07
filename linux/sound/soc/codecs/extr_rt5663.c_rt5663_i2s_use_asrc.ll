; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_i2s_use_asrc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_i2s_use_asrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.rt5663_priv = type { i32, i32, i32 }

@RT5663_ASRC_2 = common dso_local global i32 0, align 4
@RT5663_DA_STO1_TRACK_MASK = common dso_local global i32 0, align 4
@RT5663_ASRC_3 = common dso_local global i32 0, align 4
@RT5663_V2_AD_STO1_TRACK_MASK = common dso_local global i32 0, align 4
@RT5663_AD_STO1_TRACK_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown CODEC Version\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"sysclk < 384 x fs, disable i2s asrc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget*)* @rt5663_i2s_use_asrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5663_i2s_use_asrc(%struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.rt5663_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %5, align 8
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.rt5663_priv* %15, %struct.rt5663_priv** %7, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %17 = load i32, i32* @RT5663_ASRC_2, align 4
  %18 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %16, i32 %17)
  %19 = load i32, i32* @RT5663_DA_STO1_TRACK_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %8, align 4
  %24 = load %struct.rt5663_priv*, %struct.rt5663_priv** %7, align 8
  %25 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %45 [
    i32 128, label %27
    i32 129, label %36
  ]

27:                                               ; preds = %2
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %29 = load i32, i32* @RT5663_ASRC_3, align 4
  %30 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %28, i32 %29)
  %31 = load i32, i32* @RT5663_V2_AD_STO1_TRACK_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  store i32 %35, i32* %9, align 4
  br label %50

36:                                               ; preds = %2
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %38 = load i32, i32* @RT5663_ASRC_2, align 4
  %39 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %37, i32 %38)
  %40 = load i32, i32* @RT5663_AD_STO1_TRACK_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  store i32 %44, i32* %9, align 4
  br label %50

45:                                               ; preds = %2
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %72

50:                                               ; preds = %36, %27
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53, %50
  %57 = load %struct.rt5663_priv*, %struct.rt5663_priv** %7, align 8
  %58 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rt5663_priv*, %struct.rt5663_priv** %7, align 8
  %61 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, 384
  %64 = icmp sgt i32 %59, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %72

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %53
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %69 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %65, %45
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
