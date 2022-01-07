; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4458.c_ak4458_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4458.c_ak4458_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ak4458_priv = type { i32*, i8*, i8*, i8* }
%struct.ak4458_drvdata = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ak4458_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to register CODEC: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ak4458_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4458_i2c_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ak4458_priv*, align 8
  %5 = alloca %struct.ak4458_drvdata*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ak4458_priv* @devm_kzalloc(i32* %8, i32 32, i32 %9)
  store %struct.ak4458_priv* %10, %struct.ak4458_priv** %4, align 8
  %11 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %12 = icmp ne %struct.ak4458_priv* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %101

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %17, i32* @ak4458_regmap)
  %19 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %20 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %22 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %21, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @IS_ERR(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %28 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @PTR_ERR(i8* %29)
  store i32 %30, i32* %2, align 4
  br label %101

31:                                               ; preds = %16
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %34 = call i32 @i2c_set_clientdata(%struct.i2c_client* %32, %struct.ak4458_priv* %33)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %38 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = call %struct.ak4458_drvdata* @of_device_get_match_data(i32* %40)
  store %struct.ak4458_drvdata* %41, %struct.ak4458_drvdata** %5, align 8
  %42 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %43 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %46 = call i8* @devm_gpiod_get_optional(i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %48 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %50 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @IS_ERR(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %31
  %55 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %56 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @PTR_ERR(i8* %57)
  store i32 %58, i32* %2, align 4
  br label %101

59:                                               ; preds = %31
  %60 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %61 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %64 = call i8* @devm_gpiod_get_optional(i32* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %66 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %68 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @IS_ERR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %59
  %73 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %74 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @PTR_ERR(i8* %75)
  store i32 %76, i32* %2, align 4
  br label %101

77:                                               ; preds = %59
  %78 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %79 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.ak4458_drvdata*, %struct.ak4458_drvdata** %5, align 8
  %82 = getelementptr inbounds %struct.ak4458_drvdata, %struct.ak4458_drvdata* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ak4458_drvdata*, %struct.ak4458_drvdata** %5, align 8
  %85 = getelementptr inbounds %struct.ak4458_drvdata, %struct.ak4458_drvdata* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @devm_snd_soc_register_component(i32* %80, i32 %83, i32 %86, i32 1)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %77
  %91 = load %struct.ak4458_priv*, %struct.ak4458_priv** %4, align 8
  %92 = getelementptr inbounds %struct.ak4458_priv, %struct.ak4458_priv* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %101

97:                                               ; preds = %77
  %98 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 0
  %100 = call i32 @pm_runtime_enable(i32* %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %90, %72, %54, %26, %13
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.ak4458_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ak4458_priv*) #1

declare dso_local %struct.ak4458_drvdata* @of_device_get_match_data(i32*) #1

declare dso_local i8* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
