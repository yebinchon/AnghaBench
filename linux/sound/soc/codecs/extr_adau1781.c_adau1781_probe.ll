; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1781.c_adau1781_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1781.c_adau1781_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }

@ADAU1381_FIRMWARE = common dso_local global i8* null, align 8
@ADAU1781_FIRMWARE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@adau1781_component_driver = common dso_local global i32 0, align 4
@adau1781_dai_driver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adau1781_probe(%struct.device* %0, %struct.regmap* %1, i32 %2, void (%struct.device*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.device*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regmap* %1, %struct.regmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store void (%struct.device*)* %3, void (%struct.device*)** %9, align 8
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %17 [
    i32 129, label %13
    i32 128, label %15
  ]

13:                                               ; preds = %4
  %14 = load i8*, i8** @ADAU1381_FIRMWARE, align 8
  store i8* %14, i8** %10, align 8
  br label %20

15:                                               ; preds = %4
  %16 = load i8*, i8** @ADAU1781_FIRMWARE, align 8
  store i8* %16, i8** %10, align 8
  br label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %34

20:                                               ; preds = %15, %13
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.regmap*, %struct.regmap** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load void (%struct.device*)*, void (%struct.device*)** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @adau17x1_probe(%struct.device* %21, %struct.regmap* %22, i32 %23, void (%struct.device*)* %24, i8* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %34

31:                                               ; preds = %20
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 @devm_snd_soc_register_component(%struct.device* %32, i32* @adau1781_component_driver, i32* @adau1781_dai_driver, i32 1)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %29, %17
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @adau17x1_probe(%struct.device*, %struct.regmap*, i32, void (%struct.device*)*, i8*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
