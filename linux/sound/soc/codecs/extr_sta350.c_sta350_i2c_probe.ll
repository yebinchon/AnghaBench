; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta350.c_sta350_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta350.c_sta350_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.sta350_priv = type { i8*, %struct.TYPE_3__*, i8*, i8*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"power-down\00", align 1
@sta350_supply_names = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@sta350_regmap = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to init regmap: %d\0A\00", align 1
@sta350_component = common dso_local global i32 0, align 4
@sta350_dai = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to register component (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sta350_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta350_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.sta350_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sta350_priv* @devm_kzalloc(%struct.device* %12, i32 40, i32 %13)
  store %struct.sta350_priv* %14, %struct.sta350_priv** %7, align 8
  %15 = load %struct.sta350_priv*, %struct.sta350_priv** %7, align 8
  %16 = icmp ne %struct.sta350_priv* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %133

20:                                               ; preds = %2
  %21 = load %struct.sta350_priv*, %struct.sta350_priv** %7, align 8
  %22 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %21, i32 0, i32 5
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call i32 @dev_get_platdata(%struct.device* %24)
  %26 = load %struct.sta350_priv*, %struct.sta350_priv** %7, align 8
  %27 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %30 = call i8* @devm_gpiod_get_optional(%struct.device* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.sta350_priv*, %struct.sta350_priv** %7, align 8
  %32 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load %struct.sta350_priv*, %struct.sta350_priv** %7, align 8
  %34 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %20
  %39 = load %struct.sta350_priv*, %struct.sta350_priv** %7, align 8
  %40 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @PTR_ERR(i8* %41)
  store i32 %42, i32* %3, align 4
  br label %133

43:                                               ; preds = %20
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %46 = call i8* @devm_gpiod_get_optional(%struct.device* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.sta350_priv*, %struct.sta350_priv** %7, align 8
  %48 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.sta350_priv*, %struct.sta350_priv** %7, align 8
  %50 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @IS_ERR(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %43
  %55 = load %struct.sta350_priv*, %struct.sta350_priv** %7, align 8
  %56 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @PTR_ERR(i8* %57)
  store i32 %58, i32* %3, align 4
  br label %133

59:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %80, %59
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.sta350_priv*, %struct.sta350_priv** %7, align 8
  %63 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %64)
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %60
  %68 = load i32*, i32** @sta350_supply_names, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sta350_priv*, %struct.sta350_priv** %7, align 8
  %74 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 4
  br label %80

80:                                               ; preds = %67
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %60

83:                                               ; preds = %60
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = load %struct.sta350_priv*, %struct.sta350_priv** %7, align 8
  %86 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %87)
  %89 = load %struct.sta350_priv*, %struct.sta350_priv** %7, align 8
  %90 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = call i32 @devm_regulator_bulk_get(%struct.device* %84, i32 %88, %struct.TYPE_3__* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %83
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %133

100:                                              ; preds = %83
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %101, i32* @sta350_regmap)
  %103 = load %struct.sta350_priv*, %struct.sta350_priv** %7, align 8
  %104 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load %struct.sta350_priv*, %struct.sta350_priv** %7, align 8
  %106 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @IS_ERR(i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %100
  %111 = load %struct.sta350_priv*, %struct.sta350_priv** %7, align 8
  %112 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @PTR_ERR(i8* %113)
  store i32 %114, i32* %8, align 4
  %115 = load %struct.device*, %struct.device** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @dev_err(%struct.device* %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %3, align 4
  br label %133

119:                                              ; preds = %100
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = load %struct.sta350_priv*, %struct.sta350_priv** %7, align 8
  %122 = call i32 @i2c_set_clientdata(%struct.i2c_client* %120, %struct.sta350_priv* %121)
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = call i32 @devm_snd_soc_register_component(%struct.device* %123, i32* @sta350_component, i32* @sta350_dai, i32 1)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  %128 = load %struct.device*, %struct.device** %6, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @dev_err(%struct.device* %128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %127, %119
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %110, %95, %54, %38, %17
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.sta350_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_get_platdata(%struct.device*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.sta350_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
