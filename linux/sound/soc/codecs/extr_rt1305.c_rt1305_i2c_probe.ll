; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1305.c_rt1305_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1305.c_rt1305_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.rt1305_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rt1305_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@RT1305_DEVICE_ID = common dso_local global i32 0, align 4
@RT1305_DEVICE_ID_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Device with ID register %x is not rt1305\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@soc_component_dev_rt1305 = common dso_local global i32 0, align 4
@rt1305_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rt1305_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1305_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rt1305_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.rt1305_priv* @devm_kzalloc(i32* %10, i32 4, i32 %11)
  store %struct.rt1305_priv* %12, %struct.rt1305_priv** %6, align 8
  %13 = load %struct.rt1305_priv*, %struct.rt1305_priv** %6, align 8
  %14 = icmp eq %struct.rt1305_priv* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %70

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.rt1305_priv*, %struct.rt1305_priv** %6, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.rt1305_priv* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %22, i32* @rt1305_regmap)
  %24 = load %struct.rt1305_priv*, %struct.rt1305_priv** %6, align 8
  %25 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.rt1305_priv*, %struct.rt1305_priv** %6, align 8
  %27 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %18
  %32 = load %struct.rt1305_priv*, %struct.rt1305_priv** %6, align 8
  %33 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %70

41:                                               ; preds = %18
  %42 = load %struct.rt1305_priv*, %struct.rt1305_priv** %6, align 8
  %43 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RT1305_DEVICE_ID, align 4
  %46 = call i32 @regmap_read(i32 %44, i32 %45, i32* %8)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @RT1305_DEVICE_ID_NUM, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %70

57:                                               ; preds = %41
  %58 = load %struct.rt1305_priv*, %struct.rt1305_priv** %6, align 8
  %59 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rt1305_reset(i32 %60)
  %62 = load %struct.rt1305_priv*, %struct.rt1305_priv** %6, align 8
  %63 = call i32 @rt1305_calibrate(%struct.rt1305_priv* %62)
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load i32, i32* @rt1305_dai, align 4
  %67 = load i32, i32* @rt1305_dai, align 4
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = call i32 @devm_snd_soc_register_component(i32* %65, i32* @soc_component_dev_rt1305, i32 %66, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %57, %50, %31, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.rt1305_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rt1305_priv*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @rt1305_reset(i32) #1

declare dso_local i32 @rt1305_calibrate(%struct.rt1305_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
