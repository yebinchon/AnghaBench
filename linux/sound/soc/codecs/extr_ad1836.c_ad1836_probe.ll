; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad1836.c_ad1836_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad1836.c_ad1836_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.ad1836_priv = type { i64, i32 }
%struct.snd_soc_dapm_context = type { i32 }

@ad183x_dais = common dso_local global %struct.TYPE_6__* null, align 8
@AD1836_DAC_CTRL1 = common dso_local global i32 0, align 4
@AD1836_DAC_CTRL2 = common dso_local global i32 0, align 4
@AD1836_ADC_CTRL1 = common dso_local global i32 0, align 4
@AD1836_ADC_CTRL2 = common dso_local global i32 0, align 4
@AD1836 = common dso_local global i64 0, align 8
@AD1836_ADC_CTRL3 = common dso_local global i32 0, align 4
@ad1836_controls = common dso_local global i32 0, align 4
@ad183x_dac_controls = common dso_local global i32 0, align 4
@ad183x_adc_controls = common dso_local global i32 0, align 4
@ad183x_dac_dapm_widgets = common dso_local global i32 0, align 4
@ad183x_adc_dapm_widgets = common dso_local global i32 0, align 4
@ad183x_dac_routes = common dso_local global i32 0, align 4
@ad183x_adc_routes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @ad1836_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1836_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.ad1836_priv*, align 8
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.ad1836_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.ad1836_priv* %11, %struct.ad1836_priv** %4, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %12)
  store %struct.snd_soc_dapm_context* %13, %struct.snd_soc_dapm_context** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ad183x_dais, align 8
  %15 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ad183x_dais, align 8
  %24 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %25 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %7, align 4
  %32 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %33 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @AD1836_DAC_CTRL1, align 4
  %36 = call i32 @regmap_write(i32 %34, i32 %35, i32 768)
  %37 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %38 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AD1836_DAC_CTRL2, align 4
  %41 = call i32 @regmap_write(i32 %39, i32 %40, i32 0)
  %42 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %43 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AD1836_ADC_CTRL1, align 4
  %46 = call i32 @regmap_write(i32 %44, i32 %45, i32 256)
  %47 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %48 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @AD1836_ADC_CTRL2, align 4
  %51 = call i32 @regmap_write(i32 %49, i32 %50, i32 384)
  store i32 1, i32* %9, align 4
  br label %52

52:                                               ; preds = %69, %1
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %58 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @AD1836_DAC_L_VOL(i32 %60)
  %62 = call i32 @regmap_write(i32 %59, i32 %61, i32 1023)
  %63 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %64 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @AD1836_DAC_R_VOL(i32 %66)
  %68 = call i32 @regmap_write(i32 %65, i32 %67, i32 1023)
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %52

72:                                               ; preds = %52
  %73 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %74 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AD1836, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %80 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @AD1836_ADC_CTRL3, align 4
  %83 = call i32 @regmap_write(i32 %81, i32 %82, i32 58)
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %85 = load i32, i32* @ad1836_controls, align 4
  %86 = load i32, i32* @ad1836_controls, align 4
  %87 = call i32 @ARRAY_SIZE(i32 %86)
  %88 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %84, i32 %85, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %78
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %2, align 4
  br label %157

93:                                               ; preds = %78
  br label %100

94:                                               ; preds = %72
  %95 = load %struct.ad1836_priv*, %struct.ad1836_priv** %4, align 8
  %96 = getelementptr inbounds %struct.ad1836_priv, %struct.ad1836_priv* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @AD1836_ADC_CTRL3, align 4
  %99 = call i32 @regmap_write(i32 %97, i32 %98, i32 0)
  br label %100

100:                                              ; preds = %94, %93
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %102 = load i32, i32* @ad183x_dac_controls, align 4
  %103 = load i32, i32* %6, align 4
  %104 = mul nsw i32 %103, 2
  %105 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %101, i32 %102, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %2, align 4
  br label %157

110:                                              ; preds = %100
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %112 = load i32, i32* @ad183x_adc_controls, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %111, i32 %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %2, align 4
  br label %157

119:                                              ; preds = %110
  %120 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %121 = load i32, i32* @ad183x_dac_dapm_widgets, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %120, i32 %121, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %157

128:                                              ; preds = %119
  %129 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %130 = load i32, i32* @ad183x_adc_dapm_widgets, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %129, i32 %130, i32 %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %2, align 4
  br label %157

137:                                              ; preds = %128
  %138 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %139 = load i32, i32* @ad183x_dac_routes, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %138, i32 %139, i32 %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %2, align 4
  br label %157

146:                                              ; preds = %137
  %147 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %148 = load i32, i32* @ad183x_adc_routes, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %147, i32 %148, i32 %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %2, align 4
  br label %157

155:                                              ; preds = %146
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %155, %153, %144, %135, %126, %117, %108, %91
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.ad1836_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @AD1836_DAC_L_VOL(i32) #1

declare dso_local i32 @AD1836_DAC_R_VOL(i32) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
