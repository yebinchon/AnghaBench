; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4271.c_cs4271_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4271.c_cs4271_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.cs4271_private = type { %struct.regmap* }

@soc_component_dev_cs4271 = common dso_local global i32 0, align 4
@cs4271_dai = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs4271_probe(%struct.device* %0, %struct.regmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.cs4271_private*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  %8 = load %struct.regmap*, %struct.regmap** %5, align 8
  %9 = call i64 @IS_ERR(%struct.regmap* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.regmap*, %struct.regmap** %5, align 8
  %13 = call i32 @PTR_ERR(%struct.regmap* %12)
  store i32 %13, i32* %3, align 4
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @cs4271_common_probe(%struct.device* %15, %struct.cs4271_private** %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %30

21:                                               ; preds = %14
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.cs4271_private*, %struct.cs4271_private** %6, align 8
  %24 = call i32 @dev_set_drvdata(%struct.device* %22, %struct.cs4271_private* %23)
  %25 = load %struct.regmap*, %struct.regmap** %5, align 8
  %26 = load %struct.cs4271_private*, %struct.cs4271_private** %6, align 8
  %27 = getelementptr inbounds %struct.cs4271_private, %struct.cs4271_private* %26, i32 0, i32 0
  store %struct.regmap* %25, %struct.regmap** %27, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 @devm_snd_soc_register_component(%struct.device* %28, i32* @soc_component_dev_cs4271, i32* @cs4271_dai, i32 1)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %21, %19, %11
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @cs4271_common_probe(%struct.device*, %struct.cs4271_private**) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.cs4271_private*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
