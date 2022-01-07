; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8770.c_wm8770_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8770.c_wm8770_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.wm8770_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm8770_supply_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@wm8770_regulator_event_0 = common dso_local global i32 0, align 4
@wm8770_regulator_event_1 = common dso_local global i32 0, align 4
@wm8770_regulator_event_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to register regulator notifier: %d\0A\00", align 1
@wm8770_regmap = common dso_local global i32 0, align 4
@soc_component_dev_wm8770 = common dso_local global i32 0, align 4
@wm8770_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @wm8770_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8770_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.wm8770_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.wm8770_priv* @devm_kzalloc(i32* %8, i32 24, i32 %9)
  store %struct.wm8770_priv* %10, %struct.wm8770_priv** %4, align 8
  %11 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %12 = icmp ne %struct.wm8770_priv* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %135

16:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %37, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %20 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %21)
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = load i32*, i32** @wm8770_supply_names, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %31 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %29, i32* %36, align 4
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %17

40:                                               ; preds = %17
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 0
  %43 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %44 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %45)
  %47 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %48 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = call i32 @devm_regulator_bulk_get(i32* %42, i32 %46, %struct.TYPE_5__* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %40
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 0
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %135

59:                                               ; preds = %40
  %60 = load i32, i32* @wm8770_regulator_event_0, align 4
  %61 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %62 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %60, i32* %65, align 4
  %66 = load i32, i32* @wm8770_regulator_event_1, align 4
  %67 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %68 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 4
  %72 = load i32, i32* @wm8770_regulator_event_2, align 4
  %73 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %74 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 4
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %109, %59
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %81 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %80, i32 0, i32 2
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %82)
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %85, label %112

85:                                               ; preds = %78
  %86 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %87 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %86, i32 0, i32 2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %95 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = call i32 @devm_regulator_register_notifier(i32 %93, %struct.TYPE_4__* %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %85
  %104 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %105 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %104, i32 0, i32 0
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %103, %85
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %78

112:                                              ; preds = %78
  %113 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %114 = call i32 @devm_regmap_init_spi(%struct.spi_device* %113, i32* @wm8770_regmap)
  %115 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %116 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %118 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @IS_ERR(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %112
  %123 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %124 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @PTR_ERR(i32 %125)
  store i32 %126, i32* %2, align 4
  br label %135

127:                                              ; preds = %112
  %128 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %129 = load %struct.wm8770_priv*, %struct.wm8770_priv** %4, align 8
  %130 = call i32 @spi_set_drvdata(%struct.spi_device* %128, %struct.wm8770_priv* %129)
  %131 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %132 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %131, i32 0, i32 0
  %133 = call i32 @devm_snd_soc_register_component(i32* %132, i32* @soc_component_dev_wm8770, i32* @wm8770_dai, i32 1)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %127, %122, %53, %13
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.wm8770_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_regulator_register_notifier(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.wm8770_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
