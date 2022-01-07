; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm0010.c_wm0010_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm0010.c_wm0010_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.spi_device = type { i32, i32, i64 }
%struct.wm0010_priv = type { i32, i32, i64, i32*, %struct.TYPE_7__, i32, i64, i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"AVDD\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"DCVDD\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to obtain core supplies: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"DBVDD\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to obtain DBVDD: %d\0A\00", align 1
@GPIOF_OUT_INIT_HIGH = common dso_local global i64 0, align 8
@GPIOF_OUT_INIT_LOW = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"wm0010 reset\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Failed to request GPIO for DSP reset: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"No reset GPIO configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM0010_POWER_OFF = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@wm0010_irq = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"wm0010\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Failed to set IRQ %d as wake source: %d\0A\00", align 1
@soc_component_dev_wm0010 = common dso_local global i32 0, align 4
@wm0010_dai = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @wm0010_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm0010_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm0010_priv*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wm0010_priv* @devm_kzalloc(i32* %10, i32 96, i32 %11)
  store %struct.wm0010_priv* %12, %struct.wm0010_priv** %8, align 8
  %13 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %14 = icmp ne %struct.wm0010_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %239

18:                                               ; preds = %1
  %19 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %20 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %19, i32 0, i32 11
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %23 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %22, i32 0, i32 10
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %27 = call i32 @spi_set_drvdata(%struct.spi_device* %25, %struct.wm0010_priv* %26)
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 1
  %30 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %31 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %30, i32 0, i32 3
  store i32* %29, i32** %31, align 8
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 1
  %34 = call i64 @dev_get_platdata(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %18
  %37 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %38 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %37, i32 0, i32 4
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 1
  %41 = call i64 @dev_get_platdata(i32* %40)
  %42 = call i32 @memcpy(%struct.TYPE_7__* %38, i64 %41, i32 24)
  br label %43

43:                                               ; preds = %36, %18
  %44 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %45 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %44, i32 0, i32 9
  %46 = call i32 @init_completion(i32* %45)
  %47 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %48 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %47, i32 0, i32 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %51, align 8
  %52 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %53 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %52, i32 0, i32 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %56, align 8
  %57 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %58 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %61 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %60, i32 0, i32 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %62)
  %64 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %65 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %64, i32 0, i32 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = call i32 @devm_regulator_bulk_get(i32* %59, i32 %63, %struct.TYPE_6__* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %43
  %71 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %72 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (i32*, i8*, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %239

77:                                               ; preds = %43
  %78 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %79 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @devm_regulator_get(i32* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %82 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %83 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 8
  %84 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %85 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %77
  %90 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %91 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @PTR_ERR(i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %95 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %239

100:                                              ; preds = %77
  %101 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %102 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %152

106:                                              ; preds = %100
  %107 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %108 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %112 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %111, i32 0, i32 6
  store i64 %110, i64* %112, align 8
  %113 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %114 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %106
  %119 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %120 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  br label %124

121:                                              ; preds = %106
  %122 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %123 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  br label %124

124:                                              ; preds = %121, %118
  %125 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %126 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i64, i64* @GPIOF_OUT_INIT_HIGH, align 8
  store i64 %130, i64* %4, align 8
  br label %133

131:                                              ; preds = %124
  %132 = load i64, i64* @GPIOF_OUT_INIT_LOW, align 8
  store i64 %132, i64* %4, align 8
  br label %133

133:                                              ; preds = %131, %129
  %134 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %135 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %138 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %4, align 8
  %141 = call i32 @devm_gpio_request_one(i32* %136, i64 %139, i64 %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %133
  %145 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %146 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = call i32 (i32*, i8*, ...) @dev_err(i32* %147, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %5, align 4
  store i32 %150, i32* %2, align 4
  br label %239

151:                                              ; preds = %133
  br label %159

152:                                              ; preds = %100
  %153 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %154 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 (i32*, i8*, ...) @dev_err(i32* %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %239

159:                                              ; preds = %151
  %160 = load i32, i32* @WM0010_POWER_OFF, align 4
  %161 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %162 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %161, i32 0, i32 5
  store i32 %160, i32* %162, align 8
  %163 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %164 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %7, align 4
  %166 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %167 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %159
  %172 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %173 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %6, align 4
  br label %178

176:                                              ; preds = %159
  %177 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  store i32 %177, i32* %6, align 4
  br label %178

178:                                              ; preds = %176, %171
  %179 = load i32, i32* @IRQF_ONESHOT, align 4
  %180 = load i32, i32* %6, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @wm0010_irq, align 4
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %186 = call i32 @request_threaded_irq(i32 %182, i32* null, i32 %183, i32 %184, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %struct.wm0010_priv* %185)
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %178
  %190 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %191 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %5, align 4
  %195 = call i32 (i32*, i8*, ...) @dev_err(i32* %192, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %193, i32 %194)
  %196 = load i32, i32* %5, align 4
  store i32 %196, i32* %2, align 4
  br label %239

197:                                              ; preds = %178
  %198 = load i32, i32* %7, align 4
  %199 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %200 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* %7, align 4
  %202 = call i32 @irq_set_irq_wake(i32 %201, i32 1)
  store i32 %202, i32* %5, align 4
  %203 = load i32, i32* %5, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %197
  %206 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %207 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %206, i32 0, i32 3
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %5, align 4
  %211 = call i32 (i32*, i8*, ...) @dev_err(i32* %208, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %209, i32 %210)
  %212 = load i32, i32* %5, align 4
  store i32 %212, i32* %2, align 4
  br label %239

213:                                              ; preds = %197
  %214 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %215 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %220 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %223 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %222, i32 0, i32 2
  store i64 %221, i64* %223, align 8
  br label %227

224:                                              ; preds = %213
  %225 = load %struct.wm0010_priv*, %struct.wm0010_priv** %8, align 8
  %226 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %225, i32 0, i32 2
  store i64 0, i64* %226, align 8
  br label %227

227:                                              ; preds = %224, %218
  %228 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %229 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %228, i32 0, i32 1
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wm0010_dai, align 8
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wm0010_dai, align 8
  %232 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %231)
  %233 = call i32 @devm_snd_soc_register_component(i32* %229, i32* @soc_component_dev_wm0010, %struct.TYPE_6__* %230, i32 %232)
  store i32 %233, i32* %5, align 4
  %234 = load i32, i32* %5, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %227
  %237 = load i32, i32* %5, align 4
  store i32 %237, i32* %2, align 4
  br label %239

238:                                              ; preds = %227
  store i32 0, i32* %2, align 4
  br label %239

239:                                              ; preds = %238, %236, %205, %189, %152, %144, %89, %70, %15
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local %struct.wm0010_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.wm0010_priv*) #1

declare dso_local i64 @dev_get_platdata(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_gpio_request_one(i32*, i64, i64, i8*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.wm0010_priv*) #1

declare dso_local i32 @irq_set_irq_wake(i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
