; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8958_mic_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8958_mic_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.wm8994_priv = type { i32, i32, i32, i64, %struct.snd_soc_component*, i64, i8*, i64, %struct.TYPE_3__*, %struct.wm8994* }
%struct.TYPE_3__ = type { %struct.snd_soc_jack* }
%struct.wm8994 = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"CLK_SYS\00", align 1
@wm8958_mic_id = common dso_local global i64 0, align 8
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@SND_JACK_BTN_4 = common dso_local global i32 0, align 4
@SND_JACK_BTN_5 = common dso_local global i32 0, align 4
@WM8958_MIC_DETECT_2 = common dso_local global i32 0, align 4
@WM8958_MICD_LVL_SEL_MASK = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i64 0, align 8
@WM1811_JACKDET_CTRL = common dso_local global i32 0, align 4
@WM1811_JACKDET_DB = common dso_local global i32 0, align 4
@WM8958_MICBIAS2 = common dso_local global i32 0, align 4
@WM8958_MICB2_DISCH = common dso_local global i32 0, align 4
@WM8994_LDO_1 = common dso_local global i32 0, align 4
@WM8994_LDO1_DISCH = common dso_local global i32 0, align 4
@WM1811_JACKDET_MODE_JACK = common dso_local global i32 0, align 4
@WM8958_MIC_DETECT_1 = common dso_local global i32 0, align 4
@WM8958_MICD_ENA = common dso_local global i32 0, align 4
@WM1811_JACKDET_MODE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8958_mic_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1, i64 %2, i8* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.snd_soc_jack*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.snd_soc_dapm_context*, align 8
  %15 = alloca %struct.wm8994_priv*, align 8
  %16 = alloca %struct.wm8994*, align 8
  %17 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %8, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %18)
  store %struct.snd_soc_dapm_context* %19, %struct.snd_soc_dapm_context** %14, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %21 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.wm8994_priv* %21, %struct.wm8994_priv** %15, align 8
  %22 = load %struct.wm8994_priv*, %struct.wm8994_priv** %15, align 8
  %23 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %22, i32 0, i32 9
  %24 = load %struct.wm8994*, %struct.wm8994** %23, align 8
  store %struct.wm8994* %24, %struct.wm8994** %16, align 8
  %25 = load %struct.wm8994*, %struct.wm8994** %16, align 8
  %26 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %29 [
    i32 129, label %28
    i32 128, label %28
  ]

28:                                               ; preds = %6, %6
  br label %32

29:                                               ; preds = %6
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %158

32:                                               ; preds = %28
  %33 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %9, align 8
  %34 = icmp ne %struct.snd_soc_jack* %33, null
  br i1 %34, label %35, label %145

35:                                               ; preds = %32
  %36 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %14, align 8
  %37 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %14, align 8
  %39 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %38)
  %40 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %9, align 8
  %41 = load %struct.wm8994_priv*, %struct.wm8994_priv** %15, align 8
  %42 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %41, i32 0, i32 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store %struct.snd_soc_jack* %40, %struct.snd_soc_jack** %45, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %35
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.wm8994_priv*, %struct.wm8994_priv** %15, align 8
  %51 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %50, i32 0, i32 7
  store i64 %49, i64* %51, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load %struct.wm8994_priv*, %struct.wm8994_priv** %15, align 8
  %54 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %53, i32 0, i32 6
  store i8* %52, i8** %54, align 8
  br label %60

55:                                               ; preds = %35
  %56 = load %struct.wm8994_priv*, %struct.wm8994_priv** %15, align 8
  %57 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.wm8994_priv*, %struct.wm8994_priv** %15, align 8
  %59 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %48
  %61 = load i64, i64* %12, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i64, i64* %12, align 8
  %65 = load %struct.wm8994_priv*, %struct.wm8994_priv** %15, align 8
  %66 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %65, i32 0, i32 5
  store i64 %64, i64* %66, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = bitcast i8* %67 to %struct.snd_soc_component*
  %69 = load %struct.wm8994_priv*, %struct.wm8994_priv** %15, align 8
  %70 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %69, i32 0, i32 4
  store %struct.snd_soc_component* %68, %struct.snd_soc_component** %70, align 8
  br label %78

