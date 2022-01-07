; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8974.c_wm8974_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8974.c_wm8974_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.wm8974_priv = type { i32 }
%struct.regmap = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm8974_regmap = common dso_local global i32 0, align 4
@soc_component_dev_wm8974 = common dso_local global i32 0, align 4
@wm8974_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm8974_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8974_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm8974_priv*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wm8974_priv* @devm_kzalloc(i32* %10, i32 4, i32 %11)
  store %struct.wm8974_priv* %12, %struct.wm8974_priv** %6, align 8
  %13 = load %struct.wm8974_priv*, %struct.wm8974_priv** %6, align 8
  %14 = icmp ne %struct.wm8974_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %35

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.wm8974_priv*, %struct.wm8974_priv** %6, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.wm8974_priv* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %22, i32* @wm8974_regmap)
  store %struct.regmap* %23, %struct.regmap** %7, align 8
  %24 = load %struct.regmap*, %struct.regmap** %7, align 8
  %25 = call i64 @IS_ERR(%struct.regmap* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.regmap*, %struct.regmap** %7, align 8
  %29 = call i32 @PTR_ERR(%struct.regmap* %28)
  store i32 %29, i32* %3, align 4
  br label %35

30:                                               ; preds = %18
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i32 @devm_snd_soc_register_component(i32* %32, i32* @soc_component_dev_wm8974, i32* @wm8974_dai, i32 1)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %27, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.wm8974_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wm8974_priv*) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
