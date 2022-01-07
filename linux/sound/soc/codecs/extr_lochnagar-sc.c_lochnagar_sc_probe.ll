; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_lochnagar-sc.c_lochnagar_sc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_lochnagar-sc.c_lochnagar_sc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lochnagar_sc_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to get MCLK: %d\0A\00", align 1
@lochnagar_sc_driver = common dso_local global i32 0, align 4
@lochnagar_sc_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lochnagar_sc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lochnagar_sc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lochnagar_sc_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.lochnagar_sc_priv* @devm_kzalloc(i32* %7, i32 4, i32 %8)
  store %struct.lochnagar_sc_priv* %9, %struct.lochnagar_sc_priv** %4, align 8
  %10 = load %struct.lochnagar_sc_priv*, %struct.lochnagar_sc_priv** %4, align 8
  %11 = icmp ne %struct.lochnagar_sc_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @devm_clk_get(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.lochnagar_sc_priv*, %struct.lochnagar_sc_priv** %4, align 8
  %20 = getelementptr inbounds %struct.lochnagar_sc_priv, %struct.lochnagar_sc_priv* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.lochnagar_sc_priv*, %struct.lochnagar_sc_priv** %4, align 8
  %22 = getelementptr inbounds %struct.lochnagar_sc_priv, %struct.lochnagar_sc_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %15
  %27 = load %struct.lochnagar_sc_priv*, %struct.lochnagar_sc_priv** %4, align 8
  %28 = getelementptr inbounds %struct.lochnagar_sc_priv, %struct.lochnagar_sc_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PTR_ERR(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %46

36:                                               ; preds = %15
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load %struct.lochnagar_sc_priv*, %struct.lochnagar_sc_priv** %4, align 8
  %39 = call i32 @platform_set_drvdata(%struct.platform_device* %37, %struct.lochnagar_sc_priv* %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i32, i32* @lochnagar_sc_dai, align 4
  %43 = load i32, i32* @lochnagar_sc_dai, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = call i32 @devm_snd_soc_register_component(i32* %41, i32* @lochnagar_sc_driver, i32 %42, i32 %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %36, %26, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.lochnagar_sc_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lochnagar_sc_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
