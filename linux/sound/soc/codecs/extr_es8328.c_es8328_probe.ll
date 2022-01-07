; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328.c_es8328_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328.c_es8328_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.es8328_priv = type { %struct.TYPE_3__*, %struct.regmap* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@supply_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"unable to get regulators\0A\00", align 1
@es8328_component_driver = common dso_local global i32 0, align 4
@es8328_dai = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @es8328_probe(%struct.device* %0, %struct.regmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.es8328_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  %9 = load %struct.regmap*, %struct.regmap** %5, align 8
  %10 = call i64 @IS_ERR(%struct.regmap* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.regmap*, %struct.regmap** %5, align 8
  %14 = call i32 @PTR_ERR(%struct.regmap* %13)
  store i32 %14, i32* %3, align 4
  br label %73

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.es8328_priv* @devm_kzalloc(%struct.device* %16, i32 16, i32 %17)
  store %struct.es8328_priv* %18, %struct.es8328_priv** %6, align 8
  %19 = load %struct.es8328_priv*, %struct.es8328_priv** %6, align 8
  %20 = icmp eq %struct.es8328_priv* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %73

24:                                               ; preds = %15
  %25 = load %struct.regmap*, %struct.regmap** %5, align 8
  %26 = load %struct.es8328_priv*, %struct.es8328_priv** %6, align 8
  %27 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %26, i32 0, i32 1
  store %struct.regmap* %25, %struct.regmap** %27, align 8
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %48, %24
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.es8328_priv*, %struct.es8328_priv** %6, align 8
  %31 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %32)
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = load i32*, i32** @supply_names, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.es8328_priv*, %struct.es8328_priv** %6, align 8
  %42 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %40, i32* %47, align 4
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %28

51:                                               ; preds = %28
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.es8328_priv*, %struct.es8328_priv** %6, align 8
  %54 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %55)
  %57 = load %struct.es8328_priv*, %struct.es8328_priv** %6, align 8
  %58 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = call i32 @devm_regulator_bulk_get(%struct.device* %52, i32 %56, %struct.TYPE_3__* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %73

67:                                               ; preds = %51
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.es8328_priv*, %struct.es8328_priv** %6, align 8
  %70 = call i32 @dev_set_drvdata(%struct.device* %68, %struct.es8328_priv* %69)
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i32 @devm_snd_soc_register_component(%struct.device* %71, i32* @es8328_component_driver, i32* @es8328_dai, i32 1)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %67, %63, %21, %12
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.es8328_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.es8328_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