71:                                               ; preds = %60
  %72 = load i64, i64* @wm8958_mic_id, align 8
  %73 = load %struct.wm8994_priv*, %struct.wm8994_priv** %15, align 8
  %74 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %73, i32 0, i32 5
  store i64 %72, i64* %74, align 8
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %76 = load %struct.wm8994_priv*, %struct.wm8994_priv** %15, align 8
  %77 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %76, i32 0, i32 4
  store %struct.snd_soc_component* %75, %struct.snd_soc_component** %77, align 8
  br label %78

78:                                               ; preds = %71, %63
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %80 = call i32 @wm8958_micd_set_rate(%struct.snd_soc_component* %79)
  %81 = load %struct.wm8994*, %struct.wm8994** %16, align 8
  %82 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.wm8994*, %struct.wm8994** %16, align 8
  %88 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %17, align 4
  br label %92

91:                                               ; preds = %78
  store i32 65, i32* %17, align 4
  br label %92

92:                                               ; preds = %91, %86
  %93 = load i32, i32* @SND_JACK_BTN_0, align 4
  %94 = load i32, i32* @SND_JACK_BTN_1, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @SND_JACK_BTN_2, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @SND_JACK_BTN_3, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @SND_JACK_BTN_4, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @SND_JACK_BTN_5, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.wm8994_priv*, %struct.wm8994_priv** %15, align 8
  %105 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %107 = load i32, i32* @WM8958_MIC_DETECT_2, align 4
  %108 = load i32, i32* @WM8958_MICD_LVL_SEL_MASK, align 4
  %109 = load i32, i32* %17, align 4
  %110 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %106, i32 %107, i32 %108, i32 %109)
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %112 = call i64 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %111)
  %113 = load i64, i64* @SND_SOC_BIAS_STANDBY, align 8
  %114 = icmp sgt i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @WARN_ON(i32 %115)
  %117 = load %struct.wm8994_priv*, %struct.wm8994_priv** %15, align 8
  %118 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %92
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %123 = load i32, i32* @WM1811_JACKDET_CTRL, align 4
  %124 = load i32, i32* @WM1811_JACKDET_DB, align 4
  %125 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %122, i32 %123, i32 %124, i32 0)
  %126 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %127 = load i32, i32* @WM8958_MICBIAS2, align 4
  %128 = load i32, i32* @WM8958_MICB2_DISCH, align 4
  %129 = load i32, i32* @WM8958_MICB2_DISCH, align 4
  %130 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %126, i32 %127, i32 %128, i32 %129)
  %131 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %132 = load i32, i32* @WM8994_LDO_1, align 4
  %133 = load i32, i32* @WM8994_LDO1_DISCH, align 4
  %134 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %131, i32 %132, i32 %133, i32 0)
  %135 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %136 = load i32, i32* @WM1811_JACKDET_MODE_JACK, align 4
  %137 = call i32 @wm1811_jackdet_set_mode(%struct.snd_soc_component* %135, i32 %136)
  br label %144

138:                                              ; preds = %92
  %139 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %140 = load i32, i32* @WM8958_MIC_DETECT_1, align 4
  %141 = load i32, i32* @WM8958_MICD_ENA, align 4
  %142 = load i32, i32* @WM8958_MICD_ENA, align 4
  %143 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %139, i32 %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %138, %121
  br label %157

145:                                              ; preds = %32
  %146 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %147 = load i32, i32* @WM8958_MIC_DETECT_1, align 4
  %148 = load i32, i32* @WM8958_MICD_ENA, align 4
  %149 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %146, i32 %147, i32 %148, i32 0)
  %150 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %151 = load i32, i32* @WM1811_JACKDET_MODE_NONE, align 4
  %152 = call i32 @wm1811_jackdet_set_mode(%struct.snd_soc_component* %150, i32 %151)
  %153 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %14, align 8
  %154 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %155 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %14, align 8
  %156 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %155)
  br label %157

157:                                              ; preds = %145, %144
  store i32 0, i32* %7, align 4
  br label %158

158:                                              ; preds = %157, %29
  %159 = load i32, i32* %7, align 4
  ret i32 %159
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @wm8958_micd_set_rate(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @wm1811_jackdet_set_mode(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
