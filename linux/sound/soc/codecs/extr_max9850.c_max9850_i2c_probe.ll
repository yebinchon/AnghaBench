; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9850.c_max9850_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9850.c_max9850_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max9850_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max9850_regmap = common dso_local global i32 0, align 4
@soc_component_dev_max9850 = common dso_local global i32 0, align 4
@max9850_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max9850_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max9850_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max9850_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.max9850_priv* @devm_kzalloc(i32* %9, i32 4, i32 %10)
  store %struct.max9850_priv* %11, %struct.max9850_priv** %6, align 8
  %12 = load %struct.max9850_priv*, %struct.max9850_priv** %6, align 8
  %13 = icmp eq %struct.max9850_priv* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %18, i32* @max9850_regmap)
  %20 = load %struct.max9850_priv*, %struct.max9850_priv** %6, align 8
  %21 = getelementptr inbounds %struct.max9850_priv, %struct.max9850_priv* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.max9850_priv*, %struct.max9850_priv** %6, align 8
  %23 = getelementptr inbounds %struct.max9850_priv, %struct.max9850_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.max9850_priv*, %struct.max9850_priv** %6, align 8
  %29 = getelementptr inbounds %struct.max9850_priv, %struct.max9850_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %40

32:                                               ; preds = %17
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.max9850_priv*, %struct.max9850_priv** %6, align 8
  %35 = call i32 @i2c_set_clientdata(%struct.i2c_client* %33, %struct.max9850_priv* %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @devm_snd_soc_register_component(i32* %37, i32* @soc_component_dev_max9850, i32* @max9850_dai, i32 1)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %32, %27, %14
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.max9850_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max9850_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
