; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta32x.c_sta32x_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta32x.c_sta32x_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.sta32x_priv = type { i32*, %struct.TYPE_3__*, i32*, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"xti\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@sta32x_supply_names = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@sta32x_regmap = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to init regmap: %d\0A\00", align 1
@sta32x_component = common dso_local global i32 0, align 4
@sta32x_dai = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to register component (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sta32x_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta32x_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.sta32x_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sta32x_priv* @devm_kzalloc(%struct.device* %13, i32 40, i32 %14)
  store %struct.sta32x_priv* %15, %struct.sta32x_priv** %7, align 8
  %16 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %17 = icmp ne %struct.sta32x_priv* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %144

21:                                               ; preds = %2
  %22 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %23 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %22, i32 0, i32 5
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call i32 @dev_get_platdata(%struct.device* %25)
  %27 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %28 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32* @devm_clk_get(%struct.device* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %32 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %31, i32 0, i32 3
  store i32* %30, i32** %32, align 8
  %33 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %34 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @IS_ERR(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %21
  %39 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %40 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @PTR_ERR(i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @EPROBE_DEFER, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %144

49:                                               ; preds = %38
  %50 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %51 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %50, i32 0, i32 3
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %49, %21
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %55 = call i32* @devm_gpiod_get_optional(%struct.device* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %57 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  %58 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %59 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @IS_ERR(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %52
  %64 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %65 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @PTR_ERR(i32* %66)
  store i32 %67, i32* %3, align 4
  br label %144

68:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %89, %68
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %72 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %73)
  %75 = icmp slt i32 %70, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %69
  %77 = load i32*, i32** @sta32x_supply_names, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %83 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32 %81, i32* %88, align 4
  br label %89

89:                                               ; preds = %76
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %69

92:                                               ; preds = %69
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %96 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %95, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %97)
  %99 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %100 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = call i32 @devm_regulator_bulk_get(%struct.device* %94, i32 %98, %struct.TYPE_3__* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %92
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 0
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %144

111:                                              ; preds = %92
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = call i32* @devm_regmap_init_i2c(%struct.i2c_client* %112, i32* @sta32x_regmap)
  %114 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %115 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %114, i32 0, i32 0
  store i32* %113, i32** %115, align 8
  %116 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %117 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = call i64 @IS_ERR(i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %111
  %122 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %123 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @PTR_ERR(i32* %124)
  store i32 %125, i32* %8, align 4
  %126 = load %struct.device*, %struct.device** %6, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @dev_err(%struct.device* %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %3, align 4
  br label %144

130:                                              ; preds = %111
  %131 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %132 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %133 = call i32 @i2c_set_clientdata(%struct.i2c_client* %131, %struct.sta32x_priv* %132)
  %134 = load %struct.device*, %struct.device** %6, align 8
  %135 = call i32 @devm_snd_soc_register_component(%struct.device* %134, i32* @sta32x_component, i32* @sta32x_dai, i32 1)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %130
  %139 = load %struct.device*, %struct.device** %6, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @dev_err(%struct.device* %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %138, %130
  %143 = load i32, i32* %8, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %121, %105, %63, %47, %18
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.sta32x_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_get_platdata(%struct.device*) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.sta32x_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
