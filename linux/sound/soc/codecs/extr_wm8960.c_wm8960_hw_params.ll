; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8960_priv = type { i32, i32*, i64 }

@WM8960_IFACE1 = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"unsupported width %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@alc_rates = common dso_local global %struct.TYPE_3__* null, align 8
@WM8960_ADDCTL3 = common dso_local global i32 0, align 4
@SND_SOC_BIAS_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8960_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8960_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8960_priv*, align 8
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
  %17 = call %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.wm8960_priv* %17, %struct.wm8960_priv** %9, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = load i32, i32* @WM8960_IFACE1, align 4
  %20 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %18, i32 %19)
  %21 = and i32 %20, 65523
  store i32 %21, i32* %10, align 4
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %29 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %28)
  %30 = load %struct.wm8960_priv*, %struct.wm8960_priv** %9, align 8
  %31 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %33 = call i32 @params_channels(%struct.snd_pcm_hw_params* %32)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load %struct.wm8960_priv*, %struct.wm8960_priv** %9, align 8
  %37 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %38, 2
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %35, %3
  %41 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %42 = call i32 @params_width(%struct.snd_pcm_hw_params* %41)
  switch i32 %42, label %58 [
    i32 16, label %43
    i32 20, label %44
    i32 24, label %47
    i32 32, label %50
  ]

43:                                               ; preds = %40
  br label %67

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, 4
  store i32 %46, i32* %10, align 4
  br label %67

47:                                               ; preds = %40
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, 8
  store i32 %49, i32* %10, align 4
  br label %67

50:                                               ; preds = %40
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 3
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, 12
  store i32 %56, i32* %10, align 4
  br label %67

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %40, %57
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %60 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %63 = call i32 @params_width(%struct.snd_pcm_hw_params* %62)
  %64 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %139

67:                                               ; preds = %54, %47, %44, %43
  %68 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %69 = call i64 @params_rate(%struct.snd_pcm_hw_params* %68)
  %70 = load %struct.wm8960_priv*, %struct.wm8960_priv** %9, align 8
  %71 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %76 = call i32 @wm8960_set_deemph(%struct.snd_soc_component* %75)
  br label %108

77:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %104, %77
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @alc_rates, align 8
  %81 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %80)
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %78
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @alc_rates, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %91 = call i64 @params_rate(%struct.snd_pcm_hw_params* %90)
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %83
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %95 = load i32, i32* @WM8960_ADDCTL3, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @alc_rates, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %94, i32 %95, i32 7, i32 %101)
  br label %103

103:                                              ; preds = %93, %83
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %78

107:                                              ; preds = %78
  br label %108

108:                                              ; preds = %107, %74
  %109 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %110 = load i32, i32* @WM8960_IFACE1, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %109, i32 %110, i32 %111)
  %113 = load %struct.wm8960_priv*, %struct.wm8960_priv** %9, align 8
  %114 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 1, i32* %118, align 4
  %119 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %120 = call i64 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %119)
  %121 = load i64, i64* @SND_SOC_BIAS_ON, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %108
  %124 = load %struct.wm8960_priv*, %struct.wm8960_priv** %9, align 8
  %125 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %126, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %123
  %136 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %137 = call i32 @wm8960_configure_clocking(%struct.snd_soc_component* %136)
  store i32 %137, i32* %4, align 4
  br label %139

138:                                              ; preds = %123, %108
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %135, %58
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @wm8960_set_deemph(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i64 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8960_configure_clocking(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
