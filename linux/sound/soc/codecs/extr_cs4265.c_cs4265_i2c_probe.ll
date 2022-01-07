; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4265.c_cs4265_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4265.c_cs4265_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.cs4265_private = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cs4265_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"regmap_init() failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@CS4265_CHIP_ID = common dso_local global i32 0, align 4
@CS4265_CHIP_ID_MASK = common dso_local global i32 0, align 4
@CS4265_CHIP_ID_VAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"CS4265 Device ID (%X). Expected %X\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"CS4265 Version %x\0A\00", align 1
@CS4265_REV_ID_MASK = common dso_local global i32 0, align 4
@CS4265_PWRCTL = common dso_local global i32 0, align 4
@soc_component_cs4265 = common dso_local global i32 0, align 4
@cs4265_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @cs4265_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4265_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.cs4265_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.cs4265_private* @devm_kzalloc(i32* %11, i32 16, i32 %12)
  store %struct.cs4265_private* %13, %struct.cs4265_private** %6, align 8
  %14 = load %struct.cs4265_private*, %struct.cs4265_private** %6, align 8
  %15 = icmp eq %struct.cs4265_private* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %110

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = call i64 @devm_regmap_init_i2c(%struct.i2c_client* %20, i32* @cs4265_regmap)
  %22 = load %struct.cs4265_private*, %struct.cs4265_private** %6, align 8
  %23 = getelementptr inbounds %struct.cs4265_private, %struct.cs4265_private* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.cs4265_private*, %struct.cs4265_private** %6, align 8
  %25 = getelementptr inbounds %struct.cs4265_private, %struct.cs4265_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @IS_ERR(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = load %struct.cs4265_private*, %struct.cs4265_private** %6, align 8
  %31 = getelementptr inbounds %struct.cs4265_private, %struct.cs4265_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @PTR_ERR(i64 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %110

39:                                               ; preds = %19
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %43 = call i64 @devm_gpiod_get_optional(i32* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.cs4265_private*, %struct.cs4265_private** %6, align 8
  %45 = getelementptr inbounds %struct.cs4265_private, %struct.cs4265_private* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.cs4265_private*, %struct.cs4265_private** %6, align 8
  %47 = getelementptr inbounds %struct.cs4265_private, %struct.cs4265_private* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @IS_ERR(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load %struct.cs4265_private*, %struct.cs4265_private** %6, align 8
  %53 = getelementptr inbounds %struct.cs4265_private, %struct.cs4265_private* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @PTR_ERR(i64 %54)
  store i32 %55, i32* %3, align 4
  br label %110

56:                                               ; preds = %39
  %57 = load %struct.cs4265_private*, %struct.cs4265_private** %6, align 8
  %58 = getelementptr inbounds %struct.cs4265_private, %struct.cs4265_private* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = call i32 @mdelay(i32 1)
  %63 = load %struct.cs4265_private*, %struct.cs4265_private** %6, align 8
  %64 = getelementptr inbounds %struct.cs4265_private, %struct.cs4265_private* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @gpiod_set_value_cansleep(i64 %65, i32 1)
  br label %67

67:                                               ; preds = %61, %56
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = load %struct.cs4265_private*, %struct.cs4265_private** %6, align 8
  %70 = call i32 @i2c_set_clientdata(%struct.i2c_client* %68, %struct.cs4265_private* %69)
  %71 = load %struct.cs4265_private*, %struct.cs4265_private** %6, align 8
  %72 = getelementptr inbounds %struct.cs4265_private, %struct.cs4265_private* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @CS4265_CHIP_ID, align 4
  %75 = call i32 @regmap_read(i64 %73, i32 %74, i32* %9)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @CS4265_CHIP_ID_MASK, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @CS4265_CHIP_ID_VAL, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %67
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @CS4265_CHIP_ID, align 4
  %89 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %110

91:                                               ; preds = %67
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @CS4265_REV_ID_MASK, align 4
  %96 = and i32 %94, %95
  %97 = call i32 @dev_info(i32* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load %struct.cs4265_private*, %struct.cs4265_private** %6, align 8
  %99 = getelementptr inbounds %struct.cs4265_private, %struct.cs4265_private* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @CS4265_PWRCTL, align 4
  %102 = call i32 @regmap_write(i64 %100, i32 %101, i32 15)
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 0
  %105 = load i32, i32* @cs4265_dai, align 4
  %106 = load i32, i32* @cs4265_dai, align 4
  %107 = call i32 @ARRAY_SIZE(i32 %106)
  %108 = call i32 @devm_snd_soc_register_component(i32* %104, i32* @soc_component_cs4265, i32 %105, i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %91, %82, %51, %29, %16
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.cs4265_private* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i64 @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.cs4265_private*) #1

declare dso_local i32 @regmap_read(i64, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @regmap_write(i64, i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
