; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_poodle.c_poodle_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_poodle.c_poodle_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32* }
%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }

@poodle = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@poodle_locomo_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@POODLE_LOCOMO_GPIO_AMP_ON = common dso_local global i32 0, align 4
@POODLE_LOCOMO_GPIO_MUTE_L = common dso_local global i32 0, align 4
@POODLE_LOCOMO_GPIO_MUTE_R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"snd_soc_register_card() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @poodle_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poodle_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store %struct.snd_soc_card* @poodle, %struct.snd_soc_card** %3, align 8
  %5 = load i32, i32* @POODLE_LOCOMO_GPIO_AMP_ON, align 4
  %6 = call i32 @locomo_gpio_set_dir(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @poodle_locomo_device, i32 0, i32 0), i32 %5, i32 0)
  %7 = load i32, i32* @POODLE_LOCOMO_GPIO_MUTE_L, align 4
  %8 = call i32 @locomo_gpio_set_dir(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @poodle_locomo_device, i32 0, i32 0), i32 %7, i32 0)
  %9 = load i32, i32* @POODLE_LOCOMO_GPIO_MUTE_R, align 4
  %10 = call i32 @locomo_gpio_set_dir(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @poodle_locomo_device, i32 0, i32 0), i32 %9, i32 0)
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %18 = call i32 @devm_snd_soc_register_card(i32* %16, %struct.snd_soc_card* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @locomo_gpio_set_dir(i32*, i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_card(i32*, %struct.snd_soc_card*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
