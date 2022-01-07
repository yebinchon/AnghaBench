; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8997.c_wm8997_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8997.c_wm8997_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.arizona = type { i32, i32 }
%struct.wm8997_priv = type { %struct.TYPE_16__, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, %struct.arizona* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@ARIZONA_FLL1_CONTROL_1 = common dso_local global i64 0, align 8
@ARIZONA_IRQ_FLL1_LOCK = common dso_local global i32 0, align 4
@ARIZONA_IRQ_FLL1_CLOCK_OK = common dso_local global i32 0, align 4
@ARIZONA_FLL2_CONTROL_1 = common dso_local global i64 0, align 8
@ARIZONA_IRQ_FLL2_LOCK = common dso_local global i32 0, align 4
@ARIZONA_IRQ_FLL2_CLOCK_OK = common dso_local global i32 0, align 4
@ARIZONA_SAMPLE_RATE_2 = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@ARIZONA_SAMPLE_RATE_2_MASK = common dso_local global i32 0, align 4
@ARIZONA_SAMPLE_RATE_3 = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@ARIZONA_SAMPLE_RATE_3_MASK = common dso_local global i32 0, align 4
@wm8997_dai = common dso_local global %struct.TYPE_17__* null, align 8
@wm8997_digital_vu = common dso_local global %struct.TYPE_17__* null, align 8
@WM8997_DIG_VU = common dso_local global i32 0, align 4
@soc_component_dev_wm8997 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8997_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8997_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.arizona*, align 8
  %5 = alloca %struct.wm8997_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.arizona* @dev_get_drvdata(i32 %11)
  store %struct.arizona* %12, %struct.arizona** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.wm8997_priv* @devm_kzalloc(%struct.TYPE_18__* %14, i32 24, i32 %15)
  store %struct.wm8997_priv* %16, %struct.wm8997_priv** %5, align 8
  %17 = load %struct.wm8997_priv*, %struct.wm8997_priv** %5, align 8
  %18 = icmp eq %struct.wm8997_priv* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %182

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.wm8997_priv*, %struct.wm8997_priv** %5, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.wm8997_priv* %24)
  %26 = load i32, i32* @CONFIG_OF, align 4
  %27 = call i64 @IS_ENABLED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load %struct.arizona*, %struct.arizona** %4, align 8
  %31 = getelementptr inbounds %struct.arizona, %struct.arizona* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_get_platdata(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = load %struct.arizona*, %struct.arizona** %4, align 8
  %37 = call i32 @arizona_of_get_audio_pdata(%struct.arizona* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %182

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.arizona*, %struct.arizona** %4, align 8
  %46 = load %struct.wm8997_priv*, %struct.wm8997_priv** %5, align 8
  %47 = getelementptr inbounds %struct.wm8997_priv, %struct.wm8997_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  store %struct.arizona* %45, %struct.arizona** %48, align 8
  %49 = load %struct.wm8997_priv*, %struct.wm8997_priv** %5, align 8
  %50 = getelementptr inbounds %struct.wm8997_priv, %struct.wm8997_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  store i32 4, i32* %51, align 8
  %52 = load %struct.wm8997_priv*, %struct.wm8997_priv** %5, align 8
  %53 = getelementptr inbounds %struct.wm8997_priv, %struct.wm8997_priv* %52, i32 0, i32 0
  %54 = call i32 @arizona_init_dvfs(%struct.TYPE_16__* %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %70, %44
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.wm8997_priv*, %struct.wm8997_priv** %5, align 8
  %58 = getelementptr inbounds %struct.wm8997_priv, %struct.wm8997_priv* %57, i32 0, i32 1
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = call i32 @ARRAY_SIZE(%struct.TYPE_17__* %59)
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load %struct.wm8997_priv*, %struct.wm8997_priv** %5, align 8
  %64 = getelementptr inbounds %struct.wm8997_priv, %struct.wm8997_priv* %63, i32 0, i32 1
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %55

73:                                               ; preds = %55
  %74 = load %struct.arizona*, %struct.arizona** %4, align 8
  %75 = load i64, i64* @ARIZONA_FLL1_CONTROL_1, align 8
  %76 = sub nsw i64 %75, 1
  %77 = load i32, i32* @ARIZONA_IRQ_FLL1_LOCK, align 4
  %78 = load i32, i32* @ARIZONA_IRQ_FLL1_CLOCK_OK, align 4
  %79 = load %struct.wm8997_priv*, %struct.wm8997_priv** %5, align 8
  %80 = getelementptr inbounds %struct.wm8997_priv, %struct.wm8997_priv* %79, i32 0, i32 1
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i64 0
  %83 = call i32 @arizona_init_fll(%struct.arizona* %74, i32 1, i64 %76, i32 %77, i32 %78, %struct.TYPE_17__* %82)
  %84 = load %struct.arizona*, %struct.arizona** %4, align 8
  %85 = load i64, i64* @ARIZONA_FLL2_CONTROL_1, align 8
  %86 = sub nsw i64 %85, 1
  %87 = load i32, i32* @ARIZONA_IRQ_FLL2_LOCK, align 4
  %88 = load i32, i32* @ARIZONA_IRQ_FLL2_CLOCK_OK, align 4
  %89 = load %struct.wm8997_priv*, %struct.wm8997_priv** %5, align 8
  %90 = getelementptr inbounds %struct.wm8997_priv, %struct.wm8997_priv* %89, i32 0, i32 1
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i64 1
  %93 = call i32 @arizona_init_fll(%struct.arizona* %84, i32 2, i64 %86, i32 %87, i32 %88, %struct.TYPE_17__* %92)
  %94 = load %struct.arizona*, %struct.arizona** %4, align 8
  %95 = getelementptr inbounds %struct.arizona, %struct.arizona* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ARIZONA_SAMPLE_RATE_2_MASK, align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ARIZONA_SAMPLE_RATE_2, i32 0, i32 0), align 4
  %99 = call i32 @regmap_update_bits(i32 %96, i32 %98, i32 %97, i32 17)
  %100 = load %struct.arizona*, %struct.arizona** %4, align 8
  %101 = getelementptr inbounds %struct.arizona, %struct.arizona* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ARIZONA_SAMPLE_RATE_3_MASK, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ARIZONA_SAMPLE_RATE_3, i32 0, i32 0), align 4
  %105 = call i32 @regmap_update_bits(i32 %102, i32 %104, i32 %103, i32 18)
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %116, %73
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wm8997_dai, align 8
  %109 = call i32 @ARRAY_SIZE(%struct.TYPE_17__* %108)
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load %struct.wm8997_priv*, %struct.wm8997_priv** %5, align 8
  %113 = getelementptr inbounds %struct.wm8997_priv, %struct.wm8997_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @arizona_init_dai(%struct.TYPE_16__* %113, i32 %114)
  br label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %106

119:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %138, %119
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wm8997_digital_vu, align 8
  %123 = call i32 @ARRAY_SIZE(%struct.TYPE_17__* %122)
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %120
  %126 = load %struct.arizona*, %struct.arizona** %4, align 8
  %127 = getelementptr inbounds %struct.arizona, %struct.arizona* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wm8997_digital_vu, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i64 %131
  %133 = load i32, i32* @WM8997_DIG_VU, align 4
  %134 = load i32, i32* @WM8997_DIG_VU, align 4
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @regmap_update_bits(i32 %128, i32 %136, i32 %133, i32 %134)
  br label %138

138:                                              ; preds = %125
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %120

141:                                              ; preds = %120
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @pm_runtime_enable(%struct.TYPE_18__* %143)
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = call i32 @pm_runtime_idle(%struct.TYPE_18__* %146)
  %148 = load %struct.arizona*, %struct.arizona** %4, align 8
  %149 = call i32 @arizona_init_common(%struct.arizona* %148)
  %150 = load %struct.arizona*, %struct.arizona** %4, align 8
  %151 = call i32 @arizona_init_vol_limit(%struct.arizona* %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %141
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %2, align 4
  br label %182

156:                                              ; preds = %141
  %157 = load %struct.arizona*, %struct.arizona** %4, align 8
  %158 = call i32 @arizona_init_spk_irqs(%struct.arizona* %157)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %2, align 4
  br label %182

163:                                              ; preds = %156
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wm8997_dai, align 8
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wm8997_dai, align 8
  %168 = call i32 @ARRAY_SIZE(%struct.TYPE_17__* %167)
  %169 = call i32 @devm_snd_soc_register_component(%struct.TYPE_18__* %165, i32* @soc_component_dev_wm8997, %struct.TYPE_17__* %166, i32 %168)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %163
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @dev_err(%struct.TYPE_18__* %174, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %175)
  br label %178

177:                                              ; preds = %163
  br label %178

178:                                              ; preds = %177, %172
  %179 = load %struct.arizona*, %struct.arizona** %4, align 8
  %180 = call i32 @arizona_free_spk_irqs(%struct.arizona* %179)
  %181 = load i32, i32* %7, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %178, %161, %154, %40, %19
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.arizona* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm8997_priv* @devm_kzalloc(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm8997_priv*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_get_platdata(i32) #1

declare dso_local i32 @arizona_of_get_audio_pdata(%struct.arizona*) #1

declare dso_local i32 @arizona_init_dvfs(%struct.TYPE_16__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_17__*) #1

declare dso_local i32 @arizona_init_fll(%struct.arizona*, i32, i64, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @arizona_init_dai(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_idle(%struct.TYPE_18__*) #1

declare dso_local i32 @arizona_init_common(%struct.arizona*) #1

declare dso_local i32 @arizona_init_vol_limit(%struct.arizona*) #1

declare dso_local i32 @arizona_init_spk_irqs(%struct.arizona*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_18__*, i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @arizona_free_spk_irqs(%struct.arizona*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
