; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5102.c_wm5102_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5102.c_wm5102_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.arizona = type { i32, i32, i32 }
%struct.wm5102_priv = type { %struct.TYPE_19__, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_20__*, %struct.arizona* }
%struct.TYPE_20__ = type { i8*, i32, i32, %struct.TYPE_21__*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"wm5102\00", align 1
@WMFW_ADSP2 = common dso_local global i32 0, align 4
@ARIZONA_DSP1_CONTROL_1 = common dso_local global i32 0, align 4
@wm5102_dsp1_regions = common dso_local global %struct.TYPE_21__* null, align 8
@ARIZONA_FLL1_CONTROL_1 = common dso_local global i64 0, align 8
@ARIZONA_IRQ_FLL1_LOCK = common dso_local global i32 0, align 4
@ARIZONA_IRQ_FLL1_CLOCK_OK = common dso_local global i32 0, align 4
@ARIZONA_FLL2_CONTROL_1 = common dso_local global i64 0, align 8
@ARIZONA_IRQ_FLL2_LOCK = common dso_local global i32 0, align 4
@ARIZONA_IRQ_FLL2_CLOCK_OK = common dso_local global i32 0, align 4
@ARIZONA_SAMPLE_RATE_2 = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@ARIZONA_SAMPLE_RATE_2_MASK = common dso_local global i32 0, align 4
@ARIZONA_SAMPLE_RATE_3 = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@ARIZONA_SAMPLE_RATE_3_MASK = common dso_local global i32 0, align 4
@wm5102_dai = common dso_local global %struct.TYPE_21__* null, align 8
@wm5102_digital_vu = common dso_local global %struct.TYPE_21__* null, align 8
@WM5102_DIG_VU = common dso_local global i32 0, align 4
@ARIZONA_IRQ_DSP_IRQ1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ADSP2 Compressed IRQ\00", align 1
@wm5102_adsp2_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to request DSP IRQ: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Failed to set compressed IRQ as a wake source: %d\0A\00", align 1
@soc_component_dev_wm5102 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm5102_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5102_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.arizona*, align 8
  %5 = alloca %struct.wm5102_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.arizona* @dev_get_drvdata(i32 %11)
  store %struct.arizona* %12, %struct.arizona** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.wm5102_priv* @devm_kzalloc(%struct.TYPE_22__* %14, i32 32, i32 %15)
  store %struct.wm5102_priv* %16, %struct.wm5102_priv** %5, align 8
  %17 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %18 = icmp eq %struct.wm5102_priv* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %287

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.wm5102_priv* %24)
  %26 = load i32, i32* @CONFIG_OF, align 4
  %27 = call i64 @IS_ENABLED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load %struct.arizona*, %struct.arizona** %4, align 8
  %31 = getelementptr inbounds %struct.arizona, %struct.arizona* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_get_platdata(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = load %struct.arizona*, %struct.arizona** %4, align 8
  %37 = call i32 @arizona_of_get_audio_pdata(%struct.arizona* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %287

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.arizona*, %struct.arizona** %4, align 8
  %46 = getelementptr inbounds %struct.arizona, %struct.arizona* %45, i32 0, i32 2
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.arizona*, %struct.arizona** %4, align 8
  %49 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %50 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 2
  store %struct.arizona* %48, %struct.arizona** %51, align 8
  %52 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %53 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  store i32 6, i32* %54, align 8
  %55 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %56 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %55, i32 0, i32 0
  %57 = call i32 @arizona_init_dvfs(%struct.TYPE_19__* %56)
  %58 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %59 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %63, align 8
  %64 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %65 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 8
  %70 = load i32, i32* @WMFW_ADSP2, align 4
  %71 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %72 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 7
  store i32 %70, i32* %76, align 4
  %77 = load i32, i32* @ARIZONA_DSP1_CONTROL_1, align 4
  %78 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %79 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 6
  store i32 %77, i32* %83, align 8
  %84 = load %struct.arizona*, %struct.arizona** %4, align 8
  %85 = getelementptr inbounds %struct.arizona, %struct.arizona* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %88 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 5
  store i32 %86, i32* %92, align 4
  %93 = load %struct.arizona*, %struct.arizona** %4, align 8
  %94 = getelementptr inbounds %struct.arizona, %struct.arizona* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %97 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 4
  store i32 %95, i32* %101, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** @wm5102_dsp1_regions, align 8
  %103 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %104 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 3
  store %struct.TYPE_21__* %102, %struct.TYPE_21__** %108, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** @wm5102_dsp1_regions, align 8
  %110 = call i32 @ARRAY_SIZE(%struct.TYPE_21__* %109)
  %111 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %112 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 2
  store i32 %110, i32* %116, align 4
  %117 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %118 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i64 0
  %122 = call i32 @wm_adsp2_init(%struct.TYPE_20__* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %44
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %287

127:                                              ; preds = %44
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %143, %127
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %131 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %130, i32 0, i32 1
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  %133 = call i32 @ARRAY_SIZE(%struct.TYPE_21__* %132)
  %134 = icmp slt i32 %129, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %128
  %136 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %137 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %136, i32 0, i32 1
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  store i32 1, i32* %142, align 4
  br label %143

143:                                              ; preds = %135
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %128

146:                                              ; preds = %128
  %147 = load %struct.arizona*, %struct.arizona** %4, align 8
  %148 = load i64, i64* @ARIZONA_FLL1_CONTROL_1, align 8
  %149 = sub nsw i64 %148, 1
  %150 = load i32, i32* @ARIZONA_IRQ_FLL1_LOCK, align 4
  %151 = load i32, i32* @ARIZONA_IRQ_FLL1_CLOCK_OK, align 4
  %152 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %153 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %152, i32 0, i32 1
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i64 0
  %156 = call i32 @arizona_init_fll(%struct.arizona* %147, i32 1, i64 %149, i32 %150, i32 %151, %struct.TYPE_21__* %155)
  %157 = load %struct.arizona*, %struct.arizona** %4, align 8
  %158 = load i64, i64* @ARIZONA_FLL2_CONTROL_1, align 8
  %159 = sub nsw i64 %158, 1
  %160 = load i32, i32* @ARIZONA_IRQ_FLL2_LOCK, align 4
  %161 = load i32, i32* @ARIZONA_IRQ_FLL2_CLOCK_OK, align 4
  %162 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %163 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %162, i32 0, i32 1
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i64 1
  %166 = call i32 @arizona_init_fll(%struct.arizona* %157, i32 2, i64 %159, i32 %160, i32 %161, %struct.TYPE_21__* %165)
  %167 = load %struct.arizona*, %struct.arizona** %4, align 8
  %168 = getelementptr inbounds %struct.arizona, %struct.arizona* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @ARIZONA_SAMPLE_RATE_2_MASK, align 4
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ARIZONA_SAMPLE_RATE_2, i32 0, i32 0), align 4
  %172 = call i32 @regmap_update_bits(i32 %169, i32 %171, i32 %170, i32 17)
  %173 = load %struct.arizona*, %struct.arizona** %4, align 8
  %174 = getelementptr inbounds %struct.arizona, %struct.arizona* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @ARIZONA_SAMPLE_RATE_3_MASK, align 4
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ARIZONA_SAMPLE_RATE_3, i32 0, i32 0), align 4
  %178 = call i32 @regmap_update_bits(i32 %175, i32 %177, i32 %176, i32 18)
  store i32 0, i32* %6, align 4
  br label %179

179:                                              ; preds = %189, %146
  %180 = load i32, i32* %6, align 4
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** @wm5102_dai, align 8
  %182 = call i32 @ARRAY_SIZE(%struct.TYPE_21__* %181)
  %183 = icmp slt i32 %180, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %179
  %185 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %186 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %185, i32 0, i32 0
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @arizona_init_dai(%struct.TYPE_19__* %186, i32 %187)
  br label %189

189:                                              ; preds = %184
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %6, align 4
  br label %179

192:                                              ; preds = %179
  store i32 0, i32* %6, align 4
  br label %193

193:                                              ; preds = %211, %192
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** @wm5102_digital_vu, align 8
  %196 = call i32 @ARRAY_SIZE(%struct.TYPE_21__* %195)
  %197 = icmp slt i32 %194, %196
  br i1 %197, label %198, label %214

198:                                              ; preds = %193
  %199 = load %struct.arizona*, %struct.arizona** %4, align 8
  %200 = getelementptr inbounds %struct.arizona, %struct.arizona* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** @wm5102_digital_vu, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i64 %204
  %206 = load i32, i32* @WM5102_DIG_VU, align 4
  %207 = load i32, i32* @WM5102_DIG_VU, align 4
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @regmap_update_bits(i32 %201, i32 %209, i32 %206, i32 %207)
  br label %211

211:                                              ; preds = %198
  %212 = load i32, i32* %6, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %6, align 4
  br label %193

214:                                              ; preds = %193
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 0
  %217 = call i32 @pm_runtime_enable(%struct.TYPE_22__* %216)
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %218, i32 0, i32 0
  %220 = call i32 @pm_runtime_idle(%struct.TYPE_22__* %219)
  %221 = load %struct.arizona*, %struct.arizona** %4, align 8
  %222 = load i32, i32* @ARIZONA_IRQ_DSP_IRQ1, align 4
  %223 = load i32, i32* @wm5102_adsp2_irq, align 4
  %224 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %225 = call i32 @arizona_request_irq(%struct.arizona* %221, i32 %222, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %223, %struct.wm5102_priv* %224)
  store i32 %225, i32* %7, align 4
  %226 = load i32, i32* %7, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %214
  %229 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %230 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %229, i32 0, i32 0
  %231 = load i32, i32* %7, align 4
  %232 = call i32 @dev_err(%struct.TYPE_22__* %230, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* %7, align 4
  store i32 %233, i32* %2, align 4
  br label %287

234:                                              ; preds = %214
  %235 = load %struct.arizona*, %struct.arizona** %4, align 8
  %236 = load i32, i32* @ARIZONA_IRQ_DSP_IRQ1, align 4
  %237 = call i32 @arizona_set_irq_wake(%struct.arizona* %235, i32 %236, i32 1)
  store i32 %237, i32* %7, align 4
  %238 = load i32, i32* %7, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %234
  %241 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %242 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %241, i32 0, i32 0
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @dev_warn(%struct.TYPE_22__* %242, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %240, %234
  %246 = load %struct.arizona*, %struct.arizona** %4, align 8
  %247 = call i32 @arizona_init_common(%struct.arizona* %246)
  %248 = load %struct.arizona*, %struct.arizona** %4, align 8
  %249 = call i32 @arizona_init_vol_limit(%struct.arizona* %248)
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %245
  br label %278

253:                                              ; preds = %245
  %254 = load %struct.arizona*, %struct.arizona** %4, align 8
  %255 = call i32 @arizona_init_spk_irqs(%struct.arizona* %254)
  store i32 %255, i32* %7, align 4
  %256 = load i32, i32* %7, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  br label %278

259:                                              ; preds = %253
  %260 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %261 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %260, i32 0, i32 0
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** @wm5102_dai, align 8
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** @wm5102_dai, align 8
  %264 = call i32 @ARRAY_SIZE(%struct.TYPE_21__* %263)
  %265 = call i32 @devm_snd_soc_register_component(%struct.TYPE_22__* %261, i32* @soc_component_dev_wm5102, %struct.TYPE_21__* %262, i32 %264)
  store i32 %265, i32* %7, align 4
  %266 = load i32, i32* %7, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %259
  %269 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %270 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %269, i32 0, i32 0
  %271 = load i32, i32* %7, align 4
  %272 = call i32 @dev_err(%struct.TYPE_22__* %270, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %271)
  br label %275

273:                                              ; preds = %259
  %274 = load i32, i32* %7, align 4
  store i32 %274, i32* %2, align 4
  br label %287

275:                                              ; preds = %268
  %276 = load %struct.arizona*, %struct.arizona** %4, align 8
  %277 = call i32 @arizona_free_spk_irqs(%struct.arizona* %276)
  br label %278

278:                                              ; preds = %275, %258, %252
  %279 = load %struct.arizona*, %struct.arizona** %4, align 8
  %280 = load i32, i32* @ARIZONA_IRQ_DSP_IRQ1, align 4
  %281 = call i32 @arizona_set_irq_wake(%struct.arizona* %279, i32 %280, i32 0)
  %282 = load %struct.arizona*, %struct.arizona** %4, align 8
  %283 = load i32, i32* @ARIZONA_IRQ_DSP_IRQ1, align 4
  %284 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %285 = call i32 @arizona_free_irq(%struct.arizona* %282, i32 %283, %struct.wm5102_priv* %284)
  %286 = load i32, i32* %7, align 4
  store i32 %286, i32* %2, align 4
  br label %287

287:                                              ; preds = %278, %273, %228, %125, %40, %19
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local %struct.arizona* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm5102_priv* @devm_kzalloc(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm5102_priv*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_get_platdata(i32) #1

declare dso_local i32 @arizona_of_get_audio_pdata(%struct.arizona*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @arizona_init_dvfs(%struct.TYPE_19__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_21__*) #1

declare dso_local i32 @wm_adsp2_init(%struct.TYPE_20__*) #1

declare dso_local i32 @arizona_init_fll(%struct.arizona*, i32, i64, i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @arizona_init_dai(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_22__*) #1

declare dso_local i32 @pm_runtime_idle(%struct.TYPE_22__*) #1

declare dso_local i32 @arizona_request_irq(%struct.arizona*, i32, i8*, i32, %struct.wm5102_priv*) #1

declare dso_local i32 @dev_err(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i32 @arizona_set_irq_wake(%struct.arizona*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i32 @arizona_init_common(%struct.arizona*) #1

declare dso_local i32 @arizona_init_vol_limit(%struct.arizona*) #1

declare dso_local i32 @arizona_init_spk_irqs(%struct.arizona*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_22__*, i32*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @arizona_free_spk_irqs(%struct.arizona*) #1

declare dso_local i32 @arizona_free_irq(%struct.arizona*, i32, %struct.wm5102_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
