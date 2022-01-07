; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_bus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.adav80x = type { %struct.regmap* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adav80x_component_driver = common dso_local global i32 0, align 4
@adav80x_dais = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adav80x_bus_probe(%struct.device* %0, %struct.regmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.adav80x*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  %7 = load %struct.regmap*, %struct.regmap** %5, align 8
  %8 = call i64 @IS_ERR(%struct.regmap* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.regmap*, %struct.regmap** %5, align 8
  %12 = call i32 @PTR_ERR(%struct.regmap* %11)
  store i32 %12, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.adav80x* @devm_kzalloc(%struct.device* %14, i32 8, i32 %15)
  store %struct.adav80x* %16, %struct.adav80x** %6, align 8
  %17 = load %struct.adav80x*, %struct.adav80x** %6, align 8
  %18 = icmp ne %struct.adav80x* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %13
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.adav80x*, %struct.adav80x** %6, align 8
  %25 = call i32 @dev_set_drvdata(%struct.device* %23, %struct.adav80x* %24)
  %26 = load %struct.regmap*, %struct.regmap** %5, align 8
  %27 = load %struct.adav80x*, %struct.adav80x** %6, align 8
  %28 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %27, i32 0, i32 0
  store %struct.regmap* %26, %struct.regmap** %28, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i32, i32* @adav80x_dais, align 4
  %31 = load i32, i32* @adav80x_dais, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = call i32 @devm_snd_soc_register_component(%struct.device* %29, i32* @adav80x_component_driver, i32 %30, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %22, %19, %10
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.adav80x* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.adav80x*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
