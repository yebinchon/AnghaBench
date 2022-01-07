; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas6424.c_tas6424_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas6424.c_tas6424_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tas6424_data = type { i32, i32*, %struct.TYPE_6__*, i32*, i32*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tas6424_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unable to allocate register map: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to get standby GPIO: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to get nmute GPIO: %ld\0A\00", align 1
@tas6424_supply_names = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"unable to request supplies: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"unable to enable supplies: %d\0A\00", align 1
@TAS6424_MODE_CTRL = common dso_local global i32 0, align 4
@TAS6424_RESET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"unable to reset device: %d\0A\00", align 1
@tas6424_fault_check_work = common dso_local global i32 0, align 4
@soc_codec_dev_tas6424 = common dso_local global i32 0, align 4
@tas6424_dai = common dso_local global %struct.TYPE_6__* null, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"unable to register codec: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tas6424_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas6424_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.tas6424_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.tas6424_data* @devm_kzalloc(%struct.device* %12, i32 48, i32 %13)
  store %struct.tas6424_data* %14, %struct.tas6424_data** %7, align 8
  %15 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %16 = icmp ne %struct.tas6424_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %199

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %23 = call i32 @dev_set_drvdata(%struct.device* %21, %struct.tas6424_data* %22)
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %26 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %25, i32 0, i32 5
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = call i32* @devm_regmap_init_i2c(%struct.i2c_client* %27, i32* @tas6424_regmap_config)
  %29 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %30 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %32 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @IS_ERR(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %20
  %37 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %38 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @PTR_ERR(i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %199

45:                                               ; preds = %20
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %48 = call i8* @devm_gpiod_get_optional(%struct.device* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %51 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %50, i32 0, i32 4
  store i32* %49, i32** %51, align 8
  %52 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %53 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @IS_ERR(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %45
  %58 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %59 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @PTR_ERR(i32* %60)
  %62 = load i32, i32* @EPROBE_DEFER, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @EPROBE_DEFER, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %199

68:                                               ; preds = %57
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %71 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @PTR_ERR(i32* %72)
  %74 = call i32 @dev_info(%struct.device* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %76 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %75, i32 0, i32 4
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %68, %45
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %80 = call i8* @devm_gpiod_get_optional(%struct.device* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %83 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %82, i32 0, i32 3
  store i32* %81, i32** %83, align 8
  %84 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %85 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = call i64 @IS_ERR(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %77
  %90 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %91 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @PTR_ERR(i32* %92)
  %94 = load i32, i32* @EPROBE_DEFER, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32, i32* @EPROBE_DEFER, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %199

100:                                              ; preds = %89
  %101 = load %struct.device*, %struct.device** %6, align 8
  %102 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %103 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @PTR_ERR(i32* %104)
  %106 = call i32 @dev_info(%struct.device* %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %108 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %107, i32 0, i32 3
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %100, %77
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %130, %109
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %113 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %112, i32 0, i32 2
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %114)
  %116 = icmp slt i32 %111, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %110
  %118 = load i32*, i32** @tas6424_supply_names, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %124 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %123, i32 0, i32 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32 %122, i32* %129, align 4
  br label %130

130:                                              ; preds = %117
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %110

133:                                              ; preds = %110
  %134 = load %struct.device*, %struct.device** %6, align 8
  %135 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %136 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %135, i32 0, i32 2
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %137)
  %139 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %140 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %139, i32 0, i32 2
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = call i32 @devm_regulator_bulk_get(%struct.device* %134, i32 %138, %struct.TYPE_6__* %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %133
  %146 = load %struct.device*, %struct.device** %6, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @dev_err(%struct.device* %146, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %3, align 4
  br label %199

150:                                              ; preds = %133
  %151 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %152 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %151, i32 0, i32 2
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %153)
  %155 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %156 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %155, i32 0, i32 2
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = call i32 @regulator_bulk_enable(i32 %154, %struct.TYPE_6__* %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %150
  %162 = load %struct.device*, %struct.device** %6, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @dev_err(%struct.device* %162, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %3, align 4
  br label %199

166:                                              ; preds = %150
  %167 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %168 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* @TAS6424_MODE_CTRL, align 4
  %171 = load i32, i32* @TAS6424_RESET, align 4
  %172 = load i32, i32* @TAS6424_RESET, align 4
  %173 = call i32 @regmap_update_bits(i32* %169, i32 %170, i32 %171, i32 %172)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %166
  %177 = load %struct.device*, %struct.device** %6, align 8
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @dev_err(%struct.device* %177, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %3, align 4
  br label %199

181:                                              ; preds = %166
  %182 = load %struct.tas6424_data*, %struct.tas6424_data** %7, align 8
  %183 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %182, i32 0, i32 0
  %184 = load i32, i32* @tas6424_fault_check_work, align 4
  %185 = call i32 @INIT_DELAYED_WORK(i32* %183, i32 %184)
  %186 = load %struct.device*, %struct.device** %6, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tas6424_dai, align 8
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tas6424_dai, align 8
  %189 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %188)
  %190 = call i32 @devm_snd_soc_register_component(%struct.device* %186, i32* @soc_codec_dev_tas6424, %struct.TYPE_6__* %187, i32 %189)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %181
  %194 = load %struct.device*, %struct.device** %6, align 8
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @dev_err(%struct.device* %194, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %3, align 4
  br label %199

198:                                              ; preds = %181
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %198, %193, %176, %161, %145, %97, %65, %36, %17
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local %struct.tas6424_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.tas6424_data*) #1

declare dso_local i32* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @regmap_update_bits(i32*, i32, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
