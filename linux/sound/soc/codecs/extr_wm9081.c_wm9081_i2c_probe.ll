; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9081.c_wm9081_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9081.c_wm9081_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.wm9081_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm9081_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"regmap_init() failed: %d\0A\00", align 1
@WM9081_SOFTWARE_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to read chip ID: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Device is not a WM9081: ID=0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to issue reset\0A\00", align 1
@WM9081_IRQ_POL = common dso_local global i32 0, align 4
@WM9081_IRQ_OP_CTRL = common dso_local global i32 0, align 4
@WM9081_INTERRUPT_CONTROL = common dso_local global i32 0, align 4
@soc_component_dev_wm9081 = common dso_local global i32 0, align 4
@wm9081_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm9081_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9081_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm9081_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wm9081_priv* @devm_kzalloc(i32* %10, i32 24, i32 %11)
  store %struct.wm9081_priv* %12, %struct.wm9081_priv** %6, align 8
  %13 = load %struct.wm9081_priv*, %struct.wm9081_priv** %6, align 8
  %14 = icmp eq %struct.wm9081_priv* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %131

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.wm9081_priv*, %struct.wm9081_priv** %6, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.wm9081_priv* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %22, i32* @wm9081_regmap)
  %24 = load %struct.wm9081_priv*, %struct.wm9081_priv** %6, align 8
  %25 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.wm9081_priv*, %struct.wm9081_priv** %6, align 8
  %27 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %18
  %32 = load %struct.wm9081_priv*, %struct.wm9081_priv** %6, align 8
  %33 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i32*, i8*, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %131

41:                                               ; preds = %18
  %42 = load %struct.wm9081_priv*, %struct.wm9081_priv** %6, align 8
  %43 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @WM9081_SOFTWARE_RESET, align 4
  %46 = call i32 @regmap_read(i32 %44, i32 %45, i32* %7)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* %8, align 4
  %53 = call i32 (i32*, i8*, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %131

55:                                               ; preds = %41
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 36993
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %131

65:                                               ; preds = %55
  %66 = load %struct.wm9081_priv*, %struct.wm9081_priv** %6, align 8
  %67 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @wm9081_reset(i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = call i32 (i32*, i8*, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %131

77:                                               ; preds = %65
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = call i64 @dev_get_platdata(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.wm9081_priv*, %struct.wm9081_priv** %6, align 8
  %84 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %83, i32 0, i32 1
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = call i64 @dev_get_platdata(i32* %86)
  %88 = call i32 @memcpy(%struct.TYPE_2__* %84, i64 %87, i32 16)
  br label %89

89:                                               ; preds = %82, %77
  store i32 0, i32* %7, align 4
  %90 = load %struct.wm9081_priv*, %struct.wm9081_priv** %6, align 8
  %91 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i32, i32* @WM9081_IRQ_POL, align 4
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %95, %89
  %100 = load %struct.wm9081_priv*, %struct.wm9081_priv** %6, align 8
  %101 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* @WM9081_IRQ_OP_CTRL, align 4
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %105, %99
  %110 = load %struct.wm9081_priv*, %struct.wm9081_priv** %6, align 8
  %111 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @WM9081_INTERRUPT_CONTROL, align 4
  %114 = load i32, i32* @WM9081_IRQ_POL, align 4
  %115 = load i32, i32* @WM9081_IRQ_OP_CTRL, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @regmap_update_bits(i32 %112, i32 %113, i32 %116, i32 %117)
  %119 = load %struct.wm9081_priv*, %struct.wm9081_priv** %6, align 8
  %120 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @regcache_cache_only(i32 %121, i32 1)
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 0
  %125 = call i32 @devm_snd_soc_register_component(i32* %124, i32* @soc_component_dev_wm9081, i32* @wm9081_dai, i32 1)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %109
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %3, align 4
  br label %131

130:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %128, %72, %58, %49, %31, %15
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.wm9081_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wm9081_priv*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @wm9081_reset(i32) #1

declare dso_local i64 @dev_get_platdata(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, i64, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
