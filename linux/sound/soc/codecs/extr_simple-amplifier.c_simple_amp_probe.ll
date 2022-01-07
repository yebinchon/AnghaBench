; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_simple-amplifier.c_simple_amp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_simple-amplifier.c_simple_amp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.simple_amp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to get 'enable' gpio: %d\00", align 1
@simple_amp_component_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @simple_amp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_amp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.simple_amp*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.simple_amp* @devm_kzalloc(%struct.device* %9, i32 4, i32 %10)
  store %struct.simple_amp* %11, %struct.simple_amp** %5, align 8
  %12 = load %struct.simple_amp*, %struct.simple_amp** %5, align 8
  %13 = icmp eq %struct.simple_amp* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.simple_amp*, %struct.simple_amp** %5, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.simple_amp* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %23 = call i32 @devm_gpiod_get_optional(%struct.device* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.simple_amp*, %struct.simple_amp** %5, align 8
  %25 = getelementptr inbounds %struct.simple_amp, %struct.simple_amp* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.simple_amp*, %struct.simple_amp** %5, align 8
  %27 = getelementptr inbounds %struct.simple_amp, %struct.simple_amp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %17
  %32 = load %struct.simple_amp*, %struct.simple_amp** %5, align 8
  %33 = getelementptr inbounds %struct.simple_amp, %struct.simple_amp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @EPROBE_DEFER, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %31
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %49

46:                                               ; preds = %17
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @devm_snd_soc_register_component(%struct.device* %47, i32* @simple_amp_component_driver, i32* null, i32 0)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %44, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.simple_amp* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.simple_amp*) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
