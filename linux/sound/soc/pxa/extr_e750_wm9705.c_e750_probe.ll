; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_e750_wm9705.c_e750_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_e750_wm9705.c_e750_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32* }
%struct.platform_device = type { i32 }

@e750 = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@e750_audio_gpios = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"snd_soc_register_card() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @e750_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e750_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.snd_soc_card* @e750, %struct.snd_soc_card** %4, align 8
  %6 = load i32, i32* @e750_audio_gpios, align 4
  %7 = load i32, i32* @e750_audio_gpios, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = call i32 @gpio_request_array(i32 %6, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %22 = call i32 @devm_snd_soc_register_card(i32* %20, %struct.snd_soc_card* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %14
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @e750_audio_gpios, align 4
  %31 = load i32, i32* @e750_audio_gpios, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = call i32 @gpio_free_array(i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %25, %14
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @gpio_request_array(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_snd_soc_register_card(i32*, %struct.snd_soc_card*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gpio_free_array(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
