; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.device_node*, %struct.aic3x_pdata* }
%struct.device_node = type { i32 }
%struct.aic3x_pdata = type { i32, i8*, %struct.aic3x_setup_data* }
%struct.aic3x_setup_data = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.aic3x_priv = type { i32, i64, i32, i32, %struct.TYPE_10__*, i8*, %struct.aic3x_setup_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@aic3x_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"reset-gpios\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"gpio-reset\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Using deprecated property \22gpio-reset\22, please update your DT\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ai3x-gpio-func\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"ai3x-micbias-vg\00", align 1
@AIC3X_MICBIAS_2_0V = common dso_local global i8* null, align 8
@AIC3X_MICBIAS_2_5V = common dso_local global i8* null, align 8
@AIC3X_MICBIAS_AVDDV = common dso_local global i8* null, align 8
@AIC3X_MICBIAS_OFF = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"Unsuitable MicBias voltage found in DT\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"tlv320aic3x reset\00", align 1
@aic3x_supply_names = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@AIC3X_MODEL_3007 = common dso_local global i64 0, align 8
@aic3007_class_d = common dso_local global %struct.TYPE_10__* null, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"Failed to init class D: %d\0A\00", align 1
@soc_component_dev_aic3x = common dso_local global i32 0, align 4
@aic3x_dai = common dso_local global i32 0, align 4
@reset_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @aic3x_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic3x_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.aic3x_pdata*, align 8
  %7 = alloca %struct.aic3x_priv*, align 8
  %8 = alloca %struct.aic3x_setup_data*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.aic3x_pdata*, %struct.aic3x_pdata** %15, align 8
  store %struct.aic3x_pdata* %16, %struct.aic3x_pdata** %6, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %9, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @devm_kzalloc(%struct.TYPE_11__* %22, i32 48, i32 %23)
  %25 = bitcast i8* %24 to %struct.aic3x_priv*
  store %struct.aic3x_priv* %25, %struct.aic3x_priv** %7, align 8
  %26 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %27 = icmp ne %struct.aic3x_priv* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %284

31:                                               ; preds = %2
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %32, i32* @aic3x_regmap)
  %34 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %35 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %37 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %43 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %3, align 4
  br label %284

47:                                               ; preds = %31
  %48 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %49 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @regcache_cache_only(i32 %50, i32 1)
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %54 = call i32 @i2c_set_clientdata(%struct.i2c_client* %52, %struct.aic3x_priv* %53)
  %55 = load %struct.aic3x_pdata*, %struct.aic3x_pdata** %6, align 8
  %56 = icmp ne %struct.aic3x_pdata* %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %47
  %58 = load %struct.aic3x_pdata*, %struct.aic3x_pdata** %6, align 8
  %59 = getelementptr inbounds %struct.aic3x_pdata, %struct.aic3x_pdata* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %62 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.aic3x_pdata*, %struct.aic3x_pdata** %6, align 8
  %64 = getelementptr inbounds %struct.aic3x_pdata, %struct.aic3x_pdata* %63, i32 0, i32 2
  %65 = load %struct.aic3x_setup_data*, %struct.aic3x_setup_data** %64, align 8
  %66 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %67 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %66, i32 0, i32 6
  store %struct.aic3x_setup_data* %65, %struct.aic3x_setup_data** %67, align 8
  %68 = load %struct.aic3x_pdata*, %struct.aic3x_pdata** %6, align 8
  %69 = getelementptr inbounds %struct.aic3x_pdata, %struct.aic3x_pdata* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %72 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  br label %158

73:                                               ; preds = %47
  %74 = load %struct.device_node*, %struct.device_node** %9, align 8
  %75 = icmp ne %struct.device_node* %74, null
  br i1 %75, label %76, label %154

