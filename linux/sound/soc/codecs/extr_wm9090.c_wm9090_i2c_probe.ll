; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9090.c_wm9090_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9090.c_wm9090_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.wm9090_priv = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm9090_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate regmap: %d\0A\00", align 1
@WM9090_SOFTWARE_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Device is not a WM9090, ID=%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@soc_component_dev_wm9090 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to register CODEC: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm9090_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9090_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm9090_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wm9090_priv* @devm_kzalloc(%struct.TYPE_4__* %10, i32 8, i32 %11)
  store %struct.wm9090_priv* %12, %struct.wm9090_priv** %6, align 8
  %13 = load %struct.wm9090_priv*, %struct.wm9090_priv** %6, align 8
  %14 = icmp ne %struct.wm9090_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %98

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %19, i32* @wm9090_regmap)
  %21 = load %struct.wm9090_priv*, %struct.wm9090_priv** %6, align 8
  %22 = getelementptr inbounds %struct.wm9090_priv, %struct.wm9090_priv* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.wm9090_priv*, %struct.wm9090_priv** %6, align 8
  %24 = getelementptr inbounds %struct.wm9090_priv, %struct.wm9090_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load %struct.wm9090_priv*, %struct.wm9090_priv** %6, align 8
  %30 = getelementptr inbounds %struct.wm9090_priv, %struct.wm9090_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dev_err(%struct.TYPE_4__* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %98

38:                                               ; preds = %18
  %39 = load %struct.wm9090_priv*, %struct.wm9090_priv** %6, align 8
  %40 = getelementptr inbounds %struct.wm9090_priv, %struct.wm9090_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WM9090_SOFTWARE_RESET, align 4
  %43 = call i32 @regmap_read(i32 %41, i32 %42, i32* %7)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %98

48:                                               ; preds = %38
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 37011
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @dev_err(%struct.TYPE_4__* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %98

58:                                               ; preds = %48
  %59 = load %struct.wm9090_priv*, %struct.wm9090_priv** %6, align 8
  %60 = getelementptr inbounds %struct.wm9090_priv, %struct.wm9090_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @WM9090_SOFTWARE_RESET, align 4
  %63 = call i32 @regmap_write(i32 %61, i32 %62, i32 0)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %98

68:                                               ; preds = %58
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.wm9090_priv*, %struct.wm9090_priv** %6, align 8
  %76 = getelementptr inbounds %struct.wm9090_priv, %struct.wm9090_priv* %75, i32 0, i32 0
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @memcpy(i32* %76, i32 %80, i32 4)
  br label %82

82:                                               ; preds = %74, %68
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = load %struct.wm9090_priv*, %struct.wm9090_priv** %6, align 8
  %85 = call i32 @i2c_set_clientdata(%struct.i2c_client* %83, %struct.wm9090_priv* %84)
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = call i32 @devm_snd_soc_register_component(%struct.TYPE_4__* %87, i32* @soc_component_dev_wm9090, i32* null, i32 0)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %82
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @dev_err(%struct.TYPE_4__* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %3, align 4
  br label %98

97:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %91, %66, %51, %46, %28, %15
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.wm9090_priv* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wm9090_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_4__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
