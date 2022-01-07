; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm1789.c_pcm1789_common_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm1789.c_pcm1789_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.pcm1789_private = type { i32, i32, %struct.device*, %struct.regmap* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@pcm1789_work_queue = common dso_local global i32 0, align 4
@soc_component_dev_pcm1789 = common dso_local global i32 0, align 4
@pcm1789_dai = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcm1789_common_init(%struct.device* %0, %struct.regmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.pcm1789_private*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.pcm1789_private* @devm_kzalloc(%struct.device* %7, i32 24, i32 %8)
  store %struct.pcm1789_private* %9, %struct.pcm1789_private** %6, align 8
  %10 = load %struct.pcm1789_private*, %struct.pcm1789_private** %6, align 8
  %11 = icmp ne %struct.pcm1789_private* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.regmap*, %struct.regmap** %5, align 8
  %17 = load %struct.pcm1789_private*, %struct.pcm1789_private** %6, align 8
  %18 = getelementptr inbounds %struct.pcm1789_private, %struct.pcm1789_private* %17, i32 0, i32 3
  store %struct.regmap* %16, %struct.regmap** %18, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.pcm1789_private*, %struct.pcm1789_private** %6, align 8
  %21 = getelementptr inbounds %struct.pcm1789_private, %struct.pcm1789_private* %20, i32 0, i32 2
  store %struct.device* %19, %struct.device** %21, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.pcm1789_private*, %struct.pcm1789_private** %6, align 8
  %24 = call i32 @dev_set_drvdata(%struct.device* %22, %struct.pcm1789_private* %23)
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %27 = call i32 @devm_gpiod_get_optional(%struct.device* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.pcm1789_private*, %struct.pcm1789_private** %6, align 8
  %29 = getelementptr inbounds %struct.pcm1789_private, %struct.pcm1789_private* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.pcm1789_private*, %struct.pcm1789_private** %6, align 8
  %31 = getelementptr inbounds %struct.pcm1789_private, %struct.pcm1789_private* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %15
  %36 = load %struct.pcm1789_private*, %struct.pcm1789_private** %6, align 8
  %37 = getelementptr inbounds %struct.pcm1789_private, %struct.pcm1789_private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %52

40:                                               ; preds = %15
  %41 = load %struct.pcm1789_private*, %struct.pcm1789_private** %6, align 8
  %42 = getelementptr inbounds %struct.pcm1789_private, %struct.pcm1789_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @gpiod_set_value_cansleep(i32 %43, i32 0)
  %45 = call i32 @msleep(i32 300)
  %46 = load %struct.pcm1789_private*, %struct.pcm1789_private** %6, align 8
  %47 = getelementptr inbounds %struct.pcm1789_private, %struct.pcm1789_private* %46, i32 0, i32 0
  %48 = load i32, i32* @pcm1789_work_queue, align 4
  %49 = call i32 @INIT_WORK(i32* %47, i32 %48)
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @devm_snd_soc_register_component(%struct.device* %50, i32* @soc_component_dev_pcm1789, i32* @pcm1789_dai, i32 1)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %40, %35, %12
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.pcm1789_private* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.pcm1789_private*) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
