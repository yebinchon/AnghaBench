; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8998.c_wm8998_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8998.c_wm8998_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.arizona = type { i32, i32 }
%struct.wm8998_priv = type { %struct.TYPE_13__, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, %struct.arizona* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@ARIZONA_FLL1_CONTROL_1 = common dso_local global i64 0, align 8
@ARIZONA_IRQ_FLL1_LOCK = common dso_local global i32 0, align 4
@ARIZONA_IRQ_FLL1_CLOCK_OK = common dso_local global i32 0, align 4
@ARIZONA_FLL2_CONTROL_1 = common dso_local global i64 0, align 8
@ARIZONA_IRQ_FLL2_LOCK = common dso_local global i32 0, align 4
@ARIZONA_IRQ_FLL2_CLOCK_OK = common dso_local global i32 0, align 4
@wm8998_dai = common dso_local global %struct.TYPE_14__* null, align 8
@wm8998_digital_vu = common dso_local global %struct.TYPE_14__* null, align 8
@WM8998_DIG_VU = common dso_local global i32 0, align 4
@soc_component_dev_wm8998 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8998_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8998_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.arizona*, align 8
  %5 = alloca %struct.wm8998_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.arizona* @dev_get_drvdata(i32 %11)
  store %struct.arizona* %12, %struct.arizona** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.wm8998_priv* @devm_kzalloc(%struct.TYPE_15__* %14, i32 24, i32 %15)
  store %struct.wm8998_priv* %16, %struct.wm8998_priv** %5, align 8
  %17 = load %struct.wm8998_priv*, %struct.wm8998_priv** %5, align 8
  %18 = icmp ne %struct.wm8998_priv* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %161

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.wm8998_priv*, %struct.wm8998_priv** %5, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.wm8998_priv* %24)
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
  br label %161

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.arizona*, %struct.arizona** %4, align 8
  %46 = load %struct.wm8998_priv*, %struct.wm8998_priv** %5, align 8
  %47 = getelementptr inbounds %struct.wm8998_priv, %struct.wm8998_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  store %struct.arizona* %45, %struct.arizona** %48, align 8
  %49 = load %struct.wm8998_priv*, %struct.wm8998_priv** %5, align 8
  %50 = getelementptr inbounds %struct.wm8998_priv, %struct.wm8998_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i32 3, i32* %51, align 8
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %67, %44
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.wm8998_priv*, %struct.wm8998_priv** %5, align 8
  %55 = getelementptr inbounds %struct.wm8998_priv, %struct.wm8998_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %56)
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load %struct.wm8998_priv*, %struct.wm8998_priv** %5, align 8
  %61 = getelementptr inbounds %struct.wm8998_priv, %struct.wm8998_priv* %60, i32 0, i32 1
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %52

70:                                               ; preds = %52
  %71 = load %struct.arizona*, %struct.arizona** %4, align 8
  %72 = load i64, i64* @ARIZONA_FLL1_CONTROL_1, align 8
  %73 = sub nsw i64 %72, 1
  %74 = load i32, i32* @ARIZONA_IRQ_FLL1_LOCK, align 4
  %75 = load i32, i32* @ARIZONA_IRQ_FLL1_CLOCK_OK, align 4
  %76 = load %struct.wm8998_priv*, %struct.wm8998_priv** %5, align 8
  %77 = getelementptr inbounds %struct.wm8998_priv, %struct.wm8998_priv* %76, i32 0, i32 1
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i64 0
  %80 = call i32 @arizona_init_fll(%struct.arizona* %71, i32 1, i64 %73, i32 %74, i32 %75, %struct.TYPE_14__* %79)
  %81 = load %struct.arizona*, %struct.arizona** %4, align 8
  %82 = load i64, i64* @ARIZONA_FLL2_CONTROL_1, align 8
  %83 = sub nsw i64 %82, 1
  %84 = load i32, i32* @ARIZONA_IRQ_FLL2_LOCK, align 4
  %85 = load i32, i32* @ARIZONA_IRQ_FLL2_CLOCK_OK, align 4
  %86 = load %struct.wm8998_priv*, %struct.wm8998_priv** %5, align 8
  %87 = getelementptr inbounds %struct.wm8998_priv, %struct.wm8998_priv* %86, i32 0, i32 1
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i64 1
  %90 = call i32 @arizona_init_fll(%struct.arizona* %81, i32 2, i64 %83, i32 %84, i32 %85, %struct.TYPE_14__* %89)
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %101, %70
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wm8998_dai, align 8
  %94 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %93)
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.wm8998_priv*, %struct.wm8998_priv** %5, align 8
  %98 = getelementptr inbounds %struct.wm8998_priv, %struct.wm8998_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @arizona_init_dai(%struct.TYPE_13__* %98, i32 %99)
  br label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %91

104:                                              ; preds = %91
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %123, %104
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wm8998_digital_vu, align 8
  %108 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %107)
  %109 = icmp slt i32 %106, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %105
  %111 = load %struct.arizona*, %struct.arizona** %4, align 8
  %112 = getelementptr inbounds %struct.arizona, %struct.arizona* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wm8998_digital_vu, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i64 %116
  %118 = load i32, i32* @WM8998_DIG_VU, align 4
  %119 = load i32, i32* @WM8998_DIG_VU, align 4
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @regmap_update_bits(i32 %113, i32 %121, i32 %118, i32 %119)
  br label %123

123:                                              ; preds = %110
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %105

126:                                              ; preds = %105
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = call i32 @pm_runtime_enable(%struct.TYPE_15__* %128)
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @pm_runtime_idle(%struct.TYPE_15__* %131)
  %133 = load %struct.arizona*, %struct.arizona** %4, align 8
  %134 = call i32 @arizona_init_common(%struct.arizona* %133)
  %135 = load %struct.arizona*, %struct.arizona** %4, align 8
  %136 = call i32 @arizona_init_spk_irqs(%struct.arizona* %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %126
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %2, align 4
  br label %161

141:                                              ; preds = %126
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wm8998_dai, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** @wm8998_dai, align 8
  %146 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %145)
  %147 = call i32 @devm_snd_soc_register_component(%struct.TYPE_15__* %143, i32* @soc_component_dev_wm8998, %struct.TYPE_14__* %144, i32 %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %141
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @dev_err(%struct.TYPE_15__* %152, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %153)
  br label %157

155:                                              ; preds = %141
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %2, align 4
  br label %161

157:                                              ; preds = %150
  %158 = load %struct.arizona*, %struct.arizona** %4, align 8
  %159 = call i32 @arizona_free_spk_irqs(%struct.arizona* %158)
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %157, %155, %139, %40, %19
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.arizona* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm8998_priv* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm8998_priv*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_get_platdata(i32) #1

declare dso_local i32 @arizona_of_get_audio_pdata(%struct.arizona*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @arizona_init_fll(%struct.arizona*, i32, i64, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @arizona_init_dai(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_15__*) #1

declare dso_local i32 @pm_runtime_idle(%struct.TYPE_15__*) #1

declare dso_local i32 @arizona_init_common(%struct.arizona*) #1

declare dso_local i32 @arizona_init_spk_irqs(%struct.arizona*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_15__*, i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @arizona_free_spk_irqs(%struct.arizona*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
