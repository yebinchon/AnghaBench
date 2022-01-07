; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4118.c_ak4118_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4118.c_ak4118_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ak4118_priv = type { i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ak4118_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to get reset: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to get IRQ: %d\0A\00", align 1
@ak4118_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"ak4118-irq\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Fail to request_irq: %d\0A\00", align 1
@soc_component_drv_ak4118 = common dso_local global i32 0, align 4
@ak4118_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ak4118_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4118_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ak4118_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ak4118_priv* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.ak4118_priv* %11, %struct.ak4118_priv** %6, align 8
  %12 = load %struct.ak4118_priv*, %struct.ak4118_priv** %6, align 8
  %13 = icmp eq %struct.ak4118_priv* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %116

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %18, i32* @ak4118_regmap)
  %20 = load %struct.ak4118_priv*, %struct.ak4118_priv** %6, align 8
  %21 = getelementptr inbounds %struct.ak4118_priv, %struct.ak4118_priv* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.ak4118_priv*, %struct.ak4118_priv** %6, align 8
  %23 = getelementptr inbounds %struct.ak4118_priv, %struct.ak4118_priv* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @IS_ERR(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.ak4118_priv*, %struct.ak4118_priv** %6, align 8
  %29 = getelementptr inbounds %struct.ak4118_priv, %struct.ak4118_priv* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @PTR_ERR(i8* %30)
  store i32 %31, i32* %3, align 4
  br label %116

32:                                               ; preds = %17
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.ak4118_priv*, %struct.ak4118_priv** %6, align 8
  %35 = call i32 @i2c_set_clientdata(%struct.i2c_client* %33, %struct.ak4118_priv* %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %39 = call i8* @devm_gpiod_get(i32* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.ak4118_priv*, %struct.ak4118_priv** %6, align 8
  %41 = getelementptr inbounds %struct.ak4118_priv, %struct.ak4118_priv* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ak4118_priv*, %struct.ak4118_priv** %6, align 8
  %43 = getelementptr inbounds %struct.ak4118_priv, %struct.ak4118_priv* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %32
  %48 = load %struct.ak4118_priv*, %struct.ak4118_priv** %6, align 8
  %49 = getelementptr inbounds %struct.ak4118_priv, %struct.ak4118_priv* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @PTR_ERR(i8* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @EPROBE_DEFER, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %56, %47
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %116

63:                                               ; preds = %32
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load i32, i32* @GPIOD_IN, align 4
  %67 = call i8* @devm_gpiod_get(i32* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.ak4118_priv*, %struct.ak4118_priv** %6, align 8
  %69 = getelementptr inbounds %struct.ak4118_priv, %struct.ak4118_priv* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.ak4118_priv*, %struct.ak4118_priv** %6, align 8
  %71 = getelementptr inbounds %struct.ak4118_priv, %struct.ak4118_priv* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @IS_ERR(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %63
  %76 = load %struct.ak4118_priv*, %struct.ak4118_priv** %6, align 8
  %77 = getelementptr inbounds %struct.ak4118_priv, %struct.ak4118_priv* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @PTR_ERR(i8* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @EPROBE_DEFER, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %84, %75
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %116

91:                                               ; preds = %63
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = load %struct.ak4118_priv*, %struct.ak4118_priv** %6, align 8
  %95 = getelementptr inbounds %struct.ak4118_priv, %struct.ak4118_priv* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @gpiod_to_irq(i8* %96)
  %98 = load i32, i32* @ak4118_irq_handler, align 4
  %99 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %100 = load i32, i32* @IRQF_ONESHOT, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.ak4118_priv*, %struct.ak4118_priv** %6, align 8
  %103 = call i32 @devm_request_threaded_irq(i32* %93, i32 %97, i32* null, i32 %98, i32 %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.ak4118_priv* %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %91
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 0
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %3, align 4
  br label %116

112:                                              ; preds = %91
  %113 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %114 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %113, i32 0, i32 0
  %115 = call i32 @devm_snd_soc_register_component(i32* %114, i32* @soc_component_drv_ak4118, i32* @ak4118_dai, i32 1)
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %106, %89, %61, %27, %14
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.ak4118_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ak4118_priv*) #1

declare dso_local i8* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.ak4118_priv*) #1

declare dso_local i32 @gpiod_to_irq(i8*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
