; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic31xx.c_aic31xx_clock_master_routes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic31xx.c_aic31xx_clock_master_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.aic31xx_priv = type { i32, i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@common31xx_cm_audio_map = common dso_local global i32 0, align 4
@DAC31XX_BIT = common dso_local global i32 0, align 4
@aic31xx_cm_audio_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @aic31xx_clock_master_routes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic31xx_clock_master_routes(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.aic31xx_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %9)
  store %struct.snd_soc_dapm_context* %10, %struct.snd_soc_dapm_context** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = call %struct.aic31xx_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.aic31xx_priv* %12, %struct.aic31xx_priv** %7, align 8
  %13 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %2
  %20 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %7, align 8
  %21 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %19
  %25 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %26 = load i32, i32* @common31xx_cm_audio_map, align 4
  %27 = load i32, i32* @common31xx_cm_audio_map, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = call i32 @snd_soc_dapm_del_routes(%struct.snd_soc_dapm_context* %25, i32 %26, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %24
  %33 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %7, align 8
  %34 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DAC31XX_BIT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  %40 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %41 = load i32, i32* @aic31xx_cm_audio_map, align 4
  %42 = load i32, i32* @aic31xx_cm_audio_map, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = call i32 @snd_soc_dapm_del_routes(%struct.snd_soc_dapm_context* %40, i32 %41, i32 %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %39, %32, %24
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %93

50:                                               ; preds = %45
  %51 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %7, align 8
  %52 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  br label %92

53:                                               ; preds = %19, %2
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %91

57:                                               ; preds = %53
  %58 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %7, align 8
  %59 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %91, label %62

62:                                               ; preds = %57
  %63 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %64 = load i32, i32* @common31xx_cm_audio_map, align 4
  %65 = load i32, i32* @common31xx_cm_audio_map, align 4
  %66 = call i32 @ARRAY_SIZE(i32 %65)
  %67 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %63, i32 %64, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %62
  %71 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %7, align 8
  %72 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DAC31XX_BIT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %70
  %78 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %79 = load i32, i32* @aic31xx_cm_audio_map, align 4
  %80 = load i32, i32* @aic31xx_cm_audio_map, align 4
  %81 = call i32 @ARRAY_SIZE(i32 %80)
  %82 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %78, i32 %79, i32 %81)
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %77, %70, %62
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %93

88:                                               ; preds = %83
  %89 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %7, align 8
  %90 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %89, i32 0, i32 0
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %57, %53
  br label %92

92:                                               ; preds = %91, %50
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %86, %48
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.aic31xx_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_del_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
