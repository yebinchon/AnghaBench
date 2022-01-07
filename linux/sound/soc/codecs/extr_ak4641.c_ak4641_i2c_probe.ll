; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4641.c_ak4641_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4641.c_ak4641_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ak4641_platform_data* }
%struct.ak4641_platform_data = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.ak4641_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ak4641_regmap = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ak4641 power\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ak4641 npdn\00", align 1
@soc_component_dev_ak4641 = common dso_local global i32 0, align 4
@ak4641_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ak4641_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4641_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ak4641_platform_data*, align 8
  %7 = alloca %struct.ak4641_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %11, align 8
  store %struct.ak4641_platform_data* %12, %struct.ak4641_platform_data** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ak4641_priv* @devm_kzalloc(%struct.TYPE_3__* %14, i32 4, i32 %15)
  store %struct.ak4641_priv* %16, %struct.ak4641_priv** %7, align 8
  %17 = load %struct.ak4641_priv*, %struct.ak4641_priv** %7, align 8
  %18 = icmp ne %struct.ak4641_priv* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %136

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %23, i32* @ak4641_regmap)
  %25 = load %struct.ak4641_priv*, %struct.ak4641_priv** %7, align 8
  %26 = getelementptr inbounds %struct.ak4641_priv, %struct.ak4641_priv* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ak4641_priv*, %struct.ak4641_priv** %7, align 8
  %28 = getelementptr inbounds %struct.ak4641_priv, %struct.ak4641_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.ak4641_priv*, %struct.ak4641_priv** %7, align 8
  %34 = getelementptr inbounds %struct.ak4641_priv, %struct.ak4641_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %136

37:                                               ; preds = %22
  %38 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %6, align 8
  %39 = icmp ne %struct.ak4641_platform_data* %38, null
  br i1 %39, label %40, label %78

40:                                               ; preds = %37
  %41 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %6, align 8
  %42 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @gpio_is_valid(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %6, align 8
  %48 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %51 = call i32 @gpio_request_one(i32 %49, i32 %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %134

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %40
  %57 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %6, align 8
  %58 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @gpio_is_valid(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %56
  %63 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %6, align 8
  %64 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %67 = call i32 @gpio_request_one(i32 %65, i32 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %119

71:                                               ; preds = %62
  %72 = call i32 @udelay(i32 1)
  %73 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %6, align 8
  %74 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @gpio_set_value(i32 %75, i32 1)
  br label %77

77:                                               ; preds = %71, %56
  br label %78

78:                                               ; preds = %77, %37
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = load %struct.ak4641_priv*, %struct.ak4641_priv** %7, align 8
  %81 = call i32 @i2c_set_clientdata(%struct.i2c_client* %79, %struct.ak4641_priv* %80)
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 0
  %84 = load i32, i32* @ak4641_dai, align 4
  %85 = load i32, i32* @ak4641_dai, align 4
  %86 = call i32 @ARRAY_SIZE(i32 %85)
  %87 = call i32 @devm_snd_soc_register_component(%struct.TYPE_3__* %83, i32* @soc_component_dev_ak4641, i32 %84, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  br label %92

91:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %136

92:                                               ; preds = %90
  %93 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %6, align 8
  %94 = icmp ne %struct.ak4641_platform_data* %93, null
  br i1 %94, label %95, label %118

95:                                               ; preds = %92
  %96 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %6, align 8
  %97 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @gpio_is_valid(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %6, align 8
  %103 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @gpio_set_value(i32 %104, i32 0)
  br label %106

106:                                              ; preds = %101, %95
  %107 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %6, align 8
  %108 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @gpio_is_valid(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %6, align 8
  %114 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @gpio_free(i32 %115)
  br label %117

117:                                              ; preds = %112, %106
  br label %118

118:                                              ; preds = %117, %92
  br label %119

119:                                              ; preds = %118, %70
  %120 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %6, align 8
  %121 = icmp ne %struct.ak4641_platform_data* %120, null
  br i1 %121, label %122, label %133

122:                                              ; preds = %119
  %123 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %6, align 8
  %124 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @gpio_is_valid(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load %struct.ak4641_platform_data*, %struct.ak4641_platform_data** %6, align 8
  %130 = getelementptr inbounds %struct.ak4641_platform_data, %struct.ak4641_platform_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @gpio_free(i32 %131)
  br label %133

133:                                              ; preds = %128, %122, %119
  br label %134

134:                                              ; preds = %133, %54
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %91, %32, %19
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.ak4641_priv* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_request_one(i32, i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ak4641_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_3__*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
