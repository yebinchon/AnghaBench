; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98357a.c_max98357a_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98357a.c_max98357a_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.max98357a_priv = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sdmode\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"sdmode-delay\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"no optional property 'sdmode-delay' found, default: no delay\0A\00", align 1
@max98357a_component_driver = common dso_local global i32 0, align 4
@max98357a_dai_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max98357a_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98357a_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max98357a_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.max98357a_priv* @devm_kzalloc(i32* %7, i32 16, i32 %8)
  store %struct.max98357a_priv* %9, %struct.max98357a_priv** %4, align 8
  %10 = load %struct.max98357a_priv*, %struct.max98357a_priv** %4, align 8
  %11 = icmp ne %struct.max98357a_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %54

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %19 = call i32 @devm_gpiod_get_optional(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.max98357a_priv*, %struct.max98357a_priv** %4, align 8
  %21 = getelementptr inbounds %struct.max98357a_priv, %struct.max98357a_priv* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.max98357a_priv*, %struct.max98357a_priv** %4, align 8
  %23 = getelementptr inbounds %struct.max98357a_priv, %struct.max98357a_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load %struct.max98357a_priv*, %struct.max98357a_priv** %4, align 8
  %29 = getelementptr inbounds %struct.max98357a_priv, %struct.max98357a_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %54

32:                                               ; preds = %15
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.max98357a_priv*, %struct.max98357a_priv** %4, align 8
  %36 = getelementptr inbounds %struct.max98357a_priv, %struct.max98357a_priv* %35, i32 0, i32 0
  %37 = call i32 @device_property_read_u32(i32* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.max98357a_priv*, %struct.max98357a_priv** %4, align 8
  %42 = getelementptr inbounds %struct.max98357a_priv, %struct.max98357a_priv* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_dbg(i32* %44, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %40, %32
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.max98357a_priv*, %struct.max98357a_priv** %4, align 8
  %50 = call i32 @dev_set_drvdata(i32* %48, %struct.max98357a_priv* %49)
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @devm_snd_soc_register_component(i32* %52, i32* @max98357a_component_driver, i32* @max98357a_dai_driver, i32 1)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %46, %27, %12
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.max98357a_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @device_property_read_u32(i32*, i8*, i64*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.max98357a_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
