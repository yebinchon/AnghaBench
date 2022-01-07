; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4613.c_ak4613_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4613.c_ak4613_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.regmap_config = type { i32 }
%struct.regmap = type { i32 }
%struct.ak4613_priv = type { i32, i32, i64, i64, i32* }
%struct.of_device_id = type { %struct.regmap_config* }

@ak4613_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ak4613_dummy_write = common dso_local global i32 0, align 4
@soc_component_dev_ak4613 = common dso_local global i32 0, align 4
@ak4613_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ak4613_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4613_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.regmap_config*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca %struct.ak4613_priv*, align 8
  %11 = alloca %struct.of_device_id*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %7, align 8
  store %struct.regmap_config* null, %struct.regmap_config** %8, align 8
  %17 = load %struct.device_node*, %struct.device_node** %7, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load i32, i32* @ak4613_of_match, align 4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call %struct.of_device_id* @of_match_device(i32 %20, %struct.device* %21)
  store %struct.of_device_id* %22, %struct.of_device_id** %11, align 8
  %23 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %24 = icmp ne %struct.of_device_id* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %27 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %26, i32 0, i32 0
  %28 = load %struct.regmap_config*, %struct.regmap_config** %27, align 8
  store %struct.regmap_config* %28, %struct.regmap_config** %8, align 8
  br label %29

29:                                               ; preds = %25, %19
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.regmap_config*
  store %struct.regmap_config* %34, %struct.regmap_config** %8, align 8
  br label %35

35:                                               ; preds = %30, %29
  %36 = load %struct.regmap_config*, %struct.regmap_config** %8, align 8
  %37 = icmp ne %struct.regmap_config* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %82

41:                                               ; preds = %35
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.ak4613_priv* @devm_kzalloc(%struct.device* %42, i32 32, i32 %43)
  store %struct.ak4613_priv* %44, %struct.ak4613_priv** %10, align 8
  %45 = load %struct.ak4613_priv*, %struct.ak4613_priv** %10, align 8
  %46 = icmp ne %struct.ak4613_priv* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %82

50:                                               ; preds = %41
  %51 = load %struct.ak4613_priv*, %struct.ak4613_priv** %10, align 8
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = call i32 @ak4613_parse_of(%struct.ak4613_priv* %51, %struct.device* %52)
  %54 = load %struct.ak4613_priv*, %struct.ak4613_priv** %10, align 8
  %55 = getelementptr inbounds %struct.ak4613_priv, %struct.ak4613_priv* %54, i32 0, i32 4
  store i32* null, i32** %55, align 8
  %56 = load %struct.ak4613_priv*, %struct.ak4613_priv** %10, align 8
  %57 = getelementptr inbounds %struct.ak4613_priv, %struct.ak4613_priv* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.ak4613_priv*, %struct.ak4613_priv** %10, align 8
  %59 = getelementptr inbounds %struct.ak4613_priv, %struct.ak4613_priv* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.ak4613_priv*, %struct.ak4613_priv** %10, align 8
  %61 = getelementptr inbounds %struct.ak4613_priv, %struct.ak4613_priv* %60, i32 0, i32 1
  %62 = load i32, i32* @ak4613_dummy_write, align 4
  %63 = call i32 @INIT_WORK(i32* %61, i32 %62)
  %64 = load %struct.ak4613_priv*, %struct.ak4613_priv** %10, align 8
  %65 = getelementptr inbounds %struct.ak4613_priv, %struct.ak4613_priv* %64, i32 0, i32 0
  %66 = call i32 @mutex_init(i32* %65)
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = load %struct.ak4613_priv*, %struct.ak4613_priv** %10, align 8
  %69 = call i32 @i2c_set_clientdata(%struct.i2c_client* %67, %struct.ak4613_priv* %68)
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = load %struct.regmap_config*, %struct.regmap_config** %8, align 8
  %72 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %70, %struct.regmap_config* %71)
  store %struct.regmap* %72, %struct.regmap** %9, align 8
  %73 = load %struct.regmap*, %struct.regmap** %9, align 8
  %74 = call i64 @IS_ERR(%struct.regmap* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %50
  %77 = load %struct.regmap*, %struct.regmap** %9, align 8
  %78 = call i32 @PTR_ERR(%struct.regmap* %77)
  store i32 %78, i32* %3, align 4
  br label %82

79:                                               ; preds = %50
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = call i32 @devm_snd_soc_register_component(%struct.device* %80, i32* @soc_component_dev_ak4613, i32* @ak4613_dai, i32 1)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %76, %47, %38
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.ak4613_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ak4613_parse_of(%struct.ak4613_priv*, %struct.device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ak4613_priv*) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
