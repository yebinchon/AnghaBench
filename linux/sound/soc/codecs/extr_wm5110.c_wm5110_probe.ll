; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5110.c_wm5110_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5110.c_wm5110_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.arizona = type { i32, i32 }
%struct.wm5110_priv = type { %struct.TYPE_18__, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__*, %struct.arizona* }
%struct.TYPE_19__ = type { i8*, i32, i32, i32, i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@WM5110_NUM_ADSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"wm5110\00", align 1
@WMFW_ADSP2 = common dso_local global i32 0, align 4
@ARIZONA_DSP1_CONTROL_1 = common dso_local global i64 0, align 8
@wm5110_dsp_regions = common dso_local global i32* null, align 8
@wm5110_dsp1_regions = common dso_local global %struct.TYPE_20__* null, align 8
@ARIZONA_FLL1_CONTROL_1 = common dso_local global i64 0, align 8
@ARIZONA_IRQ_FLL1_LOCK = common dso_local global i32 0, align 4
@ARIZONA_IRQ_FLL1_CLOCK_OK = common dso_local global i32 0, align 4
@ARIZONA_FLL2_CONTROL_1 = common dso_local global i64 0, align 8
@ARIZONA_IRQ_FLL2_LOCK = common dso_local global i32 0, align 4
@ARIZONA_IRQ_FLL2_CLOCK_OK = common dso_local global i32 0, align 4
@ARIZONA_SAMPLE_RATE_2 = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@ARIZONA_SAMPLE_RATE_2_MASK = common dso_local global i32 0, align 4
@ARIZONA_SAMPLE_RATE_3 = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@ARIZONA_SAMPLE_RATE_3_MASK = common dso_local global i32 0, align 4
@wm5110_dai = common dso_local global %struct.TYPE_20__* null, align 8
@wm5110_digital_vu = common dso_local global %struct.TYPE_20__* null, align 8
@WM5110_DIG_VU = common dso_local global i32 0, align 4
@ARIZONA_IRQ_DSP_IRQ1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ADSP2 Compressed IRQ\00", align 1
@wm5110_adsp2_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to request DSP IRQ: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Failed to set compressed IRQ as a wake source: %d\0A\00", align 1
@soc_component_dev_wm5110 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm5110_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5110_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.arizona*, align 8
  %5 = alloca %struct.wm5110_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.arizona* @dev_get_drvdata(i32 %11)
  store %struct.arizona* %12, %struct.arizona** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.wm5110_priv* @devm_kzalloc(%struct.TYPE_21__* %14, i32 32, i32 %15)
  store %struct.wm5110_priv* %16, %struct.wm5110_priv** %5, align 8
  %17 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %18 = icmp eq %struct.wm5110_priv* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %318

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.wm5110_priv* %24)
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
  br label %318

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.arizona*, %struct.arizona** %4, align 8
  %46 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %47 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 2
  store %struct.arizona* %45, %struct.arizona** %48, align 8
  %49 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %50 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  store i32 8, i32* %51, align 8
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %155, %44
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @WM5110_NUM_ADSP, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %158

