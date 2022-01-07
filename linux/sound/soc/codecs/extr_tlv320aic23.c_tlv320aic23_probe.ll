; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic23.c_tlv320aic23_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic23.c_tlv320aic23_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.aic23 = type { %struct.regmap* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@soc_component_dev_tlv320aic23 = common dso_local global i32 0, align 4
@tlv320aic23_dai = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlv320aic23_probe(%struct.device* %0, %struct.regmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.aic23*, align 8
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
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.aic23* @devm_kzalloc(%struct.device* %14, i32 8, i32 %15)
  store %struct.aic23* %16, %struct.aic23** %6, align 8
  %17 = load %struct.aic23*, %struct.aic23** %6, align 8
  %18 = icmp eq %struct.aic23* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %13
  %23 = load %struct.regmap*, %struct.regmap** %5, align 8
  %24 = load %struct.aic23*, %struct.aic23** %6, align 8
  %25 = getelementptr inbounds %struct.aic23, %struct.aic23* %24, i32 0, i32 0
  store %struct.regmap* %23, %struct.regmap** %25, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.aic23*, %struct.aic23** %6, align 8
  %28 = call i32 @dev_set_drvdata(%struct.device* %26, %struct.aic23* %27)
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @devm_snd_soc_register_component(%struct.device* %29, i32* @soc_component_dev_tlv320aic23, i32* @tlv320aic23_dai, i32 1)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %22, %19, %10
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.aic23* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.aic23*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
