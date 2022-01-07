; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm179x.c_pcm179x_common_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm179x.c_pcm179x_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.pcm179x_private = type { %struct.regmap* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@soc_component_dev_pcm179x = common dso_local global i32 0, align 4
@pcm179x_dai = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcm179x_common_init(%struct.device* %0, %struct.regmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.pcm179x_private*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.pcm179x_private* @devm_kzalloc(%struct.device* %7, i32 8, i32 %8)
  store %struct.pcm179x_private* %9, %struct.pcm179x_private** %6, align 8
  %10 = load %struct.pcm179x_private*, %struct.pcm179x_private** %6, align 8
  %11 = icmp ne %struct.pcm179x_private* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.regmap*, %struct.regmap** %5, align 8
  %17 = load %struct.pcm179x_private*, %struct.pcm179x_private** %6, align 8
  %18 = getelementptr inbounds %struct.pcm179x_private, %struct.pcm179x_private* %17, i32 0, i32 0
  store %struct.regmap* %16, %struct.regmap** %18, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.pcm179x_private*, %struct.pcm179x_private** %6, align 8
  %21 = call i32 @dev_set_drvdata(%struct.device* %19, %struct.pcm179x_private* %20)
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @devm_snd_soc_register_component(%struct.device* %22, i32* @soc_component_dev_pcm179x, i32* @pcm179x_dai, i32 1)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %15, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.pcm179x_private* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.pcm179x_private*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
