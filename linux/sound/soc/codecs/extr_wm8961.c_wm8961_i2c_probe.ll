; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8961.c_wm8961_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8961.c_wm8961_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.wm8961_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm8961_regmap = common dso_local global i32 0, align 4
@WM8961_SOFTWARE_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to read chip ID: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Device is not a WM8961: ID=0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8961_RIGHT_INPUT_VOLUME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to read chip revision: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"WM8961 family %d revision %c\0A\00", align 1
@WM8961_DEVICE_ID_MASK = common dso_local global i32 0, align 4
@WM8961_DEVICE_ID_SHIFT = common dso_local global i32 0, align 4
@WM8961_CHIP_REV_MASK = common dso_local global i32 0, align 4
@WM8961_CHIP_REV_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to issue reset: %d\0A\00", align 1
@soc_component_dev_wm8961 = common dso_local global i32 0, align 4
@wm8961_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm8961_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8961_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm8961_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wm8961_priv* @devm_kzalloc(i32* %10, i32 4, i32 %11)
  store %struct.wm8961_priv* %12, %struct.wm8961_priv** %6, align 8
  %13 = load %struct.wm8961_priv*, %struct.wm8961_priv** %6, align 8
  %14 = icmp eq %struct.wm8961_priv* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %115

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %19, i32* @wm8961_regmap)
  %21 = load %struct.wm8961_priv*, %struct.wm8961_priv** %6, align 8
  %22 = getelementptr inbounds %struct.wm8961_priv, %struct.wm8961_priv* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.wm8961_priv*, %struct.wm8961_priv** %6, align 8
  %24 = getelementptr inbounds %struct.wm8961_priv, %struct.wm8961_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.wm8961_priv*, %struct.wm8961_priv** %6, align 8
  %30 = getelementptr inbounds %struct.wm8961_priv, %struct.wm8961_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %115

33:                                               ; preds = %18
  %34 = load %struct.wm8961_priv*, %struct.wm8961_priv** %6, align 8
  %35 = getelementptr inbounds %struct.wm8961_priv, %struct.wm8961_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @WM8961_SOFTWARE_RESET, align 4
  %38 = call i32 @regmap_read(i32 %36, i32 %37, i32* %7)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %115

47:                                               ; preds = %33
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 6145
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %115

57:                                               ; preds = %47
  %58 = load %struct.wm8961_priv*, %struct.wm8961_priv** %6, align 8
  %59 = getelementptr inbounds %struct.wm8961_priv, %struct.wm8961_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @regcache_cache_bypass(i32 %60, i32 1)
  %62 = load %struct.wm8961_priv*, %struct.wm8961_priv** %6, align 8
  %63 = getelementptr inbounds %struct.wm8961_priv, %struct.wm8961_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @WM8961_RIGHT_INPUT_VOLUME, align 4
  %66 = call i32 @regmap_read(i32 %64, i32 %65, i32* %7)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.wm8961_priv*, %struct.wm8961_priv** %6, align 8
  %68 = getelementptr inbounds %struct.wm8961_priv, %struct.wm8961_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @regcache_cache_bypass(i32 %69, i32 0)
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %57
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %115

79:                                               ; preds = %57
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @WM8961_DEVICE_ID_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @WM8961_DEVICE_ID_SHIFT, align 4
  %86 = lshr i32 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @WM8961_CHIP_REV_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @WM8961_CHIP_REV_SHIFT, align 4
  %91 = lshr i32 %89, %90
  %92 = add i32 %91, 65
  %93 = call i32 @dev_info(i32* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %92)
  %94 = load %struct.wm8961_priv*, %struct.wm8961_priv** %6, align 8
  %95 = getelementptr inbounds %struct.wm8961_priv, %struct.wm8961_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @WM8961_SOFTWARE_RESET, align 4
  %98 = call i32 @regmap_write(i32 %96, i32 %97, i32 6145)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %79
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %115

107:                                              ; preds = %79
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = load %struct.wm8961_priv*, %struct.wm8961_priv** %6, align 8
  %110 = call i32 @i2c_set_clientdata(%struct.i2c_client* %108, %struct.wm8961_priv* %109)
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = call i32 @devm_snd_soc_register_component(i32* %112, i32* @soc_component_dev_wm8961, i32* @wm8961_dai, i32 1)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %107, %101, %73, %50, %41, %28, %15
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.wm8961_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regcache_cache_bypass(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wm8961_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
