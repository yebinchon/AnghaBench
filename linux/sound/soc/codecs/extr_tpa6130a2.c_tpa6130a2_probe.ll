; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tpa6130a2.c_tpa6130a2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tpa6130a2.c_tpa6130a2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { %struct.device_node*, %struct.tpa6130a2_platform_data* }
%struct.device_node = type { i32 }
%struct.tpa6130a2_platform_data = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.tpa6130a2_data = type { i64, i32, i32, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tpa6130a2_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"power-gpio\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Platform data not set\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"tpa6130a2 enable\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to request power GPIO (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Unknown TPA model (%d). Assuming 6130A2\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Vdd\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"AVdd\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to request supply: %d\0A\00", align 1
@TPA6130A2_REG_VERSION = common dso_local global i32 0, align 4
@TPA6130A2_VERSION_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"UNTESTED version detected (%d)\0A\00", align 1
@tpa6130a2_component_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tpa6130a2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpa6130a2_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.tpa6130a2_data*, align 8
  %8 = alloca %struct.tpa6130a2_platform_data*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 1
  %16 = load %struct.tpa6130a2_platform_data*, %struct.tpa6130a2_platform_data** %15, align 8
  store %struct.tpa6130a2_platform_data* %16, %struct.tpa6130a2_platform_data** %8, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %9, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %6, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.tpa6130a2_data* @devm_kzalloc(%struct.device* %24, i32 32, i32 %25)
  store %struct.tpa6130a2_data* %26, %struct.tpa6130a2_data** %7, align 8
  %27 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %28 = icmp ne %struct.tpa6130a2_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %176

32:                                               ; preds = %2
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %35 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %34, i32 0, i32 4
  store %struct.device* %33, %struct.device** %35, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %36, i32* @tpa6130a2_regmap_config)
  %38 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %39 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %41 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @IS_ERR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %47 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %176

50:                                               ; preds = %32
  %51 = load %struct.tpa6130a2_platform_data*, %struct.tpa6130a2_platform_data** %8, align 8
  %52 = icmp ne %struct.tpa6130a2_platform_data* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.tpa6130a2_platform_data*, %struct.tpa6130a2_platform_data** %8, align 8
  %55 = getelementptr inbounds %struct.tpa6130a2_platform_data, %struct.tpa6130a2_platform_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %58 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %74

59:                                               ; preds = %50
  %60 = load %struct.device_node*, %struct.device_node** %9, align 8
  %61 = icmp ne %struct.device_node* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.device_node*, %struct.device_node** %9, align 8
  %64 = call i64 @of_get_named_gpio(%struct.device_node* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  %65 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %66 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %73

67:                                               ; preds = %59
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i32 (...) @dump_stack()
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %176

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %53
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %77 = call i32 @i2c_set_clientdata(%struct.i2c_client* %75, %struct.tpa6130a2_data* %76)
  %78 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %79 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %82 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %84 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %74
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %90 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @devm_gpio_request(%struct.device* %88, i64 %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %87
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %98 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %99)
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %3, align 4
  br label %176

102:                                              ; preds = %87
  %103 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %104 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @gpio_direction_output(i32 %106, i32 0)
  br label %108

108:                                              ; preds = %102, %74
  %109 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %110 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %112 [
    i32 129, label %118
    i32 128, label %119
  ]

112:                                              ; preds = %108
  %113 = load %struct.device*, %struct.device** %6, align 8
  %114 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %115 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @dev_warn(%struct.device* %113, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %108, %112
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %120

119:                                              ; preds = %108
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %120

120:                                              ; preds = %119, %118
  %121 = load %struct.device*, %struct.device** %6, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 @devm_regulator_get(%struct.device* %121, i8* %122)
  %124 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %125 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  %126 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %127 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @IS_ERR(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %120
  %132 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %133 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @PTR_ERR(i32 %134)
  store i32 %135, i32* %12, align 4
  %136 = load %struct.device*, %struct.device** %6, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %3, align 4
  br label %176

140:                                              ; preds = %120
  %141 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %142 = call i32 @tpa6130a2_power(%struct.tpa6130a2_data* %141, i32 1)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %3, align 4
  br label %176

147:                                              ; preds = %140
  %148 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %149 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @TPA6130A2_REG_VERSION, align 4
  %152 = call i32 @regmap_read(i32 %150, i32 %151, i32* %11)
  %153 = load i32, i32* @TPA6130A2_VERSION_MASK, align 4
  %154 = load i32, i32* %11, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 1
  br i1 %157, label %158, label %165

158:                                              ; preds = %147
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 2
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load %struct.device*, %struct.device** %6, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @dev_warn(%struct.device* %162, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %161, %158, %147
  %166 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %7, align 8
  %167 = call i32 @tpa6130a2_power(%struct.tpa6130a2_data* %166, i32 0)
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32, i32* %12, align 4
  store i32 %171, i32* %3, align 4
  br label %176

172:                                              ; preds = %165
  %173 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %174 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %173, i32 0, i32 0
  %175 = call i32 @devm_snd_soc_register_component(%struct.device* %174, i32* @tpa6130a2_component_driver, i32* null, i32 0)
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %172, %170, %145, %131, %95, %67, %45, %29
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.tpa6130a2_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tpa6130a2_data*) #1

declare dso_local i32 @devm_gpio_request(%struct.device*, i64, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @tpa6130a2_power(%struct.tpa6130a2_data*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
