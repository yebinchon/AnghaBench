; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ml26124.c_ml26124_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ml26124.c_ml26124_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ml26124_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ml26124_i2c_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"regmap_init_i2c() failed: %d\0A\00", align 1
@soc_component_dev_ml26124 = common dso_local global i32 0, align 4
@ml26124_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ml26124_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ml26124_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ml26124_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ml26124_priv* @devm_kzalloc(i32* %9, i32 4, i32 %10)
  store %struct.ml26124_priv* %11, %struct.ml26124_priv** %6, align 8
  %12 = load %struct.ml26124_priv*, %struct.ml26124_priv** %6, align 8
  %13 = icmp ne %struct.ml26124_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %44

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.ml26124_priv*, %struct.ml26124_priv** %6, align 8
  %20 = call i32 @i2c_set_clientdata(%struct.i2c_client* %18, %struct.ml26124_priv* %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %21, i32* @ml26124_i2c_regmap)
  %23 = load %struct.ml26124_priv*, %struct.ml26124_priv** %6, align 8
  %24 = getelementptr inbounds %struct.ml26124_priv, %struct.ml26124_priv* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ml26124_priv*, %struct.ml26124_priv** %6, align 8
  %26 = getelementptr inbounds %struct.ml26124_priv, %struct.ml26124_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %17
  %31 = load %struct.ml26124_priv*, %struct.ml26124_priv** %6, align 8
  %32 = getelementptr inbounds %struct.ml26124_priv, %struct.ml26124_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %17
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = call i32 @devm_snd_soc_register_component(i32* %42, i32* @soc_component_dev_ml26124, i32* @ml26124_dai, i32 1)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %30, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.ml26124_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ml26124_priv*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
