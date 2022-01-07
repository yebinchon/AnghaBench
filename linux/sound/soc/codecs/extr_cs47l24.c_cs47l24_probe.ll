; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l24.c_cs47l24_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l24.c_cs47l24_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.arizona = type { i32, i32 }
%struct.cs47l24_priv = type { %struct.TYPE_18__, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__*, %struct.arizona* }
%struct.TYPE_19__ = type { i8*, i32, i32, i32, i64, i32, i32, i32 }

@cs47l24_dai = common dso_local global %struct.TYPE_20__* null, align 8
@ARIZONA_MAX_DAI = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cs47l24\00", align 1
@WMFW_ADSP2 = common dso_local global i32 0, align 4
@ARIZONA_DSP1_CONTROL_1 = common dso_local global i64 0, align 8
@cs47l24_dsp_regions = common dso_local global i32* null, align 8
@cs47l24_dsp2_regions = common dso_local global %struct.TYPE_20__* null, align 8
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
@cs47l24_digital_vu = common dso_local global %struct.TYPE_20__* null, align 8
@CS47L24_DIG_VU = common dso_local global i32 0, align 4
@ARIZONA_IRQ_DSP_IRQ1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ADSP2 Compressed IRQ\00", align 1
@cs47l24_adsp2_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to request DSP IRQ: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Failed to set compressed IRQ as a wake source: %d\0A\00", align 1
@soc_component_dev_cs47l24 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cs47l24_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l24_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.arizona*, align 8
  %5 = alloca %struct.cs47l24_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.arizona* @dev_get_drvdata(i32 %11)
  store %struct.arizona* %12, %struct.arizona** %4, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cs47l24_dai, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_20__* %13)
  %15 = load i32, i32* @ARIZONA_MAX_DAI, align 4
  %16 = icmp sgt i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUILD_BUG_ON(i32 %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.cs47l24_priv* @devm_kzalloc(%struct.TYPE_21__* %20, i32 32, i32 %21)
  store %struct.cs47l24_priv* %22, %struct.cs47l24_priv** %5, align 8
  %23 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %24 = icmp ne %struct.cs47l24_priv* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %324

28:                                               ; preds = %1
  %29 = load i32, i32* @CONFIG_OF, align 4
  %30 = call i64 @IS_ENABLED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load %struct.arizona*, %struct.arizona** %4, align 8
  %34 = getelementptr inbounds %struct.arizona, %struct.arizona* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_get_platdata(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = load %struct.arizona*, %struct.arizona** %4, align 8
  %40 = call i32 @arizona_of_get_audio_pdata(%struct.arizona* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %324

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %32
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %50 = call i32 @platform_set_drvdata(%struct.platform_device* %48, %struct.cs47l24_priv* %49)
  %51 = load %struct.arizona*, %struct.arizona** %4, align 8
  %52 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %53 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  store %struct.arizona* %51, %struct.arizona** %54, align 8
  %55 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %56 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  store i32 4, i32* %57, align 8
  store i32 1, i32* %6, align 4
  br label %58

58:                                               ; preds = %161, %47
  %59 = load i32, i32* %6, align 4
  %60 = icmp sle i32 %59, 2
  br i1 %60, label %61, label %164

61:                                               ; preds = %58
  %62 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %63 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %69, align 8
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  %72 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %73 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  store i32 %71, i32* %79, align 8
  %80 = load i32, i32* @WMFW_ADSP2, align 4
  %81 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %82 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 7
  store i32 %80, i32* %88, align 8
  %89 = load %struct.arizona*, %struct.arizona** %4, align 8
  %90 = getelementptr inbounds %struct.arizona, %struct.arizona* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %93 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 6
  store i32 %91, i32* %99, align 4
  %100 = load %struct.arizona*, %struct.arizona** %4, align 8
  %101 = getelementptr inbounds %struct.arizona, %struct.arizona* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %104 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 5
  store i32 %102, i32* %110, align 8
  %111 = load i64, i64* @ARIZONA_DSP1_CONTROL_1, align 8
  %112 = load i32, i32* %6, align 4
  %113 = mul nsw i32 256, %112
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %111, %114
  %116 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %117 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 4
  store i64 %115, i64* %123, align 8
  %124 = load i32*, i32** @cs47l24_dsp_regions, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %131 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 3
  store i32 %129, i32* %137, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cs47l24_dsp2_regions, align 8
  %139 = call i32 @ARRAY_SIZE(%struct.TYPE_20__* %138)
  %140 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %141 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 2
  store i32 %139, i32* %147, align 4
  %148 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %149 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i64 %153
  %155 = call i32 @wm_adsp2_init(%struct.TYPE_19__* %154)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %61
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %2, align 4
  br label %324

160:                                              ; preds = %61
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %58

164:                                              ; preds = %58
  store i32 0, i32* %6, align 4
  br label %165

165:                                              ; preds = %180, %164
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %168 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %167, i32 0, i32 1
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %168, align 8
  %170 = call i32 @ARRAY_SIZE(%struct.TYPE_20__* %169)
  %171 = icmp slt i32 %166, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %165
  %173 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %174 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %173, i32 0, i32 1
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 0
  store i32 3, i32* %179, align 4
  br label %180

180:                                              ; preds = %172
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %165

183:                                              ; preds = %165
  %184 = load %struct.arizona*, %struct.arizona** %4, align 8
  %185 = load i64, i64* @ARIZONA_FLL1_CONTROL_1, align 8
  %186 = sub nsw i64 %185, 1
  %187 = load i32, i32* @ARIZONA_IRQ_FLL1_LOCK, align 4
  %188 = load i32, i32* @ARIZONA_IRQ_FLL1_CLOCK_OK, align 4
  %189 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %190 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %189, i32 0, i32 1
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i64 0
  %193 = call i32 @arizona_init_fll(%struct.arizona* %184, i32 1, i64 %186, i32 %187, i32 %188, %struct.TYPE_20__* %192)
  %194 = load %struct.arizona*, %struct.arizona** %4, align 8
  %195 = load i64, i64* @ARIZONA_FLL2_CONTROL_1, align 8
  %196 = sub nsw i64 %195, 1
  %197 = load i32, i32* @ARIZONA_IRQ_FLL2_LOCK, align 4
  %198 = load i32, i32* @ARIZONA_IRQ_FLL2_CLOCK_OK, align 4
  %199 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %200 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %199, i32 0, i32 1
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i64 1
  %203 = call i32 @arizona_init_fll(%struct.arizona* %194, i32 2, i64 %196, i32 %197, i32 %198, %struct.TYPE_20__* %202)
  %204 = load %struct.arizona*, %struct.arizona** %4, align 8
  %205 = getelementptr inbounds %struct.arizona, %struct.arizona* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @ARIZONA_SAMPLE_RATE_2_MASK, align 4
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ARIZONA_SAMPLE_RATE_2, i32 0, i32 0), align 4
  %209 = call i32 @regmap_update_bits(i32 %206, i32 %208, i32 %207, i32 17)
  %210 = load %struct.arizona*, %struct.arizona** %4, align 8
  %211 = getelementptr inbounds %struct.arizona, %struct.arizona* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @ARIZONA_SAMPLE_RATE_3_MASK, align 4
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ARIZONA_SAMPLE_RATE_3, i32 0, i32 0), align 4
  %215 = call i32 @regmap_update_bits(i32 %212, i32 %214, i32 %213, i32 18)
  store i32 0, i32* %6, align 4
  br label %216

216:                                              ; preds = %226, %183
  %217 = load i32, i32* %6, align 4
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cs47l24_dai, align 8
  %219 = call i32 @ARRAY_SIZE(%struct.TYPE_20__* %218)
  %220 = icmp slt i32 %217, %219
  br i1 %220, label %221, label %229

221:                                              ; preds = %216
  %222 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %223 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %222, i32 0, i32 0
  %224 = load i32, i32* %6, align 4
  %225 = call i32 @arizona_init_dai(%struct.TYPE_18__* %223, i32 %224)
  br label %226

226:                                              ; preds = %221
  %227 = load i32, i32* %6, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %6, align 4
  br label %216

229:                                              ; preds = %216
  store i32 0, i32* %6, align 4
  br label %230

230:                                              ; preds = %248, %229
  %231 = load i32, i32* %6, align 4
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cs47l24_digital_vu, align 8
  %233 = call i32 @ARRAY_SIZE(%struct.TYPE_20__* %232)
  %234 = icmp slt i32 %231, %233
  br i1 %234, label %235, label %251

235:                                              ; preds = %230
  %236 = load %struct.arizona*, %struct.arizona** %4, align 8
  %237 = getelementptr inbounds %struct.arizona, %struct.arizona* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cs47l24_digital_vu, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i64 %241
  %243 = load i32, i32* @CS47L24_DIG_VU, align 4
  %244 = load i32, i32* @CS47L24_DIG_VU, align 4
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @regmap_update_bits(i32 %238, i32 %246, i32 %243, i32 %244)
  br label %248

248:                                              ; preds = %235
  %249 = load i32, i32* %6, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %6, align 4
  br label %230

251:                                              ; preds = %230
  %252 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %253 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %252, i32 0, i32 0
  %254 = call i32 @pm_runtime_enable(%struct.TYPE_21__* %253)
  %255 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %256 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %255, i32 0, i32 0
  %257 = call i32 @pm_runtime_idle(%struct.TYPE_21__* %256)
  %258 = load %struct.arizona*, %struct.arizona** %4, align 8
  %259 = load i32, i32* @ARIZONA_IRQ_DSP_IRQ1, align 4
  %260 = load i32, i32* @cs47l24_adsp2_irq, align 4
  %261 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %262 = call i32 @arizona_request_irq(%struct.arizona* %258, i32 %259, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %260, %struct.cs47l24_priv* %261)
  store i32 %262, i32* %7, align 4
  %263 = load i32, i32* %7, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %251
  %266 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %267 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %266, i32 0, i32 0
  %268 = load i32, i32* %7, align 4
  %269 = call i32 @dev_err(%struct.TYPE_21__* %267, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %268)
  %270 = load i32, i32* %7, align 4
  store i32 %270, i32* %2, align 4
  br label %324

271:                                              ; preds = %251
  %272 = load %struct.arizona*, %struct.arizona** %4, align 8
  %273 = load i32, i32* @ARIZONA_IRQ_DSP_IRQ1, align 4
  %274 = call i32 @arizona_set_irq_wake(%struct.arizona* %272, i32 %273, i32 1)
  store i32 %274, i32* %7, align 4
  %275 = load i32, i32* %7, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %271
  %278 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %279 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %278, i32 0, i32 0
  %280 = load i32, i32* %7, align 4
  %281 = call i32 @dev_warn(%struct.TYPE_21__* %279, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %280)
  br label %282

282:                                              ; preds = %277, %271
  %283 = load %struct.arizona*, %struct.arizona** %4, align 8
  %284 = call i32 @arizona_init_common(%struct.arizona* %283)
  %285 = load %struct.arizona*, %struct.arizona** %4, align 8
  %286 = call i32 @arizona_init_vol_limit(%struct.arizona* %285)
  store i32 %286, i32* %7, align 4
  %287 = load i32, i32* %7, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %282
  br label %315

290:                                              ; preds = %282
  %291 = load %struct.arizona*, %struct.arizona** %4, align 8
  %292 = call i32 @arizona_init_spk_irqs(%struct.arizona* %291)
  store i32 %292, i32* %7, align 4
  %293 = load i32, i32* %7, align 4
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %290
  br label %315

296:                                              ; preds = %290
  %297 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %298 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %297, i32 0, i32 0
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cs47l24_dai, align 8
  %300 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cs47l24_dai, align 8
  %301 = call i32 @ARRAY_SIZE(%struct.TYPE_20__* %300)
  %302 = call i32 @devm_snd_soc_register_component(%struct.TYPE_21__* %298, i32* @soc_component_dev_cs47l24, %struct.TYPE_20__* %299, i32 %301)
  store i32 %302, i32* %7, align 4
  %303 = load i32, i32* %7, align 4
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %296
  %306 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %307 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %306, i32 0, i32 0
  %308 = load i32, i32* %7, align 4
  %309 = call i32 @dev_err(%struct.TYPE_21__* %307, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %308)
  br label %312

310:                                              ; preds = %296
  %311 = load i32, i32* %7, align 4
  store i32 %311, i32* %2, align 4
  br label %324

312:                                              ; preds = %305
  %313 = load %struct.arizona*, %struct.arizona** %4, align 8
  %314 = call i32 @arizona_free_spk_irqs(%struct.arizona* %313)
  br label %315

315:                                              ; preds = %312, %295, %289
  %316 = load %struct.arizona*, %struct.arizona** %4, align 8
  %317 = load i32, i32* @ARIZONA_IRQ_DSP_IRQ1, align 4
  %318 = call i32 @arizona_set_irq_wake(%struct.arizona* %316, i32 %317, i32 0)
  %319 = load %struct.arizona*, %struct.arizona** %4, align 8
  %320 = load i32, i32* @ARIZONA_IRQ_DSP_IRQ1, align 4
  %321 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %322 = call i32 @arizona_free_irq(%struct.arizona* %319, i32 %320, %struct.cs47l24_priv* %321)
  %323 = load i32, i32* %7, align 4
  store i32 %323, i32* %2, align 4
  br label %324

324:                                              ; preds = %315, %310, %265, %158, %43, %25
  %325 = load i32, i32* %2, align 4
  ret i32 %325
}

declare dso_local %struct.arizona* @dev_get_drvdata(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_20__*) #1

declare dso_local %struct.cs47l24_priv* @devm_kzalloc(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_get_platdata(i32) #1

declare dso_local i32 @arizona_of_get_audio_pdata(%struct.arizona*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cs47l24_priv*) #1

declare dso_local i32 @wm_adsp2_init(%struct.TYPE_19__*) #1

declare dso_local i32 @arizona_init_fll(%struct.arizona*, i32, i64, i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @arizona_init_dai(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_21__*) #1

declare dso_local i32 @pm_runtime_idle(%struct.TYPE_21__*) #1

declare dso_local i32 @arizona_request_irq(%struct.arizona*, i32, i8*, i32, %struct.cs47l24_priv*) #1

declare dso_local i32 @dev_err(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @arizona_set_irq_wake(%struct.arizona*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @arizona_init_common(%struct.arizona*) #1

declare dso_local i32 @arizona_init_vol_limit(%struct.arizona*) #1

declare dso_local i32 @arizona_init_spk_irqs(%struct.arizona*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_21__*, i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @arizona_free_spk_irqs(%struct.arizona*) #1

declare dso_local i32 @arizona_free_irq(%struct.arizona*, i32, %struct.cs47l24_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
