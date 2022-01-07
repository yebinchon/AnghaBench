; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98088.c_max98088_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98088.c_max98088_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max98088_priv = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max98088_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@soc_component_dev_max98088 = common dso_local global i32 0, align 4
@max98088_dai = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max98088_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98088_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max98088_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.max98088_priv* @devm_kzalloc(%struct.TYPE_4__* %9, i32 16, i32 %10)
  store %struct.max98088_priv* %11, %struct.max98088_priv** %6, align 8
  %12 = load %struct.max98088_priv*, %struct.max98088_priv** %6, align 8
  %13 = icmp eq %struct.max98088_priv* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %78

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %18, i32* @max98088_regmap)
  %20 = load %struct.max98088_priv*, %struct.max98088_priv** %6, align 8
  %21 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.max98088_priv*, %struct.max98088_priv** %6, align 8
  %23 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.max98088_priv*, %struct.max98088_priv** %6, align 8
  %29 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %78

32:                                               ; preds = %17
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = call i32 @devm_clk_get(%struct.TYPE_4__* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.max98088_priv*, %struct.max98088_priv** %6, align 8
  %37 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.max98088_priv*, %struct.max98088_priv** %6, align 8
  %39 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %32
  %44 = load %struct.max98088_priv*, %struct.max98088_priv** %6, align 8
  %45 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PTR_ERR(i32 %46)
  %48 = load i32, i32* @EPROBE_DEFER, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.max98088_priv*, %struct.max98088_priv** %6, align 8
  %53 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @PTR_ERR(i32 %54)
  store i32 %55, i32* %3, align 4
  br label %78

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %32
  %58 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %59 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.max98088_priv*, %struct.max98088_priv** %6, align 8
  %62 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = load %struct.max98088_priv*, %struct.max98088_priv** %6, align 8
  %65 = call i32 @i2c_set_clientdata(%struct.i2c_client* %63, %struct.max98088_priv* %64)
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.max98088_priv*, %struct.max98088_priv** %6, align 8
  %71 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load i32*, i32** @max98088_dai, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = call i32 @devm_snd_soc_register_component(%struct.TYPE_4__* %73, i32* @soc_component_dev_max98088, i32* %75, i32 2)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %57, %51, %27, %14
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.max98088_priv* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max98088_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_4__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
