; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_dai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_dai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max98090_priv = type { i32, i32, i32, i32, i64, %struct.max98090_cdata* }
%struct.max98090_cdata = type { i32 }

@M98090_REG_INTERFACE_FORMAT = common dso_local global i32 0, align 4
@M98090_WS_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M98090_REG_FILTER_CONFIG = common dso_local global i32 0, align 4
@M98090_MODE_MASK = common dso_local global i32 0, align 4
@M98090_DHF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @max98090_dai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98090_dai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.max98090_priv*, align 8
  %10 = alloca %struct.max98090_cdata*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = call %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.max98090_priv* %15, %struct.max98090_priv** %9, align 8
  %16 = load %struct.max98090_priv*, %struct.max98090_priv** %9, align 8
  %17 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %16, i32 0, i32 5
  %18 = load %struct.max98090_cdata*, %struct.max98090_cdata** %17, align 8
  %19 = getelementptr inbounds %struct.max98090_cdata, %struct.max98090_cdata* %18, i64 0
  store %struct.max98090_cdata* %19, %struct.max98090_cdata** %10, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %21 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %20)
  %22 = load %struct.max98090_priv*, %struct.max98090_priv** %9, align 8
  %23 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %25 = call i32 @params_channels(%struct.snd_pcm_hw_params* %24)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.max98090_priv*, %struct.max98090_priv** %9, align 8
  %29 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %30, 2
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %27, %3
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %34 = call i32 @params_rate(%struct.snd_pcm_hw_params* %33)
  %35 = load %struct.max98090_priv*, %struct.max98090_priv** %9, align 8
  %36 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %38 = call i32 @params_width(%struct.snd_pcm_hw_params* %37)
  switch i32 %38, label %44 [
    i32 16, label %39
  ]

39:                                               ; preds = %32
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %41 = load i32, i32* @M98090_REG_INTERFACE_FORMAT, align 4
  %42 = load i32, i32* @M98090_WS_MASK, align 4
  %43 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 %42, i32 0)
  br label %47

44:                                               ; preds = %32
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %104

47:                                               ; preds = %39
  %48 = load %struct.max98090_priv*, %struct.max98090_priv** %9, align 8
  %49 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %54 = call i32 @max98090_configure_bclk(%struct.snd_soc_component* %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load %struct.max98090_priv*, %struct.max98090_priv** %9, align 8
  %57 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.max98090_cdata*, %struct.max98090_cdata** %10, align 8
  %60 = getelementptr inbounds %struct.max98090_cdata, %struct.max98090_cdata* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.max98090_priv*, %struct.max98090_priv** %9, align 8
  %62 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 24000
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %67 = load i32, i32* @M98090_REG_FILTER_CONFIG, align 4
  %68 = load i32, i32* @M98090_MODE_MASK, align 4
  %69 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 %68, i32 0)
  br label %76

70:                                               ; preds = %55
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %72 = load i32, i32* @M98090_REG_FILTER_CONFIG, align 4
  %73 = load i32, i32* @M98090_MODE_MASK, align 4
  %74 = load i32, i32* @M98090_MODE_MASK, align 4
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.max98090_priv*, %struct.max98090_priv** %9, align 8
  %78 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %79, 50000
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %83 = load i32, i32* @M98090_REG_FILTER_CONFIG, align 4
  %84 = load i32, i32* @M98090_DHF_MASK, align 4
  %85 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %82, i32 %83, i32 %84, i32 0)
  br label %92

86:                                               ; preds = %76
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %88 = load i32, i32* @M98090_REG_FILTER_CONFIG, align 4
  %89 = load i32, i32* @M98090_DHF_MASK, align 4
  %90 = load i32, i32* @M98090_DHF_MASK, align 4
  %91 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %86, %81
  %93 = load %struct.max98090_priv*, %struct.max98090_priv** %9, align 8
  %94 = load %struct.max98090_priv*, %struct.max98090_priv** %9, align 8
  %95 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.max98090_priv*, %struct.max98090_priv** %9, align 8
  %98 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.max98090_priv*, %struct.max98090_priv** %9, align 8
  %101 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @max98090_configure_dmic(%struct.max98090_priv* %93, i32 %96, i32 %99, i32 %102)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %92, %44
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @max98090_configure_bclk(%struct.snd_soc_component*) #1

declare dso_local i32 @max98090_configure_dmic(%struct.max98090_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
