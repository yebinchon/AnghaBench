; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_smartq_wm8987.c_smartq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_smartq_wm8987.c_smartq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gpio_desc = type { i32 }

@snd_soc_smartq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"amplifiers shutdown\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to register GPK12\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to register card\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @smartq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smartq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.gpio_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call i32 @platform_set_drvdata(%struct.platform_device* %5, i32* @snd_soc_smartq)
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %10 = call %struct.gpio_desc* @devm_gpiod_get(i32* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %9)
  store %struct.gpio_desc* %10, %struct.gpio_desc** %3, align 8
  %11 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %12 = call i64 @IS_ERR(%struct.gpio_desc* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %19 = call i32 @PTR_ERR(%struct.gpio_desc* %18)
  store i32 %19, i32* %4, align 4
  br label %33

20:                                               ; preds = %1
  %21 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %22 = call i32 @snd_soc_card_set_drvdata(i32* @snd_soc_smartq, %struct.gpio_desc* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @devm_snd_soc_register_card(i32* %24, i32* @snd_soc_smartq)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %20
  br label %33

33:                                               ; preds = %32, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(i32*, %struct.gpio_desc*) #1

declare dso_local i32 @devm_snd_soc_register_card(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
