; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4642.c_ak4642_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4642.c_ak4642_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.ak4642_drvdata = type { i32 }
%struct.regmap = type { i32 }
%struct.ak4642_priv = type { %struct.regmap*, %struct.ak4642_drvdata* }
%struct.clk = type opaque
%struct.of_device_id = type { %struct.ak4642_drvdata* }

@ak4642_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown device type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@soc_component_dev_ak4642 = common dso_local global i32 0, align 4
@ak4642_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ak4642_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4642_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.ak4642_drvdata*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca %struct.ak4642_priv*, align 8
  %11 = alloca %struct.clk*, align 8
  %12 = alloca %struct.of_device_id*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %7, align 8
  store %struct.ak4642_drvdata* null, %struct.ak4642_drvdata** %8, align 8
  store %struct.clk* null, %struct.clk** %11, align 8
  %18 = load %struct.device_node*, %struct.device_node** %7, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call %struct.regmap* @ak4642_of_parse_mcko(%struct.device* %21)
  %23 = bitcast %struct.regmap* %22 to %struct.clk*
  store %struct.clk* %23, %struct.clk** %11, align 8
  %24 = load %struct.clk*, %struct.clk** %11, align 8
  %25 = bitcast %struct.clk* %24 to %struct.regmap*
  %26 = call i64 @IS_ERR(%struct.regmap* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store %struct.clk* null, %struct.clk** %11, align 8
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i32, i32* @ak4642_of_match, align 4
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call %struct.of_device_id* @of_match_device(i32 %30, %struct.device* %31)
  store %struct.of_device_id* %32, %struct.of_device_id** %12, align 8
  %33 = load %struct.of_device_id*, %struct.of_device_id** %12, align 8
  %34 = icmp ne %struct.of_device_id* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.of_device_id*, %struct.of_device_id** %12, align 8
  %37 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %36, i32 0, i32 0
  %38 = load %struct.ak4642_drvdata*, %struct.ak4642_drvdata** %37, align 8
  store %struct.ak4642_drvdata* %38, %struct.ak4642_drvdata** %8, align 8
  br label %39

39:                                               ; preds = %35, %29
  br label %45

40:                                               ; preds = %2
  %41 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %42 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.ak4642_drvdata*
  store %struct.ak4642_drvdata* %44, %struct.ak4642_drvdata** %8, align 8
  br label %45

45:                                               ; preds = %40, %39
  %46 = load %struct.ak4642_drvdata*, %struct.ak4642_drvdata** %8, align 8
  %47 = icmp ne %struct.ak4642_drvdata* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %87

53:                                               ; preds = %45
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.ak4642_priv* @devm_kzalloc(%struct.device* %54, i32 16, i32 %55)
  store %struct.ak4642_priv* %56, %struct.ak4642_priv** %10, align 8
  %57 = load %struct.ak4642_priv*, %struct.ak4642_priv** %10, align 8
  %58 = icmp ne %struct.ak4642_priv* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %87

62:                                               ; preds = %53
  %63 = load %struct.ak4642_drvdata*, %struct.ak4642_drvdata** %8, align 8
  %64 = load %struct.ak4642_priv*, %struct.ak4642_priv** %10, align 8
  %65 = getelementptr inbounds %struct.ak4642_priv, %struct.ak4642_priv* %64, i32 0, i32 1
  store %struct.ak4642_drvdata* %63, %struct.ak4642_drvdata** %65, align 8
  %66 = load %struct.clk*, %struct.clk** %11, align 8
  %67 = bitcast %struct.clk* %66 to %struct.regmap*
  %68 = load %struct.ak4642_priv*, %struct.ak4642_priv** %10, align 8
  %69 = getelementptr inbounds %struct.ak4642_priv, %struct.ak4642_priv* %68, i32 0, i32 0
  store %struct.regmap* %67, %struct.regmap** %69, align 8
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = load %struct.ak4642_priv*, %struct.ak4642_priv** %10, align 8
  %72 = call i32 @i2c_set_clientdata(%struct.i2c_client* %70, %struct.ak4642_priv* %71)
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = load %struct.ak4642_drvdata*, %struct.ak4642_drvdata** %8, align 8
  %75 = getelementptr inbounds %struct.ak4642_drvdata, %struct.ak4642_drvdata* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %73, i32 %76)
  store %struct.regmap* %77, %struct.regmap** %9, align 8
  %78 = load %struct.regmap*, %struct.regmap** %9, align 8
  %79 = call i64 @IS_ERR(%struct.regmap* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %62
  %82 = load %struct.regmap*, %struct.regmap** %9, align 8
  %83 = call i32 @PTR_ERR(%struct.regmap* %82)
  store i32 %83, i32* %3, align 4
  br label %87

84:                                               ; preds = %62
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = call i32 @devm_snd_soc_register_component(%struct.device* %85, i32* @soc_component_dev_ak4642, i32* @ak4642_dai, i32 1)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %84, %81, %59, %48
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.regmap* @ak4642_of_parse_mcko(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.ak4642_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ak4642_priv*) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