56:                                               ; preds = %52
  %57 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %58 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  %67 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %68 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  store i32 %66, i32* %74, align 8
  %75 = load i32, i32* @WMFW_ADSP2, align 4
  %76 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %77 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 7
  store i32 %75, i32* %83, align 8
  %84 = load %struct.arizona*, %struct.arizona** %4, align 8
  %85 = getelementptr inbounds %struct.arizona, %struct.arizona* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %88 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 6
  store i32 %86, i32* %94, align 4
  %95 = load %struct.arizona*, %struct.arizona** %4, align 8
  %96 = getelementptr inbounds %struct.arizona, %struct.arizona* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %99 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 5
  store i32 %97, i32* %105, align 8
  %106 = load i64, i64* @ARIZONA_DSP1_CONTROL_1, align 8
  %107 = load i32, i32* %6, align 4
  %108 = mul nsw i32 256, %107
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %106, %109
  %111 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %112 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 4
  store i64 %110, i64* %118, align 8
  %119 = load i32*, i32** @wm5110_dsp_regions, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %125 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 3
  store i32 %123, i32* %131, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** @wm5110_dsp1_regions, align 8
  %133 = call i32 @ARRAY_SIZE(%struct.TYPE_20__* %132)
  %134 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %135 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 2
  store i32 %133, i32* %141, align 4
  %142 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %143 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i64 %147
  %149 = call i32 @wm_adsp2_init(%struct.TYPE_19__* %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %56
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %2, align 4
  br label %318

154:                                              ; preds = %56
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %52

158:                                              ; preds = %52
  store i32 0, i32* %6, align 4
  br label %159

159:                                              ; preds = %174, %158
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %162 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %161, i32 0, i32 1
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %162, align 8
  %164 = call i32 @ARRAY_SIZE(%struct.TYPE_20__* %163)
  %165 = icmp slt i32 %160, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %159
  %167 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %168 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %167, i32 0, i32 1
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  store i32 3, i32* %173, align 4
  br label %174

174:                                              ; preds = %166
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  br label %159

177:                                              ; preds = %159
  %178 = load %struct.arizona*, %struct.arizona** %4, align 8
  %179 = load i64, i64* @ARIZONA_FLL1_CONTROL_1, align 8
  %180 = sub nsw i64 %179, 1
  %181 = load i32, i32* @ARIZONA_IRQ_FLL1_LOCK, align 4
  %182 = load i32, i32* @ARIZONA_IRQ_FLL1_CLOCK_OK, align 4
  %183 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %184 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %183, i32 0, i32 1
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i64 0
  %187 = call i32 @arizona_init_fll(%struct.arizona* %178, i32 1, i64 %180, i32 %181, i32 %182, %struct.TYPE_20__* %186)
  %188 = load %struct.arizona*, %struct.arizona** %4, align 8
  %189 = load i64, i64* @ARIZONA_FLL2_CONTROL_1, align 8
  %190 = sub nsw i64 %189, 1
  %191 = load i32, i32* @ARIZONA_IRQ_FLL2_LOCK, align 4
  %192 = load i32, i32* @ARIZONA_IRQ_FLL2_CLOCK_OK, align 4
  %193 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %194 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %193, i32 0, i32 1
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i64 1
  %197 = call i32 @arizona_init_fll(%struct.arizona* %188, i32 2, i64 %190, i32 %191, i32 %192, %struct.TYPE_20__* %196)
  %198 = load %struct.arizona*, %struct.arizona** %4, align 8
  %199 = getelementptr inbounds %struct.arizona, %struct.arizona* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @ARIZONA_SAMPLE_RATE_2_MASK, align 4
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ARIZONA_SAMPLE_RATE_2, i32 0, i32 0), align 4
  %203 = call i32 @regmap_update_bits(i32 %200, i32 %202, i32 %201, i32 17)
  %204 = load %struct.arizona*, %struct.arizona** %4, align 8
  %205 = getelementptr inbounds %struct.arizona, %struct.arizona* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @ARIZONA_SAMPLE_RATE_3_MASK, align 4
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ARIZONA_SAMPLE_RATE_3, i32 0, i32 0), align 4
  %209 = call i32 @regmap_update_bits(i32 %206, i32 %208, i32 %207, i32 18)
  store i32 0, i32* %6, align 4
  br label %210

210:                                              ; preds = %220, %177
  %211 = load i32, i32* %6, align 4
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** @wm5110_dai, align 8
  %213 = call i32 @ARRAY_SIZE(%struct.TYPE_20__* %212)
  %214 = icmp slt i32 %211, %213
  br i1 %214, label %215, label %223

215:                                              ; preds = %210
  %216 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %217 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %216, i32 0, i32 0
  %218 = load i32, i32* %6, align 4
  %219 = call i32 @arizona_init_dai(%struct.TYPE_18__* %217, i32 %218)
  br label %220

220:                                              ; preds = %215
  %221 = load i32, i32* %6, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %6, align 4
  br label %210

223:                                              ; preds = %210
  store i32 0, i32* %6, align 4
  br label %224

224:                                              ; preds = %242, %223
  %225 = load i32, i32* %6, align 4
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** @wm5110_digital_vu, align 8
  %227 = call i32 @ARRAY_SIZE(%struct.TYPE_20__* %226)
  %228 = icmp slt i32 %225, %227
  br i1 %228, label %229, label %245

229:                                              ; preds = %224
  %230 = load %struct.arizona*, %struct.arizona** %4, align 8
  %231 = getelementptr inbounds %struct.arizona, %struct.arizona* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** @wm5110_digital_vu, align 8
  %234 = load i32, i32* %6, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i64 %235
  %237 = load i32, i32* @WM5110_DIG_VU, align 4
  %238 = load i32, i32* @WM5110_DIG_VU, align 4
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @regmap_update_bits(i32 %232, i32 %240, i32 %237, i32 %238)
  br label %242

242:                                              ; preds = %229
  %243 = load i32, i32* %6, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %6, align 4
  br label %224

245:                                              ; preds = %224
  %246 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %247 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %246, i32 0, i32 0
  %248 = call i32 @pm_runtime_enable(%struct.TYPE_21__* %247)
  %249 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %250 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %249, i32 0, i32 0
  %251 = call i32 @pm_runtime_idle(%struct.TYPE_21__* %250)
  %252 = load %struct.arizona*, %struct.arizona** %4, align 8
  %253 = load i32, i32* @ARIZONA_IRQ_DSP_IRQ1, align 4
  %254 = load i32, i32* @wm5110_adsp2_irq, align 4
  %255 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %256 = call i32 @arizona_request_irq(%struct.arizona* %252, i32 %253, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %254, %struct.wm5110_priv* %255)
  store i32 %256, i32* %7, align 4
  %257 = load i32, i32* %7, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %245
  %260 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %261 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %260, i32 0, i32 0
  %262 = load i32, i32* %7, align 4
  %263 = call i32 @dev_err(%struct.TYPE_21__* %261, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %262)
  %264 = load i32, i32* %7, align 4
  store i32 %264, i32* %2, align 4
  br label %318

