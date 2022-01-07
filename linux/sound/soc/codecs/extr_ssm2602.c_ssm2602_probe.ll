; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2602.c_ssm2602_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2602.c_ssm2602_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.ssm2602_priv = type { i32, %struct.regmap* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@soc_component_dev_ssm2602 = common dso_local global i32 0, align 4
@ssm2602_dai = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssm2602_probe(%struct.device* %0, i32 %1, %struct.regmap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.ssm2602_priv*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.regmap* %2, %struct.regmap** %7, align 8
  %9 = load %struct.regmap*, %struct.regmap** %7, align 8
  %10 = call i64 @IS_ERR(%struct.regmap* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.regmap*, %struct.regmap** %7, align 8
  %14 = call i32 @PTR_ERR(%struct.regmap* %13)
  store i32 %14, i32* %4, align 4
  br label %36

15:                                               ; preds = %3
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ssm2602_priv* @devm_kzalloc(%struct.device* %16, i32 16, i32 %17)
  store %struct.ssm2602_priv* %18, %struct.ssm2602_priv** %8, align 8
  %19 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %8, align 8
  %20 = icmp eq %struct.ssm2602_priv* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %36

24:                                               ; preds = %15
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %8, align 8
  %27 = call i32 @dev_set_drvdata(%struct.device* %25, %struct.ssm2602_priv* %26)
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %8, align 8
  %30 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.regmap*, %struct.regmap** %7, align 8
  %32 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %8, align 8
  %33 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %32, i32 0, i32 1
  store %struct.regmap* %31, %struct.regmap** %33, align 8
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = call i32 @devm_snd_soc_register_component(%struct.device* %34, i32* @soc_component_dev_ssm2602, i32* @ssm2602_dai, i32 1)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %24, %21, %12
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.ssm2602_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ssm2602_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
