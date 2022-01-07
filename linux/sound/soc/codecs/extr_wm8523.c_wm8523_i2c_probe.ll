; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8523.c_wm8523_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8523.c_wm8523_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.wm8523_priv = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm8523_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to create regmap: %d\0A\00", align 1
@wm8523_supply_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@WM8523_DEVICE_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to read ID register\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Device is not a WM8523, ID is %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8523_REVISION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to read revision register\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"revision %c\0A\00", align 1
@WM8523_CHIP_REV_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Failed to reset device: %d\0A\00", align 1
@soc_component_dev_wm8523 = common dso_local global i32 0, align 4
@wm8523_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm8523_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8523_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm8523_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.wm8523_priv* @devm_kzalloc(i32* %11, i32 16, i32 %12)
  store %struct.wm8523_priv* %13, %struct.wm8523_priv** %6, align 8
  %14 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %15 = icmp eq %struct.wm8523_priv* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %179

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %20, i32* @wm8523_regmap)
  %22 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %23 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %25 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %31 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @PTR_ERR(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %179

39:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %60, %39
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %43 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %44)
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %40
  %48 = load i32*, i32** @wm8523_supply_names, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %54 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %52, i32* %59, align 4
  br label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %40

63:                                               ; preds = %40
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %67 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %68)
  %70 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %71 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = call i32 @devm_regulator_bulk_get(i32* %65, i32 %69, %struct.TYPE_5__* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %63
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i32*, i8*, ...) @dev_err(i32* %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %179

82:                                               ; preds = %63
  %83 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %84 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %85)
  %87 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %88 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = call i32 @regulator_bulk_enable(i32 %86, %struct.TYPE_5__* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %82
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 0
  %96 = load i32, i32* %8, align 4
  %97 = call i32 (i32*, i8*, ...) @dev_err(i32* %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %179

99:                                               ; preds = %82
  %100 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %101 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @WM8523_DEVICE_ID, align 4
  %104 = call i32 @regmap_read(i32 %102, i32 %103, i32* %7)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = call i32 (i32*, i8*, ...) @dev_err(i32* %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %169

111:                                              ; preds = %99
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 34083
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = load i32, i32* %8, align 4
  %118 = call i32 (i32*, i8*, ...) @dev_err(i32* %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %8, align 4
  br label %169

121:                                              ; preds = %111
  %122 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %123 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @WM8523_REVISION, align 4
  %126 = call i32 @regmap_read(i32 %124, i32 %125, i32* %7)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %121
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %130, i32 0, i32 0
  %132 = call i32 (i32*, i8*, ...) @dev_err(i32* %131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %169

133:                                              ; preds = %121
  %134 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %135 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %134, i32 0, i32 0
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @WM8523_CHIP_REV_MASK, align 4
  %138 = and i32 %136, %137
  %139 = add i32 %138, 65
  %140 = call i32 @dev_info(i32* %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  %141 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %142 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @WM8523_DEVICE_ID, align 4
  %145 = call i32 @regmap_write(i32 %143, i32 %144, i32 34083)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %133
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 0
  %151 = load i32, i32* %8, align 4
  %152 = call i32 (i32*, i8*, ...) @dev_err(i32* %150, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %151)
  br label %169

153:                                              ; preds = %133
  %154 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %155 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %154, i32 0, i32 0
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %156)
  %158 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %159 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %158, i32 0, i32 0
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = call i32 @regulator_bulk_disable(i32 %157, %struct.TYPE_5__* %160)
  %162 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %163 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %164 = call i32 @i2c_set_clientdata(%struct.i2c_client* %162, %struct.wm8523_priv* %163)
  %165 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %166 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %165, i32 0, i32 0
  %167 = call i32 @devm_snd_soc_register_component(i32* %166, i32* @soc_component_dev_wm8523, i32* @wm8523_dai, i32 1)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %3, align 4
  br label %179

169:                                              ; preds = %148, %129, %114, %107
  %170 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %171 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %170, i32 0, i32 0
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %172)
  %174 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %175 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %174, i32 0, i32 0
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = call i32 @regulator_bulk_disable(i32 %173, %struct.TYPE_5__* %176)
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %169, %153, %93, %76, %29, %16
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.wm8523_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wm8523_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
