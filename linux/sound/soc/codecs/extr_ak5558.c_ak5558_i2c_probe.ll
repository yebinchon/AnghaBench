; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak5558.c_ak5558_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak5558.c_ak5558_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ak5558_priv = type { i32, %struct.i2c_client*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ak5558_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@soc_codec_dev_ak5558 = common dso_local global i32 0, align 4
@ak5558_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ak5558_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak5558_i2c_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ak5558_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ak5558_priv* @devm_kzalloc(i32* %7, i32 24, i32 %8)
  store %struct.ak5558_priv* %9, %struct.ak5558_priv** %4, align 8
  %10 = load %struct.ak5558_priv*, %struct.ak5558_priv** %4, align 8
  %11 = icmp ne %struct.ak5558_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %65

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %16, i32* @ak5558_regmap)
  %18 = load %struct.ak5558_priv*, %struct.ak5558_priv** %4, align 8
  %19 = getelementptr inbounds %struct.ak5558_priv, %struct.ak5558_priv* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ak5558_priv*, %struct.ak5558_priv** %4, align 8
  %21 = getelementptr inbounds %struct.ak5558_priv, %struct.ak5558_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.ak5558_priv*, %struct.ak5558_priv** %4, align 8
  %27 = getelementptr inbounds %struct.ak5558_priv, %struct.ak5558_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @PTR_ERR(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %65

30:                                               ; preds = %15
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = load %struct.ak5558_priv*, %struct.ak5558_priv** %4, align 8
  %33 = call i32 @i2c_set_clientdata(%struct.i2c_client* %31, %struct.ak5558_priv* %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = load %struct.ak5558_priv*, %struct.ak5558_priv** %4, align 8
  %36 = getelementptr inbounds %struct.ak5558_priv, %struct.ak5558_priv* %35, i32 0, i32 1
  store %struct.i2c_client* %34, %struct.i2c_client** %36, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %40 = call i32 @devm_gpiod_get_optional(i32* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.ak5558_priv*, %struct.ak5558_priv** %4, align 8
  %42 = getelementptr inbounds %struct.ak5558_priv, %struct.ak5558_priv* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ak5558_priv*, %struct.ak5558_priv** %4, align 8
  %44 = getelementptr inbounds %struct.ak5558_priv, %struct.ak5558_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %30
  %49 = load %struct.ak5558_priv*, %struct.ak5558_priv** %4, align 8
  %50 = getelementptr inbounds %struct.ak5558_priv, %struct.ak5558_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %65

53:                                               ; preds = %30
  %54 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = call i32 @devm_snd_soc_register_component(i32* %55, i32* @soc_codec_dev_ak5558, i32* @ak5558_dai, i32 1)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %65

61:                                               ; preds = %53
  %62 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = call i32 @pm_runtime_enable(i32* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %59, %48, %25, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.ak5558_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ak5558_priv*) #1

declare dso_local i32 @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
