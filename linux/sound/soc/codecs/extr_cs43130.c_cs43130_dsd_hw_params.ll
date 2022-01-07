; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_dsd_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_dsd_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs43130_private = type { i32, i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@CS43130_MCLK_22M = common dso_local global i32 0, align 4
@CS43130_MCLK_24M = common dso_local global i32 0, align 4
@CS43130_MCLK_SRC_EXT = common dso_local global i32 0, align 4
@CS43130_MCLK_SRC_PLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Rate(%u) not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBM_CFM = common dso_local global i64 0, align 8
@CS43130_DSD_INT_CFG = common dso_local global i32 0, align 4
@CS43130_DSD_MASTER = common dso_local global i32 0, align 4
@CS43130_DSD_PATH_CTL_2 = common dso_local global i32 0, align 4
@CS43130_DSD_SPEED_MASK = common dso_local global i32 0, align 4
@CS43130_DSD_SPEED_SHIFT = common dso_local global i32 0, align 4
@CS43130_DSD_SRC_MASK = common dso_local global i32 0, align 4
@CS43130_DSD_SRC_DSD = common dso_local global i32 0, align 4
@CS43130_DSD_SRC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cs43130_dsd_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_dsd_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs43130_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 1
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.cs43130_private* %16, %struct.cs43130_private** %9, align 8
  %17 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %18 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %17, i32 0, i32 3
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %21 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @CS43130_MCLK_22M, align 4
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %27 = call i32 @params_rate(%struct.snd_pcm_hw_params* %26)
  %28 = srem i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @CS43130_MCLK_22M, align 4
  store i32 %31, i32* %10, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @CS43130_MCLK_24M, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %36 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %37 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @cs43130_set_pll(%struct.snd_soc_component* %35, i32 0, i32 0, i32 %38, i32 %39)
  %41 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %42 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %47 = load i32, i32* @CS43130_MCLK_SRC_EXT, align 4
  %48 = call i32 @cs43130_change_clksrc(%struct.snd_soc_component* %46, i32 %47)
  br label %53

49:                                               ; preds = %34
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %51 = load i32, i32* @CS43130_MCLK_SRC_PLL, align 4
  %52 = call i32 @cs43130_change_clksrc(%struct.snd_soc_component* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %3
  %55 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %56 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %60 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %65 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cs43130_pcm_dsd_mix(i32 1, i32 %66)
  br label %68

68:                                               ; preds = %63, %54
  %69 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %70 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %69, i32 0, i32 3
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %73 = call i32 @params_rate(%struct.snd_pcm_hw_params* %72)
  switch i32 %73, label %76 [
    i32 176400, label %74
    i32 352800, label %75
  ]

74:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %85

75:                                               ; preds = %68
  store i32 1, i32* %11, align 4
  br label %85

76:                                               ; preds = %68
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %78 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %81 = call i32 @params_rate(%struct.snd_pcm_hw_params* %80)
  %82 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %131

85:                                               ; preds = %75, %74
  %86 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %87 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %90 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SND_SOC_DAIFMT_CBM_CFM, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %85
  %98 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %99 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @CS43130_DSD_INT_CFG, align 4
  %102 = load i32, i32* @CS43130_DSD_MASTER, align 4
  %103 = load i32, i32* @CS43130_DSD_MASTER, align 4
  %104 = call i32 @regmap_update_bits(i32 %100, i32 %101, i32 %102, i32 %103)
  br label %112

105:                                              ; preds = %85
  %106 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %107 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CS43130_DSD_INT_CFG, align 4
  %110 = load i32, i32* @CS43130_DSD_MASTER, align 4
  %111 = call i32 @regmap_update_bits(i32 %108, i32 %109, i32 %110, i32 0)
  br label %112

112:                                              ; preds = %105, %97
  %113 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %114 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CS43130_DSD_PATH_CTL_2, align 4
  %117 = load i32, i32* @CS43130_DSD_SPEED_MASK, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @CS43130_DSD_SPEED_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = call i32 @regmap_update_bits(i32 %115, i32 %116, i32 %117, i32 %120)
  %122 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %123 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @CS43130_DSD_PATH_CTL_2, align 4
  %126 = load i32, i32* @CS43130_DSD_SRC_MASK, align 4
  %127 = load i32, i32* @CS43130_DSD_SRC_DSD, align 4
  %128 = load i32, i32* @CS43130_DSD_SRC_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = call i32 @regmap_update_bits(i32 %124, i32 %125, i32 %126, i32 %129)
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %112, %76
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @cs43130_set_pll(%struct.snd_soc_component*, i32, i32, i32, i32) #1

declare dso_local i32 @cs43130_change_clksrc(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @cs43130_pcm_dsd_mix(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
