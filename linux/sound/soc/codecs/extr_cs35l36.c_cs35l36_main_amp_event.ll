; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_main_amp_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_main_amp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.cs35l36_private = type { i32, i32 }

@CS35L36_PWR_CTRL1 = common dso_local global i32 0, align 4
@CS35L36_GLOBAL_EN_MASK = common dso_local global i32 0, align 4
@CS35L36_GLOBAL_EN_SHIFT = common dso_local global i32 0, align 4
@CS35L36_INT4_RAW_STATUS = common dso_local global i32 0, align 4
@CS35L36_PLL_UNLOCK_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"PLL Unlocked\0A\00", align 1
@CS35L36_ASP_RX1_SEL = common dso_local global i32 0, align 4
@CS35L36_PCM_RX_SEL_MASK = common dso_local global i32 0, align 4
@CS35L36_PCM_RX_SEL_PCM = common dso_local global i32 0, align 4
@CS35L36_AMP_OUT_MUTE = common dso_local global i32 0, align 4
@CS35L36_AMP_MUTE_MASK = common dso_local global i32 0, align 4
@CS35L36_AMP_MUTE_SHIFT = common dso_local global i32 0, align 4
@CS35L36_PCM_RX_SEL_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid event = 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @cs35l36_main_amp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l36_main_amp_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs35l36_private*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.cs35l36_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.cs35l36_private* %16, %struct.cs35l36_private** %9, align 8
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %85 [
    i32 129, label %18
    i32 128, label %59
    i32 130, label %75
  ]

18:                                               ; preds = %3
  %19 = load %struct.cs35l36_private*, %struct.cs35l36_private** %9, align 8
  %20 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CS35L36_PWR_CTRL1, align 4
  %23 = load i32, i32* @CS35L36_GLOBAL_EN_MASK, align 4
  %24 = load i32, i32* @CS35L36_GLOBAL_EN_SHIFT, align 4
  %25 = shl i32 1, %24
  %26 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %25)
  %27 = call i32 @usleep_range(i32 2000, i32 2100)
  %28 = load %struct.cs35l36_private*, %struct.cs35l36_private** %9, align 8
  %29 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CS35L36_INT4_RAW_STATUS, align 4
  %32 = call i32 @regmap_read(i32 %30, i32 %31, i32* %10)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @CS35L36_PLL_UNLOCK_MASK, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @WARN_ON_ONCE(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %18
  %39 = load %struct.cs35l36_private*, %struct.cs35l36_private** %9, align 8
  %40 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_crit(i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %18
  %44 = load %struct.cs35l36_private*, %struct.cs35l36_private** %9, align 8
  %45 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CS35L36_ASP_RX1_SEL, align 4
  %48 = load i32, i32* @CS35L36_PCM_RX_SEL_MASK, align 4
  %49 = load i32, i32* @CS35L36_PCM_RX_SEL_PCM, align 4
  %50 = call i32 @regmap_update_bits(i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.cs35l36_private*, %struct.cs35l36_private** %9, align 8
  %52 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CS35L36_AMP_OUT_MUTE, align 4
  %55 = load i32, i32* @CS35L36_AMP_MUTE_MASK, align 4
  %56 = load i32, i32* @CS35L36_AMP_MUTE_SHIFT, align 4
  %57 = shl i32 0, %56
  %58 = call i32 @regmap_update_bits(i32 %53, i32 %54, i32 %55, i32 %57)
  br label %93

59:                                               ; preds = %3
  %60 = load %struct.cs35l36_private*, %struct.cs35l36_private** %9, align 8
  %61 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CS35L36_ASP_RX1_SEL, align 4
  %64 = load i32, i32* @CS35L36_PCM_RX_SEL_MASK, align 4
  %65 = load i32, i32* @CS35L36_PCM_RX_SEL_ZERO, align 4
  %66 = call i32 @regmap_update_bits(i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.cs35l36_private*, %struct.cs35l36_private** %9, align 8
  %68 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CS35L36_AMP_OUT_MUTE, align 4
  %71 = load i32, i32* @CS35L36_AMP_MUTE_MASK, align 4
  %72 = load i32, i32* @CS35L36_AMP_MUTE_SHIFT, align 4
  %73 = shl i32 1, %72
  %74 = call i32 @regmap_update_bits(i32 %69, i32 %70, i32 %71, i32 %73)
  br label %93

75:                                               ; preds = %3
  %76 = load %struct.cs35l36_private*, %struct.cs35l36_private** %9, align 8
  %77 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CS35L36_PWR_CTRL1, align 4
  %80 = load i32, i32* @CS35L36_GLOBAL_EN_MASK, align 4
  %81 = load i32, i32* @CS35L36_GLOBAL_EN_SHIFT, align 4
  %82 = shl i32 0, %81
  %83 = call i32 @regmap_update_bits(i32 %78, i32 %79, i32 %80, i32 %82)
  %84 = call i32 @usleep_range(i32 2000, i32 2100)
  br label %93

85:                                               ; preds = %3
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %87 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @dev_dbg(i32 %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %94

93:                                               ; preds = %75, %59, %43
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %85
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.cs35l36_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @dev_crit(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
