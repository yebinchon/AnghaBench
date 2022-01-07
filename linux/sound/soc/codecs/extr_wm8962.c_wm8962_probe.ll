; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.wm8962_priv = type { %struct.TYPE_3__*, %struct.TYPE_4__*, %struct.snd_soc_component* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@wm8962_regulator_event_0 = common dso_local global i32 0, align 4
@wm8962_regulator_event_1 = common dso_local global i32 0, align 4
@wm8962_regulator_event_2 = common dso_local global i32 0, align 4
@wm8962_regulator_event_3 = common dso_local global i32 0, align 4
@wm8962_regulator_event_4 = common dso_local global i32 0, align 4
@wm8962_regulator_event_5 = common dso_local global i32 0, align 4
@wm8962_regulator_event_6 = common dso_local global i32 0, align 4
@wm8962_regulator_event_7 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to register regulator notifier: %d\0A\00", align 1
@WM8962_MAX_GPIO = common dso_local global i32 0, align 4
@WM8962_GPIO_BASE = common dso_local global i64 0, align 8
@WM8962_GP2_FN_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"DMIC not in use, disabling\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"DMICDAT\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"DMIC GPIOs partially configured\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8962_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8962_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.snd_soc_dapm_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8962_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %10 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %9)
  store %struct.snd_soc_dapm_context* %10, %struct.snd_soc_dapm_context** %3, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %12 = call %struct.wm8962_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.wm8962_priv* %12, %struct.wm8962_priv** %5, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %14 = load %struct.wm8962_priv*, %struct.wm8962_priv** %5, align 8
  %15 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %14, i32 0, i32 2
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %15, align 8
  %16 = load i32, i32* @wm8962_regulator_event_0, align 4
  %17 = load %struct.wm8962_priv*, %struct.wm8962_priv** %5, align 8
  %18 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %16, i32* %21, align 4
  %22 = load i32, i32* @wm8962_regulator_event_1, align 4
  %23 = load %struct.wm8962_priv*, %struct.wm8962_priv** %5, align 8
  %24 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %22, i32* %27, align 4
  %28 = load i32, i32* @wm8962_regulator_event_2, align 4
  %29 = load %struct.wm8962_priv*, %struct.wm8962_priv** %5, align 8
  %30 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %28, i32* %33, align 4
  %34 = load i32, i32* @wm8962_regulator_event_3, align 4
  %35 = load %struct.wm8962_priv*, %struct.wm8962_priv** %5, align 8
  %36 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %34, i32* %39, align 4
  %40 = load i32, i32* @wm8962_regulator_event_4, align 4
  %41 = load %struct.wm8962_priv*, %struct.wm8962_priv** %5, align 8
  %42 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 4
  %46 = load i32, i32* @wm8962_regulator_event_5, align 4
  %47 = load %struct.wm8962_priv*, %struct.wm8962_priv** %5, align 8
  %48 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 5
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* @wm8962_regulator_event_6, align 4
  %53 = load %struct.wm8962_priv*, %struct.wm8962_priv** %5, align 8
  %54 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 6
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 4
  %58 = load i32, i32* @wm8962_regulator_event_7, align 4
  %59 = load %struct.wm8962_priv*, %struct.wm8962_priv** %5, align 8
  %60 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 7
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 4
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %96, %1
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.wm8962_priv*, %struct.wm8962_priv** %5, align 8
  %67 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %68)
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %64
  %72 = load %struct.wm8962_priv*, %struct.wm8962_priv** %5, align 8
  %73 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.wm8962_priv*, %struct.wm8962_priv** %5, align 8
  %81 = getelementptr inbounds %struct.wm8962_priv, %struct.wm8962_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = call i32 @devm_regulator_register_notifier(i32 %79, %struct.TYPE_3__* %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %71
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %91 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %89, %71
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %64

99:                                               ; preds = %64
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %101 = call i32 @wm8962_add_widgets(%struct.snd_soc_component* %100)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %119, %99
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @WM8962_MAX_GPIO, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %108 = load i64, i64* @WM8962_GPIO_BASE, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %107, i64 %111)
  %113 = load i32, i32* @WM8962_GP2_FN_MASK, align 4
  %114 = and i32 %112, %113
  switch i32 %114, label %117 [
    i32 129, label %115
    i32 128, label %116
  ]

115:                                              ; preds = %106
  store i32 1, i32* %7, align 4
  br label %118

116:                                              ; preds = %106
  store i32 1, i32* %8, align 4
  br label %118

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117, %116, %115
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %102

122:                                              ; preds = %102
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %125, %122
  %129 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %130 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dev_dbg(i32 %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %133 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %134 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_dapm_context* %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %135

135:                                              ; preds = %128, %125
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %141 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @dev_warn(i32 %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %144

144:                                              ; preds = %139, %135
  %145 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %146 = call i32 @wm8962_init_beep(%struct.snd_soc_component* %145)
  %147 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %148 = call i32 @wm8962_init_gpio(%struct.snd_soc_component* %147)
  ret i32 0
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.wm8962_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @devm_regulator_register_notifier(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @wm8962_add_widgets(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @wm8962_init_beep(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8962_init_gpio(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
