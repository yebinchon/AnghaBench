; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_hx4700.c_hx4700_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_hx4700.c_hx4700_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.platform_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@hx4700_audio_gpios = common dso_local global i32 0, align 4
@snd_soc_card_hx4700 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hx4700_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hx4700_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = call i32 (...) @machine_is_h4700()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %34

10:                                               ; preds = %1
  %11 = load i32, i32* @hx4700_audio_gpios, align 4
  %12 = load i32, i32* @hx4700_audio_gpios, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = call i32 @gpio_request_array(i32 %11, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %10
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  store i32* %21, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snd_soc_card_hx4700, i32 0, i32 0), align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @devm_snd_soc_register_card(i32* %23, %struct.TYPE_3__* @snd_soc_card_hx4700)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i32, i32* @hx4700_audio_gpios, align 4
  %29 = load i32, i32* @hx4700_audio_gpios, align 4
  %30 = call i32 @ARRAY_SIZE(i32 %29)
  %31 = call i32 @gpio_free_array(i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %27, %19
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %17, %7
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @machine_is_h4700(...) #1

declare dso_local i32 @gpio_request_array(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_snd_soc_register_card(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @gpio_free_array(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
