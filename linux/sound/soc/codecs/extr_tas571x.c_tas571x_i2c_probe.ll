; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas571x.c_tas571x_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas571x.c_tas571x_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.tas571x_private = type { %struct.TYPE_8__, i8*, %struct.TYPE_6__*, i8*, i8*, %struct.TYPE_7__*, i8* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.of_device_id = type { %struct.TYPE_6__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tas571x_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to request mclk: %ld\0A\00", align 1
@TAS571X_MAX_SUPPLIES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to get supplies: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pdn\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"error requesting pdn_gpio: %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"error requesting reset_gpio: %ld\0A\00", align 1
@TAS571X_OSC_TRIM_REG = common dso_local global i32 0, align 4
@tas571x_component = common dso_local global i32 0, align 4
@TAS571X_MVOL_REG = common dso_local global i32 0, align 4
@tas571x_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tas571x_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas571x_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tas571x_private*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tas571x_private* @devm_kzalloc(%struct.device* %13, i32 56, i32 %14)
  store %struct.tas571x_private* %15, %struct.tas571x_private** %6, align 8
  %16 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %17 = icmp ne %struct.tas571x_private* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %283

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %24 = call i32 @i2c_set_clientdata(%struct.i2c_client* %22, %struct.tas571x_private* %23)
  %25 = load i32, i32* @tas571x_of_match, align 4
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = call %struct.of_device_id* @of_match_device(i32 %25, %struct.device* %26)
  store %struct.of_device_id* %27, %struct.of_device_id** %8, align 8
  %28 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %29 = icmp ne %struct.of_device_id* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %32 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %35 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %34, i32 0, i32 2
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %35, align 8
  br label %44

36:                                               ; preds = %21
  %37 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = bitcast i8* %40 to %struct.TYPE_6__*
  %42 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %43 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %42, i32 0, i32 2
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %43, align 8
  br label %44

44:                                               ; preds = %36, %30
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = call i8* @devm_clk_get(%struct.device* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %48 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %50 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %49, i32 0, i32 6
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @IS_ERR(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %44
  %55 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %56 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %55, i32 0, i32 6
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @PTR_ERR(i8* %57)
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %54
  %63 = load %struct.device*, %struct.device** %7, align 8
  %64 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %65 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %64, i32 0, i32 6
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  %68 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %70 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %69, i32 0, i32 6
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @PTR_ERR(i8* %71)
  store i32 %72, i32* %3, align 4
  br label %283

73:                                               ; preds = %54, %44
  %74 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %75 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @TAS571X_MAX_SUPPLIES, align 4
  %80 = icmp sgt i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i64 @WARN_ON(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %283

87:                                               ; preds = %73
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %113, %87
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %91 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %90, i32 0, i32 2
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %89, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %88
  %97 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %98 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %97, i32 0, i32 2
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %107 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %106, i32 0, i32 5
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i32 %105, i32* %112, align 4
  br label %113

113:                                              ; preds = %96
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %88

116:                                              ; preds = %88
  %117 = load %struct.device*, %struct.device** %7, align 8
  %118 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %119 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %118, i32 0, i32 2
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %124 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %123, i32 0, i32 5
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = call i32 @devm_regulator_bulk_get(%struct.device* %117, i32 %122, %struct.TYPE_7__* %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %116
  %130 = load %struct.device*, %struct.device** %7, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @dev_err(%struct.device* %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %3, align 4
  br label %283

134:                                              ; preds = %116
  %135 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %136 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %135, i32 0, i32 2
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %141 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %140, i32 0, i32 5
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = call i32 @regulator_bulk_enable(i32 %139, %struct.TYPE_7__* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %134
  %147 = load %struct.device*, %struct.device** %7, align 8
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @dev_err(%struct.device* %147, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %3, align 4
  br label %283

151:                                              ; preds = %134
  %152 = load %struct.device*, %struct.device** %7, align 8
  %153 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %154 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %155 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %154, i32 0, i32 2
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @devm_regmap_init(%struct.device* %152, i32* null, %struct.i2c_client* %153, i32 %158)
  %160 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %161 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %163 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = call i64 @IS_ERR(i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %151
  %168 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %169 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @PTR_ERR(i8* %170)
  store i32 %171, i32* %3, align 4
  br label %283

172:                                              ; preds = %151
  %173 = load %struct.device*, %struct.device** %7, align 8
  %174 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %175 = call i8* @devm_gpiod_get_optional(%struct.device* %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %174)
  %176 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %177 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %176, i32 0, i32 4
  store i8* %175, i8** %177, align 8
  %178 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %179 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %178, i32 0, i32 4
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @IS_ERR(i8* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %172
  %184 = load %struct.device*, %struct.device** %7, align 8
  %185 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %186 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %185, i32 0, i32 4
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @PTR_ERR(i8* %187)
  %189 = call i32 @dev_err(%struct.device* %184, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %188)
  %190 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %191 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %190, i32 0, i32 4
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @PTR_ERR(i8* %192)
  store i32 %193, i32* %3, align 4
  br label %283

194:                                              ; preds = %172
  %195 = load %struct.device*, %struct.device** %7, align 8
  %196 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %197 = call i8* @devm_gpiod_get_optional(%struct.device* %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %196)
  %198 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %199 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %198, i32 0, i32 3
  store i8* %197, i8** %199, align 8
  %200 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %201 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %200, i32 0, i32 3
  %202 = load i8*, i8** %201, align 8
  %203 = call i64 @IS_ERR(i8* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %194
  %206 = load %struct.device*, %struct.device** %7, align 8
  %207 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %208 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %207, i32 0, i32 3
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @PTR_ERR(i8* %209)
  %211 = call i32 @dev_err(%struct.device* %206, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %210)
  %212 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %213 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %212, i32 0, i32 3
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @PTR_ERR(i8* %214)
  store i32 %215, i32* %3, align 4
  br label %283

216:                                              ; preds = %194
  %217 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %218 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %217, i32 0, i32 3
  %219 = load i8*, i8** %218, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = call i32 @usleep_range(i32 100, i32 200)
  %223 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %224 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %223, i32 0, i32 3
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @gpiod_set_value(i8* %225, i32 0)
  %227 = call i32 @usleep_range(i32 13500, i32 20000)
  br label %228

228:                                              ; preds = %221, %216
  br label %229

229:                                              ; preds = %228
  %230 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %231 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = load i32, i32* @TAS571X_OSC_TRIM_REG, align 4
  %234 = call i32 @regmap_write(i8* %232, i32 %233, i32 0)
  store i32 %234, i32* %10, align 4
  %235 = load i32, i32* %10, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %229
  %238 = load i32, i32* %10, align 4
  store i32 %238, i32* %3, align 4
  br label %283

239:                                              ; preds = %229
  %240 = call i32 @usleep_range(i32 50000, i32 60000)
  %241 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %242 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %241, i32 0, i32 0
  %243 = call i32 @memcpy(%struct.TYPE_8__* %242, i32* @tas571x_component, i32 8)
  %244 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %245 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %244, i32 0, i32 2
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %250 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 1
  store i32 %248, i32* %251, align 4
  %252 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %253 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %252, i32 0, i32 2
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %258 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  store i32 %256, i32* %259, align 8
  %260 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %261 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %260, i32 0, i32 2
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = icmp eq i32 %264, 2
  br i1 %265, label %266, label %277

266:                                              ; preds = %239
  %267 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %268 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %267, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = load i32, i32* @TAS571X_MVOL_REG, align 4
  %271 = call i32 @regmap_update_bits(i8* %269, i32 %270, i32 1, i32 0)
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* %10, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %266
  %275 = load i32, i32* %10, align 4
  store i32 %275, i32* %3, align 4
  br label %283

276:                                              ; preds = %266
  br label %277

277:                                              ; preds = %276, %239
  %278 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %279 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %278, i32 0, i32 0
  %280 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %281 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %280, i32 0, i32 0
  %282 = call i32 @devm_snd_soc_register_component(%struct.device* %279, %struct.TYPE_8__* %281, i32* @tas571x_dai, i32 1)
  store i32 %282, i32* %3, align 4
  br label %283

283:                                              ; preds = %277, %274, %237, %205, %183, %167, %146, %129, %84, %62, %18
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local %struct.tas571x_private* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tas571x_private*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_7__*) #1

declare dso_local i8* @devm_regmap_init(%struct.device*, i32*, %struct.i2c_client*, i32) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @gpiod_set_value(i8*, i32) #1

declare dso_local i32 @regmap_write(i8*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @regmap_update_bits(i8*, i32, i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, %struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
