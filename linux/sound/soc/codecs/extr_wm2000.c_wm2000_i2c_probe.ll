; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.wm2000_priv = type { i32, i32, i32*, i32, i32, i32, %struct.TYPE_4__*, %struct.i2c_client*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wm2000_platform_data = type { i8*, i32 }
%struct.firmware = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm2000_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@WM2000_NUM_SUPPLIES = common dso_local global i32 0, align 4
@wm2000_supplies = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to get supplies: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@WM2000_REG_ID1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Unable to read ID1: %d\0A\00", align 1
@WM2000_REG_ID2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Unable to read ID2: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Device is not a WM2000 - ID %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@WM2000_REG_REVISON = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Unable to read Revision: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"revision %c\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"MCLK\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Failed to get MCLK: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"wm2000_anc.bin\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Failed to acquire ANC data: %d\0A\00", align 1
@soc_component_dev_wm2000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm2000_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm2000_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm2000_priv*, align 8
  %7 = alloca %struct.wm2000_platform_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store %struct.firmware* null, %struct.firmware** %9, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @devm_kzalloc(i32* %15, i32 64, i32 %16)
  %18 = bitcast i8* %17 to %struct.wm2000_priv*
  store %struct.wm2000_priv* %18, %struct.wm2000_priv** %6, align 8
  %19 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %20 = icmp ne %struct.wm2000_priv* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %288

24:                                               ; preds = %2
  %25 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %26 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %25, i32 0, i32 10
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %31 = call i32 @dev_set_drvdata(i32* %29, %struct.wm2000_priv* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %32, i32* @wm2000_regmap)
  %34 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %35 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 4
  %36 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %37 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %24
  %42 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %43 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %284

50:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %68, %50
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @WM2000_NUM_SUPPLIES, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i32*, i32** @wm2000_supplies, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %62 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %61, i32 0, i32 6
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %60, i32* %67, align 4
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %51

71:                                               ; preds = %51
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load i32, i32* @WM2000_NUM_SUPPLIES, align 4
  %75 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %76 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %75, i32 0, i32 6
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = call i32 @devm_regulator_bulk_get(i32* %73, i32 %74, %struct.TYPE_4__* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %71
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 0
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %3, align 4
  br label %288

87:                                               ; preds = %71
  %88 = load i32, i32* @WM2000_NUM_SUPPLIES, align 4
  %89 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %90 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %89, i32 0, i32 6
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = call i32 @regulator_bulk_enable(i32 %88, %struct.TYPE_4__* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %3, align 4
  br label %288

101:                                              ; preds = %87
  %102 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %103 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @WM2000_REG_ID1, align 4
  %106 = call i32 @regmap_read(i32 %104, i32 %105, i32* %12)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 0
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %3, align 4
  br label %288

115:                                              ; preds = %101
  %116 = load i32, i32* %12, align 4
  %117 = shl i32 %116, 8
  store i32 %117, i32* %13, align 4
  %118 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %119 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @WM2000_REG_ID2, align 4
  %122 = call i32 @regmap_read(i32 %120, i32 %121, i32* %12)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %115
  %126 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %127 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %126, i32 0, i32 0
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @dev_err(i32* %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %3, align 4
  br label %288

131:                                              ; preds = %115
  %132 = load i32, i32* %12, align 4
  %133 = and i32 %132, 255
  %134 = load i32, i32* %13, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 8192
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 0
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @dev_err(i32* %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @ENODEV, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %10, align 4
  br label %278

145:                                              ; preds = %131
  %146 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %147 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %146, i32 0, i32 9
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @WM2000_REG_REVISON, align 4
  %150 = call i32 @regmap_read(i32 %148, i32 %149, i32* %12)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %145
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %154, i32 0, i32 0
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @dev_err(i32* %155, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %3, align 4
  br label %288

159:                                              ; preds = %145
  %160 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %161 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %160, i32 0, i32 0
  %162 = load i32, i32* %12, align 4
  %163 = add i32 %162, 65
  %164 = call i32 @dev_info(i32* %161, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %163)
  %165 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %166 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %165, i32 0, i32 0
  %167 = call i32 @devm_clk_get(i32* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %168 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %169 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %168, i32 0, i32 8
  store i32 %167, i32* %169, align 8
  %170 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %171 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 8
  %173 = call i64 @IS_ERR(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %159
  %176 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %177 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %176, i32 0, i32 8
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @PTR_ERR(i32 %178)
  store i32 %179, i32* %10, align 4
  %180 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %181 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %180, i32 0, i32 0
  %182 = load i32, i32* %10, align 4
  %183 = call i32 @dev_err(i32* %181, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %182)
  br label %278

184:                                              ; preds = %159
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  %185 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %186 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %185, i32 0, i32 0
  %187 = call %struct.wm2000_platform_data* @dev_get_platdata(i32* %186)
  store %struct.wm2000_platform_data* %187, %struct.wm2000_platform_data** %7, align 8
  %188 = load %struct.wm2000_platform_data*, %struct.wm2000_platform_data** %7, align 8
  %189 = icmp ne %struct.wm2000_platform_data* %188, null
  br i1 %189, label %190, label %208

190:                                              ; preds = %184
  %191 = load %struct.wm2000_platform_data*, %struct.wm2000_platform_data** %7, align 8
  %192 = getelementptr inbounds %struct.wm2000_platform_data, %struct.wm2000_platform_data* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %198 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load %struct.wm2000_platform_data*, %struct.wm2000_platform_data** %7, align 8
  %200 = getelementptr inbounds %struct.wm2000_platform_data, %struct.wm2000_platform_data* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %190
  %204 = load %struct.wm2000_platform_data*, %struct.wm2000_platform_data** %7, align 8
  %205 = getelementptr inbounds %struct.wm2000_platform_data, %struct.wm2000_platform_data* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  store i8* %206, i8** %8, align 8
  br label %207

207:                                              ; preds = %203, %190
  br label %208

208:                                              ; preds = %207, %184
  %209 = load i8*, i8** %8, align 8
  %210 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %211 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %210, i32 0, i32 0
  %212 = call i32 @request_firmware(%struct.firmware** %9, i8* %209, i32* %211)
  store i32 %212, i32* %10, align 4
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %208
  %216 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %217 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %216, i32 0, i32 0
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @dev_err(i32* %217, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %218)
  br label %278

220:                                              ; preds = %208
  %221 = load %struct.firmware*, %struct.firmware** %9, align 8
  %222 = getelementptr inbounds %struct.firmware, %struct.firmware* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 2
  %225 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %226 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  %227 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %228 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %227, i32 0, i32 0
  %229 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %230 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @GFP_KERNEL, align 4
  %233 = call i8* @devm_kzalloc(i32* %228, i32 %231, i32 %232)
  %234 = bitcast i8* %233 to i32*
  %235 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %236 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %235, i32 0, i32 2
  store i32* %234, i32** %236, align 8
  %237 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %238 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = icmp eq i32* %239, null
  br i1 %240, label %241, label %244

241:                                              ; preds = %220
  %242 = load i32, i32* @ENOMEM, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %10, align 4
  br label %278

244:                                              ; preds = %220
  %245 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %246 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  store i32 128, i32* %248, align 4
  %249 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %250 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 1
  store i32 0, i32* %252, align 4
  %253 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %254 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 2
  %257 = load %struct.firmware*, %struct.firmware** %9, align 8
  %258 = getelementptr inbounds %struct.firmware, %struct.firmware* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.firmware*, %struct.firmware** %9, align 8
  %261 = getelementptr inbounds %struct.firmware, %struct.firmware* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @memcpy(i32* %256, i32 %259, i32 %262)
  %264 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %265 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %264, i32 0, i32 3
  store i32 1, i32* %265, align 8
  %266 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %267 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %266, i32 0, i32 4
  store i32 1, i32* %267, align 4
  %268 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %269 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %268, i32 0, i32 5
  store i32 1, i32* %269, align 8
  %270 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %271 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %272 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %271, i32 0, i32 7
  store %struct.i2c_client* %270, %struct.i2c_client** %272, align 8
  %273 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %274 = call i32 @wm2000_reset(%struct.wm2000_priv* %273)
  %275 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %276 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %275, i32 0, i32 0
  %277 = call i32 @devm_snd_soc_register_component(i32* %276, i32* @soc_component_dev_wm2000, i32* null, i32 0)
  store i32 %277, i32* %10, align 4
  br label %278

278:                                              ; preds = %244, %241, %215, %175, %138
  %279 = load i32, i32* @WM2000_NUM_SUPPLIES, align 4
  %280 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %281 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %280, i32 0, i32 6
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %281, align 8
  %283 = call i32 @regulator_bulk_disable(i32 %279, %struct.TYPE_4__* %282)
  br label %284

284:                                              ; preds = %278, %41
  %285 = load %struct.firmware*, %struct.firmware** %9, align 8
  %286 = call i32 @release_firmware(%struct.firmware* %285)
  %287 = load i32, i32* %10, align 4
  store i32 %287, i32* %3, align 4
  br label %288

288:                                              ; preds = %284, %153, %125, %109, %95, %81, %21
  %289 = load i32, i32* %3, align 4
  ret i32 %289
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.wm2000_priv*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local %struct.wm2000_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @wm2000_reset(%struct.wm2000_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