76:                                               ; preds = %73
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i8* @devm_kzalloc(%struct.TYPE_11__* %78, i32 4, i32 %79)
  %81 = bitcast i8* %80 to %struct.aic3x_setup_data*
  store %struct.aic3x_setup_data* %81, %struct.aic3x_setup_data** %8, align 8
  %82 = load %struct.aic3x_setup_data*, %struct.aic3x_setup_data** %8, align 8
  %83 = icmp ne %struct.aic3x_setup_data* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %76
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %284

87:                                               ; preds = %76
  %88 = load %struct.device_node*, %struct.device_node** %9, align 8
  %89 = call i32 @of_get_named_gpio(%struct.device_node* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %95 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %112

96:                                               ; preds = %87
  %97 = load %struct.device_node*, %struct.device_node** %9, align 8
  %98 = call i32 @of_get_named_gpio(%struct.device_node* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = call i32 @dev_warn(%struct.TYPE_11__* %103, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %107 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  br label %111

108:                                              ; preds = %96
  %109 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %110 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %109, i32 0, i32 0
  store i32 -1, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %101
  br label %112

112:                                              ; preds = %111, %92
  %113 = load %struct.device_node*, %struct.device_node** %9, align 8
  %114 = load %struct.aic3x_setup_data*, %struct.aic3x_setup_data** %8, align 8
  %115 = getelementptr inbounds %struct.aic3x_setup_data, %struct.aic3x_setup_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @of_property_read_u32_array(%struct.device_node* %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %116, i32 2)
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load %struct.aic3x_setup_data*, %struct.aic3x_setup_data** %8, align 8
  %121 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %122 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %121, i32 0, i32 6
  store %struct.aic3x_setup_data* %120, %struct.aic3x_setup_data** %122, align 8
  br label %123

123:                                              ; preds = %119, %112
  %124 = load %struct.device_node*, %struct.device_node** %9, align 8
  %125 = call i32 @of_property_read_u32(%struct.device_node* %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %12)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %149, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %12, align 4
  switch i32 %128, label %141 [
    i32 1, label %129
    i32 2, label %133
    i32 3, label %137
  ]

129:                                              ; preds = %127
  %130 = load i8*, i8** @AIC3X_MICBIAS_2_0V, align 8
  %131 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %132 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %131, i32 0, i32 5
  store i8* %130, i8** %132, align 8
  br label %148

133:                                              ; preds = %127
  %134 = load i8*, i8** @AIC3X_MICBIAS_2_5V, align 8
  %135 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %136 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  br label %148

137:                                              ; preds = %127
  %138 = load i8*, i8** @AIC3X_MICBIAS_AVDDV, align 8
  %139 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %140 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %139, i32 0, i32 5
  store i8* %138, i8** %140, align 8
  br label %148

141:                                              ; preds = %127
  %142 = load i8*, i8** @AIC3X_MICBIAS_OFF, align 8
  %143 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %144 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %143, i32 0, i32 5
  store i8* %142, i8** %144, align 8
  %145 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %146 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %145, i32 0, i32 0
  %147 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %146, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %148

148:                                              ; preds = %141, %137, %133, %129
  br label %153

149:                                              ; preds = %123
  %150 = load i8*, i8** @AIC3X_MICBIAS_OFF, align 8
  %151 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %152 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %151, i32 0, i32 5
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %149, %148
  br label %157

154:                                              ; preds = %73
  %155 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %156 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %155, i32 0, i32 0
  store i32 -1, i32* %156, align 8
  br label %157

157:                                              ; preds = %154, %153
  br label %158

158:                                              ; preds = %157, %57
  %159 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %160 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %163 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %162, i32 0, i32 1
  store i64 %161, i64* %163, align 8
  %164 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %165 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @gpio_is_valid(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %158
  %170 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %171 = call i32 @aic3x_is_shared_reset(%struct.aic3x_priv* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %186, label %173

173:                                              ; preds = %169
  %174 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %175 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @gpio_request(i32 %176, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %282

181:                                              ; preds = %173
  %182 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %183 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @gpio_direction_output(i32 %184, i32 0)
  br label %186

186:                                              ; preds = %181, %169, %158
  store i32 0, i32* %11, align 4
  br label %187

187:                                              ; preds = %207, %186
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %190 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %189, i32 0, i32 4
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %191)
  %193 = icmp slt i32 %188, %192
  br i1 %193, label %194, label %210

194:                                              ; preds = %187
  %195 = load i32*, i32** @aic3x_supply_names, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %201 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %200, i32 0, i32 4
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  store i32 %199, i32* %206, align 4
  br label %207

207:                                              ; preds = %194
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %11, align 4
  br label %187

210:                                              ; preds = %187
  %211 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %212 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %211, i32 0, i32 0
  %213 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %214 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %213, i32 0, i32 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  %216 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %215)
  %217 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %218 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %217, i32 0, i32 4
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = call i32 @devm_regulator_bulk_get(%struct.TYPE_11__* %212, i32 %216, %struct.TYPE_10__* %219)
  store i32 %220, i32* %10, align 4
  %221 = load i32, i32* %10, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %210
  %224 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %225 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %224, i32 0, i32 0
  %226 = load i32, i32* %10, align 4
  %227 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %225, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %226)
  br label %266

228:                                              ; preds = %210
  %229 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %230 = call i32 @aic3x_configure_ocmv(%struct.i2c_client* %229)
  %231 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %232 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @AIC3X_MODEL_3007, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %252

236:                                              ; preds = %228
  %237 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %238 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** @aic3007_class_d, align 8
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** @aic3007_class_d, align 8
  %242 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %241)
  %243 = call i32 @regmap_register_patch(i32 %239, %struct.TYPE_10__* %240, i32 %242)
  store i32 %243, i32* %10, align 4
  %244 = load i32, i32* %10, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %236
  %247 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %248 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %247, i32 0, i32 0
  %249 = load i32, i32* %10, align 4
  %250 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %248, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %249)
  br label %251

251:                                              ; preds = %246, %236
  br label %252

252:                                              ; preds = %251, %228
  %253 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %254 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %253, i32 0, i32 0
  %255 = call i32 @devm_snd_soc_register_component(%struct.TYPE_11__* %254, i32* @soc_component_dev_aic3x, i32* @aic3x_dai, i32 1)
  store i32 %255, i32* %10, align 4
  %256 = load i32, i32* %10, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %252
  br label %266

259:                                              ; preds = %252
  %260 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %261 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %260, i32 0, i32 2
  %262 = call i32 @INIT_LIST_HEAD(i32* %261)
  %263 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %264 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %263, i32 0, i32 2
  %265 = call i32 @list_add(i32* %264, i32* @reset_list)
  store i32 0, i32* %3, align 4
  br label %284

266:                                              ; preds = %258, %223
  %267 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %268 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i64 @gpio_is_valid(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %281

272:                                              ; preds = %266
  %273 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %274 = call i32 @aic3x_is_shared_reset(%struct.aic3x_priv* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %281, label %276

276:                                              ; preds = %272
  %277 = load %struct.aic3x_priv*, %struct.aic3x_priv** %7, align 8
  %278 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @gpio_free(i32 %279)
  br label %281

281:                                              ; preds = %276, %272, %266
  br label %282

282:                                              ; preds = %281, %180
  %283 = load i32, i32* %10, align 4
  store i32 %283, i32* %3, align 4
  br label %284

284:                                              ; preds = %282, %259, %84, %41, %28
  %285 = load i32, i32* %3, align 4
  ret i32 %285
}

declare dso_local i8* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.aic3x_priv*) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @of_property_read_u32_array(%struct.device_node*, i8*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @aic3x_is_shared_reset(%struct.aic3x_priv*) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_11__*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @aic3x_configure_ocmv(%struct.i2c_client*) #1

declare dso_local i32 @regmap_register_patch(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_11__*, i32*, i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
