; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_zx_aud96p22.c_aud96p22_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_zx_aud96p22.c_aud96p22_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.aud96p22_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@aud96p22_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to init i2c regmap: %d\0A\00", align 1
@aud96p22_driver = common dso_local global i32 0, align 4
@aud96p22_dai = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @aud96p22_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aud96p22_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.aud96p22_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.aud96p22_priv* @devm_kzalloc(%struct.device* %11, i32 4, i32 %12)
  store %struct.aud96p22_priv* %13, %struct.aud96p22_priv** %7, align 8
  %14 = load %struct.aud96p22_priv*, %struct.aud96p22_priv** %7, align 8
  %15 = icmp eq %struct.aud96p22_priv* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %20, i32* @aud96p22_regmap)
  %22 = load %struct.aud96p22_priv*, %struct.aud96p22_priv** %7, align 8
  %23 = getelementptr inbounds %struct.aud96p22_priv, %struct.aud96p22_priv* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.aud96p22_priv*, %struct.aud96p22_priv** %7, align 8
  %25 = getelementptr inbounds %struct.aud96p22_priv, %struct.aud96p22_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = load %struct.aud96p22_priv*, %struct.aud96p22_priv** %7, align 8
  %31 = getelementptr inbounds %struct.aud96p22_priv, %struct.aud96p22_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PTR_ERR(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %52

38:                                               ; preds = %19
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load %struct.aud96p22_priv*, %struct.aud96p22_priv** %7, align 8
  %41 = call i32 @i2c_set_clientdata(%struct.i2c_client* %39, %struct.aud96p22_priv* %40)
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @devm_snd_soc_register_component(%struct.device* %42, i32* @aud96p22_driver, i32* @aud96p22_dai, i32 1)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %46, %29, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.aud96p22_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.aud96p22_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
