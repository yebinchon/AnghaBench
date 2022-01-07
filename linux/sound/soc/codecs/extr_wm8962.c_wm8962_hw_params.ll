; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8962_priv = type { i32, i32 }

@sr_vals = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Unsupported rate %dHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8962_SAMPLE_RATE_INT_MODE = common dso_local global i32 0, align 4
@WM8962_AUDIO_INTERFACE_0 = common dso_local global i32 0, align 4
@WM8962_WL_MASK = common dso_local global i32 0, align 4
@WM8962_ADDITIONAL_CONTROL_3 = common dso_local global i32 0, align 4
@WM8962_SAMPLE_RATE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"hw_params set BCLK %dHz LRCLK %dHz\0A\00", align 1
@SND_SOC_BIAS_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8962_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8962_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8962_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %8, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %17 = call %struct.wm8962_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.wm8962_priv* %17, %struct.wm8962_priv** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %19 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %18)
  %20 = load %struct.wm8962_priv*, %struct.wm8962_priv** %9, align 8
  %21 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %23 = call i32 @params_channels(%struct.snd_pcm_hw_params* %22)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.wm8962_priv*, %struct.wm8962_priv** %9, align 8
  %27 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 2
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %25, %3
  %31 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %32 = call i32 @params_rate(%struct.snd_pcm_hw_params* %31)
  %33 = load %struct.wm8962_priv*, %struct.wm8962_priv** %9, align 8
  %34 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %61, %30
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sr_vals, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sr_vals, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wm8962_priv*, %struct.wm8962_priv** %9, align 8
  %48 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %40
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sr_vals, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %12, align 4
  br label %64

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %35

64:                                               ; preds = %51, %35
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sr_vals, align 8
  %67 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %66)
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %71 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.wm8962_priv*, %struct.wm8962_priv** %9, align 8
  %74 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %136

79:                                               ; preds = %64
  %80 = load %struct.wm8962_priv*, %struct.wm8962_priv** %9, align 8
  %81 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = srem i32 %82, 8000
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* @WM8962_SAMPLE_RATE_INT_MODE, align 4
  %87 = load i32, i32* %12, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %85, %79
  %90 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %91 = call i32 @params_width(%struct.snd_pcm_hw_params* %90)
  switch i32 %91, label %102 [
    i32 16, label %92
    i32 20, label %93
    i32 24, label %96
    i32 32, label %99
  ]

92:                                               ; preds = %89
  br label %105

93:                                               ; preds = %89
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, 4
  store i32 %95, i32* %11, align 4
  br label %105

96:                                               ; preds = %89
  %97 = load i32, i32* %11, align 4
  %98 = or i32 %97, 8
  store i32 %98, i32* %11, align 4
  br label %105

99:                                               ; preds = %89
  %100 = load i32, i32* %11, align 4
  %101 = or i32 %100, 12
  store i32 %101, i32* %11, align 4
  br label %105

102:                                              ; preds = %89
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %136

105:                                              ; preds = %99, %96, %93, %92
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %107 = load i32, i32* @WM8962_AUDIO_INTERFACE_0, align 4
  %108 = load i32, i32* @WM8962_WL_MASK, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %106, i32 %107, i32 %108, i32 %109)
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %112 = load i32, i32* @WM8962_ADDITIONAL_CONTROL_3, align 4
  %113 = load i32, i32* @WM8962_SAMPLE_RATE_INT_MODE, align 4
  %114 = load i32, i32* @WM8962_SAMPLE_RATE_MASK, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %111, i32 %112, i32 %115, i32 %116)
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %119 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.wm8962_priv*, %struct.wm8962_priv** %9, align 8
  %122 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.wm8962_priv*, %struct.wm8962_priv** %9, align 8
  %125 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @dev_dbg(i32 %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %123, i32 %126)
  %128 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %129 = call i64 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %128)
  %130 = load i64, i64* @SND_SOC_BIAS_ON, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %105
  %133 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %134 = call i32 @wm8962_configure_bclk(%struct.snd_soc_component* %133)
  br label %135

135:                                              ; preds = %132, %105
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %102, %69
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.wm8962_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i64 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8962_configure_bclk(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
