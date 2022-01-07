; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9860.c_max9860_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9860.c_max9860_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.max9860_priv = type { i32, i64, %struct.clk*, %struct.clk*, %struct.TYPE_7__ }
%struct.clk = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DVDDIO\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get DVDDIO supply: %d\0A\00", align 1
@max9860_dvddio_event = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to register DVDDIO notifier: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to enable DVDDIO: %d\0A\00", align 1
@max9860_regmap = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed to get MCLK: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Bad mclk %luHz (needs 10MHz - 60MHz)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX9860_PSCLK_SHIFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"mclk %lu pclk %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Failed to initialize register %u: %d\0A\00", align 1
@MAX9860_INTRSTATUS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"Failed to clear INTRSTATUS: %d\0A\00", align 1
@max9860_component_driver = common dso_local global i32 0, align 4
@max9860_dai = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"Failed to register CODEC: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @max9860_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max9860_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.max9860_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.max9860_priv* @devm_kzalloc(%struct.device* %13, i32 40, i32 %14)
  store %struct.max9860_priv* %15, %struct.max9860_priv** %5, align 8
  %16 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %17 = icmp ne %struct.max9860_priv* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %247

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call %struct.clk* @devm_regulator_get(%struct.device* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %25 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %24, i32 0, i32 2
  store %struct.clk* %23, %struct.clk** %25, align 8
  %26 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %27 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %26, i32 0, i32 2
  %28 = load %struct.clk*, %struct.clk** %27, align 8
  %29 = call i64 @IS_ERR(%struct.clk* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %21
  %32 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %33 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %32, i32 0, i32 2
  %34 = load %struct.clk*, %struct.clk** %33, align 8
  %35 = call i32 @PTR_ERR(%struct.clk* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @EPROBE_DEFER, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %31
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %247

46:                                               ; preds = %21
  %47 = load i32, i32* @max9860_dvddio_event, align 4
  %48 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %49 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %52 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %51, i32 0, i32 2
  %53 = load %struct.clk*, %struct.clk** %52, align 8
  %54 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %55 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %54, i32 0, i32 4
  %56 = call i32 @devm_regulator_register_notifier(%struct.clk* %53, %struct.TYPE_7__* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %46
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %46
  %64 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %65 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %64, i32 0, i32 2
  %66 = load %struct.clk*, %struct.clk** %65, align 8
  %67 = call i32 @regulator_enable(%struct.clk* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %247

75:                                               ; preds = %63
  %76 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %77 = call %struct.clk* @devm_regmap_init_i2c(%struct.i2c_client* %76, %struct.TYPE_6__* @max9860_regmap)
  %78 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %79 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %78, i32 0, i32 3
  store %struct.clk* %77, %struct.clk** %79, align 8
  %80 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %81 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %80, i32 0, i32 3
  %82 = load %struct.clk*, %struct.clk** %81, align 8
  %83 = call i64 @IS_ERR(%struct.clk* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %87 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %86, i32 0, i32 3
  %88 = load %struct.clk*, %struct.clk** %87, align 8
  %89 = call i32 @PTR_ERR(%struct.clk* %88)
  store i32 %89, i32* %6, align 4
  br label %241

90:                                               ; preds = %75
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %93 = call i32 @dev_set_drvdata(%struct.device* %91, %struct.max9860_priv* %92)
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = call %struct.clk* @clk_get(%struct.device* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store %struct.clk* %95, %struct.clk** %7, align 8
  %96 = load %struct.clk*, %struct.clk** %7, align 8
  %97 = call i64 @IS_ERR(%struct.clk* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %90
  %100 = load %struct.clk*, %struct.clk** %7, align 8
  %101 = call i32 @PTR_ERR(%struct.clk* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @EPROBE_DEFER, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp ne i32 %102, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %106, %99
  br label %241

111:                                              ; preds = %90
  %112 = load %struct.clk*, %struct.clk** %7, align 8
  %113 = call i64 @clk_get_rate(%struct.clk* %112)
  store i64 %113, i64* %8, align 8
  %114 = load %struct.clk*, %struct.clk** %7, align 8
  %115 = call i32 @clk_put(%struct.clk* %114)
  %116 = load i64, i64* %8, align 8
  %117 = icmp ugt i64 %116, 60000000
  br i1 %117, label %121, label %118

118:                                              ; preds = %111
  %119 = load i64, i64* %8, align 8
  %120 = icmp ult i64 %119, 10000000
  br i1 %120, label %121, label %128

121:                                              ; preds = %118, %111
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = load i64, i64* %8, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %122, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %6, align 4
  br label %241

128:                                              ; preds = %118
  %129 = load i64, i64* %8, align 8
  %130 = icmp uge i64 %129, 40000000
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %133 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %132, i32 0, i32 0
  store i32 3, i32* %133, align 8
  br label %144

134:                                              ; preds = %128
  %135 = load i64, i64* %8, align 8
  %136 = icmp uge i64 %135, 20000000
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %139 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %138, i32 0, i32 0
  store i32 2, i32* %139, align 8
  br label %143

140:                                              ; preds = %134
  %141 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %142 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  br label %143

143:                                              ; preds = %140, %137
  br label %144

144:                                              ; preds = %143, %131
  %145 = load i64, i64* %8, align 8
  %146 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %147 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 %148, 1
  %150 = zext i32 %149 to i64
  %151 = lshr i64 %145, %150
  %152 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %153 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  %154 = load i32, i32* @MAX9860_PSCLK_SHIFT, align 4
  %155 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %156 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = shl i32 %157, %154
  store i32 %158, i32* %156, align 8
  %159 = load %struct.device*, %struct.device** %4, align 8
  %160 = load i64, i64* %8, align 8
  %161 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %162 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @dev_dbg(%struct.device* %159, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64 %160, i64 %163)
  %165 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %166 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %165, i32 0, i32 3
  %167 = load %struct.clk*, %struct.clk** %166, align 8
  %168 = call i32 @regcache_cache_bypass(%struct.clk* %167, i32 1)
  store i32 0, i32* %9, align 4
  br label %169

169:                                              ; preds = %203, %144
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @max9860_regmap, i32 0, i32 0), align 8
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %206

173:                                              ; preds = %169
  %174 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %175 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %174, i32 0, i32 3
  %176 = load %struct.clk*, %struct.clk** %175, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @max9860_regmap, i32 0, i32 1), align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @max9860_regmap, i32 0, i32 1), align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @regmap_write(%struct.clk* %176, i32 %182, i32 %188)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %173
  %193 = load %struct.device*, %struct.device** %4, align 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @max9860_regmap, i32 0, i32 1), align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %6, align 4
  %201 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %193, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %199, i32 %200)
  br label %241

202:                                              ; preds = %173
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %9, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %9, align 4
  br label %169

206:                                              ; preds = %169
  %207 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %208 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %207, i32 0, i32 3
  %209 = load %struct.clk*, %struct.clk** %208, align 8
  %210 = call i32 @regcache_cache_bypass(%struct.clk* %209, i32 0)
  %211 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %212 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %211, i32 0, i32 3
  %213 = load %struct.clk*, %struct.clk** %212, align 8
  %214 = load i32, i32* @MAX9860_INTRSTATUS, align 4
  %215 = call i32 @regmap_read(%struct.clk* %213, i32 %214, i32* %10)
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* %6, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %206
  %219 = load %struct.device*, %struct.device** %4, align 8
  %220 = load i32, i32* %6, align 4
  %221 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %219, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %220)
  br label %241

222:                                              ; preds = %206
  %223 = load %struct.device*, %struct.device** %4, align 8
  %224 = call i32 @pm_runtime_set_active(%struct.device* %223)
  %225 = load %struct.device*, %struct.device** %4, align 8
  %226 = call i32 @pm_runtime_enable(%struct.device* %225)
  %227 = load %struct.device*, %struct.device** %4, align 8
  %228 = call i32 @pm_runtime_idle(%struct.device* %227)
  %229 = load %struct.device*, %struct.device** %4, align 8
  %230 = call i32 @devm_snd_soc_register_component(%struct.device* %229, i32* @max9860_component_driver, i32* @max9860_dai, i32 1)
  store i32 %230, i32* %6, align 4
  %231 = load i32, i32* %6, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %222
  %234 = load %struct.device*, %struct.device** %4, align 8
  %235 = load i32, i32* %6, align 4
  %236 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %234, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %235)
  br label %238

237:                                              ; preds = %222
  store i32 0, i32* %2, align 4
  br label %247

238:                                              ; preds = %233
  %239 = load %struct.device*, %struct.device** %4, align 8
  %240 = call i32 @pm_runtime_disable(%struct.device* %239)
  br label %241

241:                                              ; preds = %238, %218, %192, %121, %110, %85
  %242 = load %struct.max9860_priv*, %struct.max9860_priv** %5, align 8
  %243 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %242, i32 0, i32 2
  %244 = load %struct.clk*, %struct.clk** %243, align 8
  %245 = call i32 @regulator_disable(%struct.clk* %244)
  %246 = load i32, i32* %6, align 4
  store i32 %246, i32* %2, align 4
  br label %247

247:                                              ; preds = %241, %237, %70, %44, %18
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local %struct.max9860_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.clk* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @devm_regulator_register_notifier(%struct.clk*, %struct.TYPE_7__*) #1

declare dso_local i32 @regulator_enable(%struct.clk*) #1

declare dso_local %struct.clk* @devm_regmap_init_i2c(%struct.i2c_client*, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.max9860_priv*) #1

declare dso_local %struct.clk* @clk_get(%struct.device*, i8*) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i64) #1

declare dso_local i32 @regcache_cache_bypass(%struct.clk*, i32) #1

declare dso_local i32 @regmap_write(%struct.clk*, i32, i32) #1

declare dso_local i32 @regmap_read(%struct.clk*, i32, i32*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_idle(%struct.device*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @regulator_disable(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
