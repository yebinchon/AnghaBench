; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da732x.c_da732x_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da732x.c_da732x_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.da732x_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da732x_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to initialize regmap\0A\00", align 1
@DA732X_REG_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to read ID register: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Revision: %d.%d\0A\00", align 1
@DA732X_ID_MAJOR_MASK = common dso_local global i32 0, align 4
@DA732X_ID_MINOR_MASK = common dso_local global i32 0, align 4
@soc_component_dev_da732x = common dso_local global i32 0, align 4
@da732x_dai = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to register component.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @da732x_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da732x_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.da732x_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.da732x_priv* @devm_kzalloc(i32* %10, i32 4, i32 %11)
  store %struct.da732x_priv* %12, %struct.da732x_priv** %6, align 8
  %13 = load %struct.da732x_priv*, %struct.da732x_priv** %6, align 8
  %14 = icmp ne %struct.da732x_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %78

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.da732x_priv*, %struct.da732x_priv** %6, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.da732x_priv* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %22, i32* @da732x_regmap)
  %24 = load %struct.da732x_priv*, %struct.da732x_priv** %6, align 8
  %25 = getelementptr inbounds %struct.da732x_priv, %struct.da732x_priv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.da732x_priv*, %struct.da732x_priv** %6, align 8
  %27 = getelementptr inbounds %struct.da732x_priv, %struct.da732x_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %18
  %32 = load %struct.da732x_priv*, %struct.da732x_priv** %6, align 8
  %33 = getelementptr inbounds %struct.da732x_priv, %struct.da732x_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %76

39:                                               ; preds = %18
  %40 = load %struct.da732x_priv*, %struct.da732x_priv** %6, align 8
  %41 = getelementptr inbounds %struct.da732x_priv, %struct.da732x_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DA732X_REG_ID, align 4
  %44 = call i32 @regmap_read(i32 %42, i32 %43, i32* %7)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %76

52:                                               ; preds = %39
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @DA732X_ID_MAJOR_MASK, align 4
  %57 = and i32 %55, %56
  %58 = lshr i32 %57, 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @DA732X_ID_MINOR_MASK, align 4
  %61 = and i32 %59, %60
  %62 = call i32 @dev_info(i32* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = load i32, i32* @da732x_dai, align 4
  %66 = load i32, i32* @da732x_dai, align 4
  %67 = call i32 @ARRAY_SIZE(i32 %66)
  %68 = call i32 @devm_snd_soc_register_component(i32* %64, i32* @soc_component_dev_da732x, i32 %65, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %52
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %52
  br label %76

76:                                               ; preds = %75, %47, %31
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %15
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.da732x_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.da732x_priv*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