265:                                              ; preds = %245
  %266 = load %struct.arizona*, %struct.arizona** %4, align 8
  %267 = load i32, i32* @ARIZONA_IRQ_DSP_IRQ1, align 4
  %268 = call i32 @arizona_set_irq_wake(%struct.arizona* %266, i32 %267, i32 1)
  store i32 %268, i32* %7, align 4
  %269 = load i32, i32* %7, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %265
  %272 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %273 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %272, i32 0, i32 0
  %274 = load i32, i32* %7, align 4
  %275 = call i32 @dev_warn(%struct.TYPE_21__* %273, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %274)
  br label %276

276:                                              ; preds = %271, %265
  %277 = load %struct.arizona*, %struct.arizona** %4, align 8
  %278 = call i32 @arizona_init_common(%struct.arizona* %277)
  %279 = load %struct.arizona*, %struct.arizona** %4, align 8
  %280 = call i32 @arizona_init_vol_limit(%struct.arizona* %279)
  store i32 %280, i32* %7, align 4
  %281 = load i32, i32* %7, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %276
  br label %309

284:                                              ; preds = %276
  %285 = load %struct.arizona*, %struct.arizona** %4, align 8
  %286 = call i32 @arizona_init_spk_irqs(%struct.arizona* %285)
  store i32 %286, i32* %7, align 4
  %287 = load i32, i32* %7, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %284
  br label %309

290:                                              ; preds = %284
  %291 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %292 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %291, i32 0, i32 0
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** @wm5110_dai, align 8
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** @wm5110_dai, align 8
  %295 = call i32 @ARRAY_SIZE(%struct.TYPE_20__* %294)
  %296 = call i32 @devm_snd_soc_register_component(%struct.TYPE_21__* %292, i32* @soc_component_dev_wm5110, %struct.TYPE_20__* %293, i32 %295)
  store i32 %296, i32* %7, align 4
  %297 = load i32, i32* %7, align 4
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %290
  %300 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %301 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %300, i32 0, i32 0
  %302 = load i32, i32* %7, align 4
  %303 = call i32 @dev_err(%struct.TYPE_21__* %301, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %302)
  br label %306

304:                                              ; preds = %290
  %305 = load i32, i32* %7, align 4
  store i32 %305, i32* %2, align 4
  br label %318

306:                                              ; preds = %299
  %307 = load %struct.arizona*, %struct.arizona** %4, align 8
  %308 = call i32 @arizona_free_spk_irqs(%struct.arizona* %307)
  br label %309

309:                                              ; preds = %306, %289, %283
  %310 = load %struct.arizona*, %struct.arizona** %4, align 8
  %311 = load i32, i32* @ARIZONA_IRQ_DSP_IRQ1, align 4
  %312 = call i32 @arizona_set_irq_wake(%struct.arizona* %310, i32 %311, i32 0)
  %313 = load %struct.arizona*, %struct.arizona** %4, align 8
  %314 = load i32, i32* @ARIZONA_IRQ_DSP_IRQ1, align 4
  %315 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %316 = call i32 @arizona_free_irq(%struct.arizona* %313, i32 %314, %struct.wm5110_priv* %315)
  %317 = load i32, i32* %7, align 4
  store i32 %317, i32* %2, align 4
  br label %318

318:                                              ; preds = %309, %304, %259, %152, %40, %19
  %319 = load i32, i32* %2, align 4
  ret i32 %319
}

declare dso_local %struct.arizona* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm5110_priv* @devm_kzalloc(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm5110_priv*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_get_platdata(i32) #1

declare dso_local i32 @arizona_of_get_audio_pdata(%struct.arizona*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_20__*) #1

declare dso_local i32 @wm_adsp2_init(%struct.TYPE_19__*) #1

declare dso_local i32 @arizona_init_fll(%struct.arizona*, i32, i64, i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @arizona_init_dai(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_21__*) #1

declare dso_local i32 @pm_runtime_idle(%struct.TYPE_21__*) #1

declare dso_local i32 @arizona_request_irq(%struct.arizona*, i32, i8*, i32, %struct.wm5110_priv*) #1

declare dso_local i32 @dev_err(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @arizona_set_irq_wake(%struct.arizona*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @arizona_init_common(%struct.arizona*) #1

declare dso_local i32 @arizona_init_vol_limit(%struct.arizona*) #1

declare dso_local i32 @arizona_init_spk_irqs(%struct.arizona*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_21__*, i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @arizona_free_spk_irqs(%struct.arizona*) #1

declare dso_local i32 @arizona_free_irq(%struct.arizona*, i32, %struct.wm5110_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
