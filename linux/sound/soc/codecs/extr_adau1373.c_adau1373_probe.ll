; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1373.c_adau1373_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1373.c_adau1373_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.adau1373_platform_data* }
%struct.adau1373_platform_data = type { i32, i32, i32, i32, i64, i64*, i32* }
%struct.adau1373 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@adau1373_drc_controls = common dso_local global i32* null, align 8
@ADAU1373_INPUT_MODE = common dso_local global i32 0, align 4
@ADAU1373_OUTPUT_CTRL_LDIFF = common dso_local global i32 0, align 4
@ADAU1373_OUTPUT_CTRL_LNFBEN = common dso_local global i32 0, align 4
@ADAU1373_OUTPUT_CTRL = common dso_local global i32 0, align 4
@ADAU1373_EP_CTRL = common dso_local global i32 0, align 4
@ADAU1373_EP_CTRL_MICBIAS1_OFFSET = common dso_local global i32 0, align 4
@ADAU1373_EP_CTRL_MICBIAS2_OFFSET = common dso_local global i32 0, align 4
@adau1373_lineout2_controls = common dso_local global i32* null, align 8
@ADAU1373_ADC_CTRL = common dso_local global i32 0, align 4
@ADAU1373_ADC_CTRL_RESET_FORCE = common dso_local global i32 0, align 4
@ADAU1373_ADC_CTRL_PEAK_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @adau1373_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1373_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.adau1373*, align 8
  %5 = alloca %struct.adau1373_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.adau1373* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.adau1373* %10, %struct.adau1373** %4, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.adau1373_platform_data*, %struct.adau1373_platform_data** %14, align 8
  store %struct.adau1373_platform_data* %15, %struct.adau1373_platform_data** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.adau1373_platform_data*, %struct.adau1373_platform_data** %5, align 8
  %17 = icmp ne %struct.adau1373_platform_data* %16, null
  br i1 %17, label %18, label %144

18:                                               ; preds = %1
  %19 = load %struct.adau1373_platform_data*, %struct.adau1373_platform_data** %5, align 8
  %20 = getelementptr inbounds %struct.adau1373_platform_data, %struct.adau1373_platform_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.adau1373_platform_data*, %struct.adau1373_platform_data** %5, align 8
  %23 = getelementptr inbounds %struct.adau1373_platform_data, %struct.adau1373_platform_data* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %162

30:                                               ; preds = %18
  %31 = load %struct.adau1373_platform_data*, %struct.adau1373_platform_data** %5, align 8
  %32 = getelementptr inbounds %struct.adau1373_platform_data, %struct.adau1373_platform_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @adau1373_valid_micbias(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.adau1373_platform_data*, %struct.adau1373_platform_data** %5, align 8
  %38 = getelementptr inbounds %struct.adau1373_platform_data, %struct.adau1373_platform_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @adau1373_valid_micbias(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36, %30
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %162

45:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %63, %45
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.adau1373_platform_data*, %struct.adau1373_platform_data** %5, align 8
  %49 = getelementptr inbounds %struct.adau1373_platform_data, %struct.adau1373_platform_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load %struct.adau1373*, %struct.adau1373** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.adau1373_platform_data*, %struct.adau1373_platform_data** %5, align 8
  %56 = getelementptr inbounds %struct.adau1373_platform_data, %struct.adau1373_platform_data* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @adau1373_load_drc_settings(%struct.adau1373* %53, i32 %54, i32 %61)
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %46

66:                                               ; preds = %46
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %68 = load i32*, i32** @adau1373_drc_controls, align 8
  %69 = load %struct.adau1373_platform_data*, %struct.adau1373_platform_data** %5, align 8
  %70 = getelementptr inbounds %struct.adau1373_platform_data, %struct.adau1373_platform_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %67, i32* %68, i32 %71)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %91, %66
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 4
  br i1 %75, label %76, label %94

76:                                               ; preds = %73
  %77 = load %struct.adau1373_platform_data*, %struct.adau1373_platform_data** %5, align 8
  %78 = getelementptr inbounds %struct.adau1373_platform_data, %struct.adau1373_platform_data* %77, i32 0, i32 5
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @BIT(i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %85, %76
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %73

94:                                               ; preds = %73
  %95 = load %struct.adau1373*, %struct.adau1373** %4, align 8
  %96 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ADAU1373_INPUT_MODE, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @regmap_write(i32 %97, i32 %98, i32 %99)
  store i32 0, i32* %7, align 4
  %101 = load %struct.adau1373_platform_data*, %struct.adau1373_platform_data** %5, align 8
  %102 = getelementptr inbounds %struct.adau1373_platform_data, %struct.adau1373_platform_data* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %94
  %106 = load i32, i32* @ADAU1373_OUTPUT_CTRL_LDIFF, align 4
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %105, %94
  %110 = load %struct.adau1373_platform_data*, %struct.adau1373_platform_data** %5, align 8
  %111 = getelementptr inbounds %struct.adau1373_platform_data, %struct.adau1373_platform_data* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* @ADAU1373_OUTPUT_CTRL_LNFBEN, align 4
  %116 = load i32, i32* %7, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %114, %109
  %119 = load %struct.adau1373*, %struct.adau1373** %4, align 8
  %120 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ADAU1373_OUTPUT_CTRL, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @regmap_write(i32 %121, i32 %122, i32 %123)
  %125 = load %struct.adau1373_platform_data*, %struct.adau1373_platform_data** %5, align 8
  %126 = getelementptr inbounds %struct.adau1373_platform_data, %struct.adau1373_platform_data* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %6, align 4
  %128 = load %struct.adau1373*, %struct.adau1373** %4, align 8
  %129 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @ADAU1373_EP_CTRL, align 4
  %132 = load %struct.adau1373_platform_data*, %struct.adau1373_platform_data** %5, align 8
  %133 = getelementptr inbounds %struct.adau1373_platform_data, %struct.adau1373_platform_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @ADAU1373_EP_CTRL_MICBIAS1_OFFSET, align 4
  %136 = shl i32 %134, %135
  %137 = load %struct.adau1373_platform_data*, %struct.adau1373_platform_data** %5, align 8
  %138 = getelementptr inbounds %struct.adau1373_platform_data, %struct.adau1373_platform_data* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @ADAU1373_EP_CTRL_MICBIAS2_OFFSET, align 4
  %141 = shl i32 %139, %140
  %142 = or i32 %136, %141
  %143 = call i32 @regmap_write(i32 %130, i32 %131, i32 %142)
  br label %144

144:                                              ; preds = %118, %1
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %144
  %148 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %149 = load i32*, i32** @adau1373_lineout2_controls, align 8
  %150 = load i32*, i32** @adau1373_lineout2_controls, align 8
  %151 = call i32 @ARRAY_SIZE(i32* %150)
  %152 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %148, i32* %149, i32 %151)
  br label %153

153:                                              ; preds = %147, %144
  %154 = load %struct.adau1373*, %struct.adau1373** %4, align 8
  %155 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @ADAU1373_ADC_CTRL, align 4
  %158 = load i32, i32* @ADAU1373_ADC_CTRL_RESET_FORCE, align 4
  %159 = load i32, i32* @ADAU1373_ADC_CTRL_PEAK_DETECT, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @regmap_write(i32 %156, i32 %157, i32 %160)
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %153, %42, %27
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.adau1373* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @adau1373_valid_micbias(i32) #1

declare dso_local i32 @adau1373_load_drc_settings(%struct.adau1373*, i32, i32) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
