; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.aic3x_priv = type { i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__*, %struct.TYPE_11__*, %struct.snd_soc_component* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_12__, %struct.aic3x_priv* }
%struct.TYPE_12__ = type { i32 }

@aic3x_regulator_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to request regulator notifier: %d\0A\00", align 1
@AIC3X_GPIO1_REG = common dso_local global i32 0, align 4
@AIC3X_GPIO2_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"GPIO functionality is not supported on tlv320aic3104\0A\00", align 1
@aic3x_extra_snd_controls = common dso_local global %struct.TYPE_11__* null, align 8
@aic3x_mono_controls = common dso_local global %struct.TYPE_11__* null, align 8
@aic3x_classd_amp_gain_ctrl = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@MICBIAS_CTRL = common dso_local global i32 0, align 4
@MICBIAS_LEVEL_MASK = common dso_local global i32 0, align 4
@MICBIAS_LEVEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @aic3x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic3x_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.aic3x_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.aic3x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.aic3x_priv* %8, %struct.aic3x_priv** %4, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %11 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %10, i32 0, i32 6
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %11, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %63, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %15 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %14, i32 0, i32 5
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %16)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %12
  %20 = load i32, i32* @aic3x_regulator_event, align 4
  %21 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %22 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %21, i32 0, i32 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i32 %20, i32* %28, align 8
  %29 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %30 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %31 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %30, i32 0, i32 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  store %struct.aic3x_priv* %29, %struct.aic3x_priv** %36, align 8
  %37 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %38 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %37, i32 0, i32 5
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %46 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %45, i32 0, i32 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = call i32 @devm_regulator_register_notifier(i32 %44, %struct.TYPE_12__* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %19
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %57 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %155

62:                                               ; preds = %19
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %12

66:                                               ; preds = %12
  %67 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %68 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @regcache_mark_dirty(i32 %69)
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %72 = call i32 @aic3x_init(%struct.snd_soc_component* %71)
  %73 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %74 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = icmp ne %struct.TYPE_10__* %75, null
  br i1 %76, label %77, label %113

77:                                               ; preds = %66
  %78 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %79 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 130
  br i1 %81, label %82, label %107

82:                                               ; preds = %77
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %84 = load i32, i32* @AIC3X_GPIO1_REG, align 4
  %85 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %86 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %85, i32 0, i32 2
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 15
  %93 = shl i32 %92, 4
  %94 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %83, i32 %84, i32 %93)
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %96 = load i32, i32* @AIC3X_GPIO2_REG, align 4
  %97 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %98 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %97, i32 0, i32 2
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 15
  %105 = shl i32 %104, 4
  %106 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %95, i32 %96, i32 %105)
  br label %112

107:                                              ; preds = %77
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %109 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_warn(i32 %110, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %112

112:                                              ; preds = %107, %82
  br label %113

113:                                              ; preds = %112, %66
  %114 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %115 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  switch i32 %116, label %137 [
    i32 128, label %117
    i32 129, label %117
    i32 131, label %128
    i32 130, label %136
  ]

117:                                              ; preds = %113, %113
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** @aic3x_extra_snd_controls, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** @aic3x_extra_snd_controls, align 8
  %121 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %120)
  %122 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %118, %struct.TYPE_11__* %119, i32 %121)
  %123 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** @aic3x_mono_controls, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** @aic3x_mono_controls, align 8
  %126 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %125)
  %127 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %123, %struct.TYPE_11__* %124, i32 %126)
  br label %137

128:                                              ; preds = %113
  %129 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** @aic3x_extra_snd_controls, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** @aic3x_extra_snd_controls, align 8
  %132 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %131)
  %133 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %129, %struct.TYPE_11__* %130, i32 %132)
  %134 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %135 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %134, %struct.TYPE_11__* @aic3x_classd_amp_gain_ctrl, i32 1)
  br label %137

136:                                              ; preds = %113
  br label %137

137:                                              ; preds = %113, %136, %128, %117
  %138 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %139 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %152 [
    i32 135, label %141
    i32 134, label %141
    i32 133, label %141
    i32 132, label %151
  ]

141:                                              ; preds = %137, %137, %137
  %142 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %143 = load i32, i32* @MICBIAS_CTRL, align 4
  %144 = load i32, i32* @MICBIAS_LEVEL_MASK, align 4
  %145 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %146 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @MICBIAS_LEVEL_SHIFT, align 4
  %149 = shl i32 %147, %148
  %150 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %142, i32 %143, i32 %144, i32 %149)
  br label %152

151:                                              ; preds = %137
  br label %152

152:                                              ; preds = %137, %151, %141
  %153 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %154 = call i32 @aic3x_add_widgets(%struct.snd_soc_component* %153)
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %152, %55
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.aic3x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @devm_regulator_register_notifier(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @aic3x_init(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @aic3x_add_widgets(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
