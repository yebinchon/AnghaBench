; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_uniphier_aio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_uniphier_aio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.uniphier_aio_chip = type { i32, i32, i32, i32*, i32*, %struct.TYPE_2__*, %struct.platform_device*, %struct.uniphier_aio*, i8*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.uniphier_aio = type { %struct.uniphier_aio_sub*, i32, %struct.uniphier_aio_chip* }
%struct.uniphier_aio_sub = type { i32, %struct.uniphier_aio* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"socionext,syscon\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"aio\00", align 1
@SND_SOC_DAIFMT_I2S = common dso_local global i32 0, align 4
@uniphier_aio_component = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Register component failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Register platform failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uniphier_aio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.uniphier_aio_chip*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uniphier_aio*, align 8
  %10 = alloca %struct.uniphier_aio_sub*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.uniphier_aio_chip* @devm_kzalloc(%struct.device* %13, i32 72, i32 %14)
  store %struct.uniphier_aio_chip* %15, %struct.uniphier_aio_chip** %4, align 8
  %16 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %17 = icmp ne %struct.uniphier_aio_chip* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %264

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call %struct.TYPE_2__* @of_device_get_match_data(%struct.device* %22)
  %24 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %25 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %24, i32 0, i32 5
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %25, align 8
  %26 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %27 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %26, i32 0, i32 5
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %264

33:                                               ; preds = %21
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @syscon_regmap_lookup_by_phandle(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %39 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %38, i32 0, i32 9
  store i32* %37, i32** %39, align 8
  %40 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %41 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %40, i32 0, i32 9
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @IS_ERR(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %33
  %46 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %47 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %46, i32 0, i32 9
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @PTR_ERR(i32* %48)
  %50 = load i32, i32* @EPROBE_DEFER, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EPROBE_DEFER, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %264

56:                                               ; preds = %45
  %57 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %58 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %57, i32 0, i32 9
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %56, %33
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = call i32* @devm_clk_get(%struct.device* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %63 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %62, i32 0, i32 3
  store i32* %61, i32** %63, align 8
  %64 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %65 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @IS_ERR(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %71 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @PTR_ERR(i32* %72)
  store i32 %73, i32* %2, align 4
  br label %264

74:                                               ; preds = %59
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = call i32* @devm_reset_control_get_shared(%struct.device* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %78 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %77, i32 0, i32 4
  store i32* %76, i32** %78, align 8
  %79 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %80 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @IS_ERR(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %86 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @PTR_ERR(i32* %87)
  store i32 %88, i32* %2, align 4
  br label %264

89:                                               ; preds = %74
  %90 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %91 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %90, i32 0, i32 5
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %96 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %98 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %101 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.device*, %struct.device** %5, align 8
  %103 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %104 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call i8* @devm_kcalloc(%struct.device* %102, i32 %105, i32 24, i32 %106)
  %108 = bitcast i8* %107 to %struct.uniphier_aio*
  %109 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %110 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %109, i32 0, i32 7
  store %struct.uniphier_aio* %108, %struct.uniphier_aio** %110, align 8
  %111 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %112 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %111, i32 0, i32 7
  %113 = load %struct.uniphier_aio*, %struct.uniphier_aio** %112, align 8
  %114 = icmp ne %struct.uniphier_aio* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %89
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %264

118:                                              ; preds = %89
  %119 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %120 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %119, i32 0, i32 5
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %125 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.device*, %struct.device** %5, align 8
  %127 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %128 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call i8* @devm_kcalloc(%struct.device* %126, i32 %129, i32 4, i32 %130)
  %132 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %133 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %132, i32 0, i32 8
  store i8* %131, i8** %133, align 8
  %134 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %135 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %134, i32 0, i32 8
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %118
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %2, align 4
  br label %264

141:                                              ; preds = %118
  %142 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %143 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %142, i32 0, i32 8
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %146 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %145, i32 0, i32 5
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %151 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = mul i64 4, %153
  %155 = trunc i64 %154 to i32
  %156 = call i32 @memcpy(i8* %144, i32 %149, i32 %155)
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %200, %141
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %160 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %203

163:                                              ; preds = %157
  %164 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %165 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %164, i32 0, i32 7
  %166 = load %struct.uniphier_aio*, %struct.uniphier_aio** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %166, i64 %168
  store %struct.uniphier_aio* %169, %struct.uniphier_aio** %9, align 8
  %170 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %171 = load %struct.uniphier_aio*, %struct.uniphier_aio** %9, align 8
  %172 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %171, i32 0, i32 2
  store %struct.uniphier_aio_chip* %170, %struct.uniphier_aio_chip** %172, align 8
  %173 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %174 = load %struct.uniphier_aio*, %struct.uniphier_aio** %9, align 8
  %175 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 8
  store i32 0, i32* %8, align 4
  br label %176

176:                                              ; preds = %196, %163
  %177 = load i32, i32* %8, align 4
  %178 = load %struct.uniphier_aio*, %struct.uniphier_aio** %9, align 8
  %179 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %178, i32 0, i32 0
  %180 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %179, align 8
  %181 = call i32 @ARRAY_SIZE(%struct.uniphier_aio_sub* %180)
  %182 = icmp slt i32 %177, %181
  br i1 %182, label %183, label %199

183:                                              ; preds = %176
  %184 = load %struct.uniphier_aio*, %struct.uniphier_aio** %9, align 8
  %185 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %184, i32 0, i32 0
  %186 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %186, i64 %188
  store %struct.uniphier_aio_sub* %189, %struct.uniphier_aio_sub** %10, align 8
  %190 = load %struct.uniphier_aio*, %struct.uniphier_aio** %9, align 8
  %191 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %10, align 8
  %192 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %191, i32 0, i32 1
  store %struct.uniphier_aio* %190, %struct.uniphier_aio** %192, align 8
  %193 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %10, align 8
  %194 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %193, i32 0, i32 0
  %195 = call i32 @spin_lock_init(i32* %194)
  br label %196

196:                                              ; preds = %183
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  br label %176

199:                                              ; preds = %176
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %157

203:                                              ; preds = %157
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %206 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %205, i32 0, i32 6
  store %struct.platform_device* %204, %struct.platform_device** %206, align 8
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %209 = call i32 @platform_set_drvdata(%struct.platform_device* %207, %struct.uniphier_aio_chip* %208)
  %210 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %211 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @clk_prepare_enable(i32* %212)
  store i32 %213, i32* %6, align 4
  %214 = load i32, i32* %6, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %203
  %217 = load i32, i32* %6, align 4
  store i32 %217, i32* %2, align 4
  br label %264

218:                                              ; preds = %203
  %219 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %220 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %219, i32 0, i32 4
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @reset_control_deassert(i32* %221)
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* %6, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %218
  br label %258

226:                                              ; preds = %218
  %227 = load %struct.device*, %struct.device** %5, align 8
  %228 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %229 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %228, i32 0, i32 5
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %234 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %233, i32 0, i32 5
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @devm_snd_soc_register_component(%struct.device* %227, i32* @uniphier_aio_component, i32 %232, i32 %237)
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %6, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %226
  %242 = load %struct.device*, %struct.device** %5, align 8
  %243 = call i32 @dev_err(%struct.device* %242, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %253

244:                                              ; preds = %226
  %245 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %246 = call i32 @uniphier_aiodma_soc_register_platform(%struct.platform_device* %245)
  store i32 %246, i32* %6, align 4
  %247 = load i32, i32* %6, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load %struct.device*, %struct.device** %5, align 8
  %251 = call i32 @dev_err(%struct.device* %250, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %253

252:                                              ; preds = %244
  store i32 0, i32* %2, align 4
  br label %264

253:                                              ; preds = %249, %241
  %254 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %255 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %254, i32 0, i32 4
  %256 = load i32*, i32** %255, align 8
  %257 = call i32 @reset_control_assert(i32* %256)
  br label %258

258:                                              ; preds = %253, %225
  %259 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %260 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %259, i32 0, i32 3
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 @clk_disable_unprepare(i32* %261)
  %263 = load i32, i32* %6, align 4
  store i32 %263, i32* %2, align 4
  br label %264

264:                                              ; preds = %258, %252, %216, %138, %115, %84, %69, %53, %30, %18
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local %struct.uniphier_aio_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32* @devm_reset_control_get_shared(%struct.device*, i8*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uniphier_aio_chip*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @reset_control_deassert(i32*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @uniphier_aiodma_soc_register_platform(%struct.platform_device*) #1

declare dso_local i32 @reset_control_assert(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
