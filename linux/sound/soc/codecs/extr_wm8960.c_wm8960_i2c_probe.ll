; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.wm8960_data = type { i32 }
%struct.wm8960_priv = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@wm8960_regmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to issue reset\0A\00", align 1
@WM8960_ADDCTL2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to enable LRCM: %d\0A\00", align 1
@WM8960_LINVOL = common dso_local global i32 0, align 4
@WM8960_RINVOL = common dso_local global i32 0, align 4
@WM8960_LADC = common dso_local global i32 0, align 4
@WM8960_RADC = common dso_local global i32 0, align 4
@WM8960_LDAC = common dso_local global i32 0, align 4
@WM8960_RDAC = common dso_local global i32 0, align 4
@WM8960_LOUT1 = common dso_local global i32 0, align 4
@WM8960_ROUT1 = common dso_local global i32 0, align 4
@WM8960_LOUT2 = common dso_local global i32 0, align 4
@WM8960_ROUT2 = common dso_local global i32 0, align 4
@soc_component_dev_wm8960 = common dso_local global i32 0, align 4
@wm8960_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm8960_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8960_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm8960_data*, align 8
  %7 = alloca %struct.wm8960_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.wm8960_data* @dev_get_platdata(%struct.TYPE_9__* %10)
  store %struct.wm8960_data* %11, %struct.wm8960_data** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.wm8960_priv* @devm_kzalloc(%struct.TYPE_9__* %13, i32 24, i32 %14)
  store %struct.wm8960_priv* %15, %struct.wm8960_priv** %7, align 8
  %16 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %17 = icmp eq %struct.wm8960_priv* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %170

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = call i32 @devm_clk_get(%struct.TYPE_9__* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %26 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %28 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %21
  %33 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %34 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  %37 = load i32, i32* @EPROBE_DEFER, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EPROBE_DEFER, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %170

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %21
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %45, i32* @wm8960_regmap)
  %47 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %48 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %50 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %56 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %3, align 4
  br label %170

59:                                               ; preds = %44
  %60 = load %struct.wm8960_data*, %struct.wm8960_data** %6, align 8
  %61 = icmp ne %struct.wm8960_data* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %64 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %63, i32 0, i32 1
  %65 = load %struct.wm8960_data*, %struct.wm8960_data** %6, align 8
  %66 = call i32 @memcpy(%struct.TYPE_8__* %64, %struct.wm8960_data* %65, i32 4)
  br label %79

67:                                               ; preds = %59
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %76 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %75, i32 0, i32 1
  %77 = call i32 @wm8960_set_pdata_from_of(%struct.i2c_client* %74, %struct.TYPE_8__* %76)
  br label %78

78:                                               ; preds = %73, %67
  br label %79

79:                                               ; preds = %78, %62
  %80 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %81 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @wm8960_reset(i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %170

91:                                               ; preds = %79
  %92 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %93 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %91
  %98 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %99 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @WM8960_ADDCTL2, align 4
  %102 = call i32 @regmap_update_bits(i32 %100, i32 %101, i32 4, i32 4)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 0
  %108 = load i32, i32* %8, align 4
  %109 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %170

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111, %91
  %113 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %114 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @WM8960_LINVOL, align 4
  %117 = call i32 @regmap_update_bits(i32 %115, i32 %116, i32 256, i32 256)
  %118 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %119 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @WM8960_RINVOL, align 4
  %122 = call i32 @regmap_update_bits(i32 %120, i32 %121, i32 256, i32 256)
  %123 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %124 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @WM8960_LADC, align 4
  %127 = call i32 @regmap_update_bits(i32 %125, i32 %126, i32 256, i32 256)
  %128 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %129 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @WM8960_RADC, align 4
  %132 = call i32 @regmap_update_bits(i32 %130, i32 %131, i32 256, i32 256)
  %133 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %134 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @WM8960_LDAC, align 4
  %137 = call i32 @regmap_update_bits(i32 %135, i32 %136, i32 256, i32 256)
  %138 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %139 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @WM8960_RDAC, align 4
  %142 = call i32 @regmap_update_bits(i32 %140, i32 %141, i32 256, i32 256)
  %143 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %144 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @WM8960_LOUT1, align 4
  %147 = call i32 @regmap_update_bits(i32 %145, i32 %146, i32 256, i32 256)
  %148 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %149 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @WM8960_ROUT1, align 4
  %152 = call i32 @regmap_update_bits(i32 %150, i32 %151, i32 256, i32 256)
  %153 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %154 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @WM8960_LOUT2, align 4
  %157 = call i32 @regmap_update_bits(i32 %155, i32 %156, i32 256, i32 256)
  %158 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %159 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @WM8960_ROUT2, align 4
  %162 = call i32 @regmap_update_bits(i32 %160, i32 %161, i32 256, i32 256)
  %163 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %164 = load %struct.wm8960_priv*, %struct.wm8960_priv** %7, align 8
  %165 = call i32 @i2c_set_clientdata(%struct.i2c_client* %163, %struct.wm8960_priv* %164)
  %166 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %167 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %166, i32 0, i32 0
  %168 = call i32 @devm_snd_soc_register_component(%struct.TYPE_9__* %167, i32* @soc_component_dev_wm8960, i32* @wm8960_dai, i32 1)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %112, %105, %86, %54, %40, %18
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.wm8960_data* @dev_get_platdata(%struct.TYPE_9__*) #1

declare dso_local %struct.wm8960_priv* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.wm8960_data*, i32) #1

declare dso_local i32 @wm8960_set_pdata_from_of(%struct.i2c_client*, %struct.TYPE_8__*) #1

declare dso_local i32 @wm8960_reset(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wm8960_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_9__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
