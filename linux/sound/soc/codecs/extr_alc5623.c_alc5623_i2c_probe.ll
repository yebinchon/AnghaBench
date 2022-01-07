; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5623.c_alc5623_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5623.c_alc5623_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.i2c_client = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node*, %struct.alc5623_platform_data* }
%struct.device_node = type { i32 }
%struct.alc5623_platform_data = type { i8*, i8* }
%struct.i2c_device_id = type { i32 }
%struct.alc5623_priv = type { i32, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@alc5623_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to initialise I/O: %d\0A\00", align 1
@ALC5623_VENDOR_ID1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to read vendor ID1: %d\0A\00", align 1
@ALC5623_VENDOR_ID2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to read vendor ID2: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"unknown or wrong codec\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Expected %x:%lx, got %x:%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Found codec id : alc56%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"add-ctrl\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"jack-det-ctrl\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"alc5621-hifi\00", align 1
@alc5623_dai = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"alc5622-hifi\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"alc5623-hifi\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@soc_component_device_alc5623 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"Failed to register codec: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @alc5623_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc5623_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.alc5623_platform_data*, align 8
  %7 = alloca %struct.alc5623_priv*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.alc5623_priv* @devm_kzalloc(%struct.TYPE_7__* %14, i32 32, i32 %15)
  store %struct.alc5623_priv* %16, %struct.alc5623_priv** %7, align 8
  %17 = load %struct.alc5623_priv*, %struct.alc5623_priv** %7, align 8
  %18 = icmp eq %struct.alc5623_priv* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %176

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %23, i32* @alc5623_regmap)
  %25 = load %struct.alc5623_priv*, %struct.alc5623_priv** %7, align 8
  %26 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.alc5623_priv*, %struct.alc5623_priv** %7, align 8
  %28 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %22
  %33 = load %struct.alc5623_priv*, %struct.alc5623_priv** %7, align 8
  %34 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* %11, align 4
  %40 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %3, align 4
  br label %176

42:                                               ; preds = %22
  %43 = load %struct.alc5623_priv*, %struct.alc5623_priv** %7, align 8
  %44 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ALC5623_VENDOR_ID1, align 4
  %47 = call i32 @regmap_read(i32 %45, i32 %46, i32* %9)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i32, i32* %11, align 4
  %54 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %3, align 4
  br label %176

56:                                               ; preds = %42
  %57 = load %struct.alc5623_priv*, %struct.alc5623_priv** %7, align 8
  %58 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ALC5623_VENDOR_ID2, align 4
  %61 = call i32 @regmap_read(i32 %59, i32 %60, i32* %10)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load i32, i32* %11, align 4
  %68 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %3, align 4
  br label %176

70:                                               ; preds = %56
  %71 = load i32, i32* %10, align 4
  %72 = lshr i32 %71, 8
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 4332
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %78 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %75, %70
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 0
  %84 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %88 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 4332, i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %176

95:                                               ; preds = %75
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @dev_dbg(%struct.TYPE_7__* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load %struct.alc5623_platform_data*, %struct.alc5623_platform_data** %102, align 8
  store %struct.alc5623_platform_data* %103, %struct.alc5623_platform_data** %6, align 8
  %104 = load %struct.alc5623_platform_data*, %struct.alc5623_platform_data** %6, align 8
  %105 = icmp ne %struct.alc5623_platform_data* %104, null
  br i1 %105, label %106, label %117

106:                                              ; preds = %95
  %107 = load %struct.alc5623_platform_data*, %struct.alc5623_platform_data** %6, align 8
  %108 = getelementptr inbounds %struct.alc5623_platform_data, %struct.alc5623_platform_data* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.alc5623_priv*, %struct.alc5623_priv** %7, align 8
  %111 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load %struct.alc5623_platform_data*, %struct.alc5623_platform_data** %6, align 8
  %113 = getelementptr inbounds %struct.alc5623_platform_data, %struct.alc5623_platform_data* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.alc5623_priv*, %struct.alc5623_priv** %7, align 8
  %116 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  br label %147

117:                                              ; preds = %95
  %118 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load %struct.device_node*, %struct.device_node** %120, align 8
  %122 = icmp ne %struct.device_node* %121, null
  br i1 %122, label %123, label %146

123:                                              ; preds = %117
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load %struct.device_node*, %struct.device_node** %126, align 8
  store %struct.device_node* %127, %struct.device_node** %8, align 8
  %128 = load %struct.device_node*, %struct.device_node** %8, align 8
  %129 = call i32 @of_property_read_u32(%struct.device_node* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %12)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %123
  %133 = load i8*, i8** %12, align 8
  %134 = load %struct.alc5623_priv*, %struct.alc5623_priv** %7, align 8
  %135 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %132, %123
  %137 = load %struct.device_node*, %struct.device_node** %8, align 8
  %138 = call i32 @of_property_read_u32(%struct.device_node* %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %12)
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load i8*, i8** %12, align 8
  %143 = load %struct.alc5623_priv*, %struct.alc5623_priv** %7, align 8
  %144 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %141, %136
  br label %146

146:                                              ; preds = %145, %117
  br label %147

147:                                              ; preds = %146, %106
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.alc5623_priv*, %struct.alc5623_priv** %7, align 8
  %150 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.alc5623_priv*, %struct.alc5623_priv** %7, align 8
  %152 = getelementptr inbounds %struct.alc5623_priv, %struct.alc5623_priv* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  switch i32 %153, label %157 [
    i32 33, label %154
    i32 34, label %155
    i32 35, label %156
  ]

154:                                              ; preds = %147
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @alc5623_dai, i32 0, i32 0), align 8
  br label %160

155:                                              ; preds = %147
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @alc5623_dai, i32 0, i32 0), align 8
  br label %160

156:                                              ; preds = %147
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @alc5623_dai, i32 0, i32 0), align 8
  br label %160

157:                                              ; preds = %147
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %176

160:                                              ; preds = %156, %155, %154
  %161 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %162 = load %struct.alc5623_priv*, %struct.alc5623_priv** %7, align 8
  %163 = call i32 @i2c_set_clientdata(%struct.i2c_client* %161, %struct.alc5623_priv* %162)
  %164 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %165 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %164, i32 0, i32 0
  %166 = call i32 @devm_snd_soc_register_component(%struct.TYPE_7__* %165, i32* @soc_component_device_alc5623, %struct.TYPE_8__* @alc5623_dai, i32 1)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %160
  %170 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %171 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %170, i32 0, i32 0
  %172 = load i32, i32* %11, align 4
  %173 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %171, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %169, %160
  %175 = load i32, i32* %11, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %174, %157, %81, %64, %50, %32, %19
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.alc5623_priv* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.alc5623_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_7__*, i32*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
