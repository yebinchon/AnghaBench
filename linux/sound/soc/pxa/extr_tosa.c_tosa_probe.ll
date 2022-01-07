; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_tosa.c_tosa_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_tosa.c_tosa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32* }
%struct.platform_device = type { i32 }

@tosa = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@TOSA_GPIO_L_MUTE = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"snd_soc_register_card() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tosa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tosa_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.snd_soc_card* @tosa, %struct.snd_soc_card** %4, align 8
  %6 = load i32, i32* @TOSA_GPIO_L_MUTE, align 4
  %7 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %8 = call i32 @gpio_request_one(i32 %6, i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %17 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %21 = call i32 @devm_snd_soc_register_card(i32* %19, %struct.snd_soc_card* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @TOSA_GPIO_L_MUTE, align 4
  %30 = call i32 @gpio_free(i32 %29)
  br label %31

31:                                               ; preds = %24, %13
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @gpio_request_one(i32, i32, i8*) #1

declare dso_local i32 @devm_snd_soc_register_card(i32*, %struct.snd_soc_card*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
