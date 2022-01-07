; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l15.c_cs47l15_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l15.c_cs47l15_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.madera = type { i32, i32, i32, i32 }
%struct.cs47l15 = type { %struct.TYPE_20__, i32* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_19__*, %struct.madera* }
%struct.TYPE_18__ = type { i8*, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }

@cs47l15_dai = common dso_local global i32* null, align 8
@MADERA_MAX_DAI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"irqchip driver not ready\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MADERA_IRQ_DSP_IRQ1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ADSP2 Compressed IRQ\00", align 1
@cs47l15_adsp2_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to request DSP IRQ: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to set DSP IRQ wake: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"cs47l15\00", align 1
@WMFW_ADSP2 = common dso_local global i32 0, align 4
@MADERA_DSP1_CONFIG_1 = common dso_local global i32 0, align 4
@cs47l15_dsp1_regions = common dso_local global i32* null, align 8
@WM_ADSP2_REGION_1 = common dso_local global i32 0, align 4
@WM_ADSP2_REGION_2 = common dso_local global i32 0, align 4
@WM_ADSP2_REGION_3 = common dso_local global i32 0, align 4
@wm_adsp2_bus_error = common dso_local global i32 0, align 4
@MADERA_FLL1_CONTROL_1 = common dso_local global i64 0, align 8
@MADERA_FLLAO_CONTROL_1 = common dso_local global i64 0, align 8
@cs47l15_digital_vu = common dso_local global i32* null, align 8
@CS47L15_DIG_VU = common dso_local global i32 0, align 4
@soc_component_dev_cs47l15 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cs47l15_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l15_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.madera*, align 8
  %5 = alloca %struct.cs47l15*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.madera* @dev_get_drvdata(i32 %11)
  store %struct.madera* %12, %struct.madera** %4, align 8
  %13 = load i32*, i32** @cs47l15_dai, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = load i32, i32* @MADERA_MAX_DAI, align 4
  %16 = icmp sgt i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUILD_BUG_ON(i32 %17)
  %19 = load %struct.madera*, %struct.madera** %4, align 8
  %20 = getelementptr inbounds %struct.madera, %struct.madera* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @dev_dbg(%struct.TYPE_19__* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EPROBE_DEFER, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %291

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.cs47l15* @devm_kzalloc(%struct.TYPE_19__* %31, i32 40, i32 %32)
  store %struct.cs47l15* %33, %struct.cs47l15** %5, align 8
  %34 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %35 = icmp ne %struct.cs47l15* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %291

39:                                               ; preds = %29
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %42 = call i32 @platform_set_drvdata(%struct.platform_device* %40, %struct.cs47l15* %41)
  %43 = load %struct.madera*, %struct.madera** %4, align 8
  %44 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %45 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 3
  store %struct.madera* %43, %struct.madera** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %50 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 2
  store %struct.TYPE_19__* %48, %struct.TYPE_19__** %51, align 8
  %52 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %53 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  store i32 4, i32* %54, align 8
  %55 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %56 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %55, i32 0, i32 0
  %57 = call i32 @madera_core_init(%struct.TYPE_20__* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %39
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %291

62:                                               ; preds = %39
  %63 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %64 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %63, i32 0, i32 0
  %65 = call i32 @madera_init_overheat(%struct.TYPE_20__* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %286

69:                                               ; preds = %62
  %70 = load %struct.madera*, %struct.madera** %4, align 8
  %71 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %72 = load i32, i32* @cs47l15_adsp2_irq, align 4
  %73 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %74 = call i32 @madera_request_irq(%struct.madera* %70, i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %72, %struct.cs47l15* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @dev_err(%struct.TYPE_19__* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %282

82:                                               ; preds = %69
  %83 = load %struct.madera*, %struct.madera** %4, align 8
  %84 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %85 = call i32 @madera_set_irq_wake(%struct.madera* %83, i32 %84, i32 1)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @dev_warn(%struct.TYPE_19__* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %88, %82
  %94 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %95 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %99, align 8
  %100 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %101 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  store i32 1, i32* %105, align 8
  %106 = load i32, i32* @WMFW_ADSP2, align 4
  %107 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %108 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 9
  store i32 %106, i32* %112, align 4
  %113 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %114 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  store i32 2, i32* %118, align 4
  %119 = load %struct.madera*, %struct.madera** %4, align 8
  %120 = getelementptr inbounds %struct.madera, %struct.madera* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %123 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 8
  store i32 %121, i32* %127, align 8
  %128 = load %struct.madera*, %struct.madera** %4, align 8
  %129 = getelementptr inbounds %struct.madera, %struct.madera* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %132 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 7
  store i32 %130, i32* %136, align 4
  %137 = load i32, i32* @MADERA_DSP1_CONFIG_1, align 4
  %138 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %139 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 6
  store i32 %137, i32* %143, align 8
  %144 = load i32*, i32** @cs47l15_dsp1_regions, align 8
  %145 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %146 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 5
  store i32* %144, i32** %150, align 8
  %151 = load i32*, i32** @cs47l15_dsp1_regions, align 8
  %152 = call i32 @ARRAY_SIZE(i32* %151)
  %153 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %154 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 3
  store i32 %152, i32* %158, align 8
  %159 = load i32, i32* @WM_ADSP2_REGION_1, align 4
  %160 = load i32, i32* @WM_ADSP2_REGION_2, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @WM_ADSP2_REGION_3, align 4
  %163 = or i32 %161, %162
  %164 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %165 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 4
  store i32 %163, i32* %169, align 4
  %170 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %171 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i64 0
  %175 = call i32 @wm_adsp2_init(%struct.TYPE_18__* %174)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %93
  br label %274

179:                                              ; preds = %93
  %180 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %181 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %180, i32 0, i32 0
  %182 = load i32, i32* @wm_adsp2_bus_error, align 4
  %183 = call i32 @madera_init_bus_error_irq(%struct.TYPE_20__* %181, i32 0, i32 %182)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  br label %267

187:                                              ; preds = %179
  %188 = load %struct.madera*, %struct.madera** %4, align 8
  %189 = load i64, i64* @MADERA_FLL1_CONTROL_1, align 8
  %190 = sub nsw i64 %189, 1
  %191 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %192 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = call i32 @madera_init_fll(%struct.madera* %188, i32 1, i64 %190, i32* %194)
  %196 = load %struct.madera*, %struct.madera** %4, align 8
  %197 = load i64, i64* @MADERA_FLLAO_CONTROL_1, align 8
  %198 = sub nsw i64 %197, 1
  %199 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %200 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = call i32 @madera_init_fll(%struct.madera* %196, i32 4, i64 %198, i32* %202)
  store i32 0, i32* %6, align 4
  br label %204

204:                                              ; preds = %214, %187
  %205 = load i32, i32* %6, align 4
  %206 = load i32*, i32** @cs47l15_dai, align 8
  %207 = call i32 @ARRAY_SIZE(i32* %206)
  %208 = icmp slt i32 %205, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %204
  %210 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %211 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %210, i32 0, i32 0
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @madera_init_dai(%struct.TYPE_20__* %211, i32 %212)
  br label %214

214:                                              ; preds = %209
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  br label %204

217:                                              ; preds = %204
  store i32 0, i32* %6, align 4
  br label %218

218:                                              ; preds = %235, %217
  %219 = load i32, i32* %6, align 4
  %220 = load i32*, i32** @cs47l15_digital_vu, align 8
  %221 = call i32 @ARRAY_SIZE(i32* %220)
  %222 = icmp slt i32 %219, %221
  br i1 %222, label %223, label %238

223:                                              ; preds = %218
  %224 = load %struct.madera*, %struct.madera** %4, align 8
  %225 = getelementptr inbounds %struct.madera, %struct.madera* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** @cs47l15_digital_vu, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @CS47L15_DIG_VU, align 4
  %233 = load i32, i32* @CS47L15_DIG_VU, align 4
  %234 = call i32 @regmap_update_bits(i32 %226, i32 %231, i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %223
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %218

238:                                              ; preds = %218
  %239 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %240 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %239, i32 0, i32 0
  %241 = call i32 @pm_runtime_enable(%struct.TYPE_19__* %240)
  %242 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %243 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %242, i32 0, i32 0
  %244 = call i32 @pm_runtime_idle(%struct.TYPE_19__* %243)
  %245 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %246 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %245, i32 0, i32 0
  %247 = load i32*, i32** @cs47l15_dai, align 8
  %248 = load i32*, i32** @cs47l15_dai, align 8
  %249 = call i32 @ARRAY_SIZE(i32* %248)
  %250 = call i32 @devm_snd_soc_register_component(%struct.TYPE_19__* %246, i32* @soc_component_dev_cs47l15, i32* %247, i32 %249)
  store i32 %250, i32* %7, align 4
  %251 = load i32, i32* %7, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %238
  %254 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %255 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %254, i32 0, i32 0
  %256 = load i32, i32* %7, align 4
  %257 = call i32 @dev_err(%struct.TYPE_19__* %255, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %256)
  br label %260

258:                                              ; preds = %238
  %259 = load i32, i32* %7, align 4
  store i32 %259, i32* %2, align 4
  br label %291

260:                                              ; preds = %253
  %261 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %262 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %261, i32 0, i32 0
  %263 = call i32 @pm_runtime_disable(%struct.TYPE_19__* %262)
  %264 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %265 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %264, i32 0, i32 0
  %266 = call i32 @madera_free_bus_error_irq(%struct.TYPE_20__* %265, i32 0)
  br label %267

267:                                              ; preds = %260, %186
  %268 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %269 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i64 0
  %273 = call i32 @wm_adsp2_remove(%struct.TYPE_18__* %272)
  br label %274

274:                                              ; preds = %267, %178
  %275 = load %struct.madera*, %struct.madera** %4, align 8
  %276 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %277 = call i32 @madera_set_irq_wake(%struct.madera* %275, i32 %276, i32 0)
  %278 = load %struct.madera*, %struct.madera** %4, align 8
  %279 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %280 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %281 = call i32 @madera_free_irq(%struct.madera* %278, i32 %279, %struct.cs47l15* %280)
  br label %282

282:                                              ; preds = %274, %77
  %283 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %284 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %283, i32 0, i32 0
  %285 = call i32 @madera_free_overheat(%struct.TYPE_20__* %284)
  br label %286

286:                                              ; preds = %282, %68
  %287 = load %struct.cs47l15*, %struct.cs47l15** %5, align 8
  %288 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %287, i32 0, i32 0
  %289 = call i32 @madera_core_free(%struct.TYPE_20__* %288)
  %290 = load i32, i32* %7, align 4
  store i32 %290, i32* %2, align 4
  br label %291

291:                                              ; preds = %286, %258, %60, %36, %23
  %292 = load i32, i32* %2, align 4
  ret i32 %292
}

declare dso_local %struct.madera* @dev_get_drvdata(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_19__*, i8*) #1

declare dso_local %struct.cs47l15* @devm_kzalloc(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cs47l15*) #1

declare dso_local i32 @madera_core_init(%struct.TYPE_20__*) #1

declare dso_local i32 @madera_init_overheat(%struct.TYPE_20__*) #1

declare dso_local i32 @madera_request_irq(%struct.madera*, i32, i8*, i32, %struct.cs47l15*) #1

declare dso_local i32 @dev_err(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @madera_set_irq_wake(%struct.madera*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @wm_adsp2_init(%struct.TYPE_18__*) #1

declare dso_local i32 @madera_init_bus_error_irq(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @madera_init_fll(%struct.madera*, i32, i64, i32*) #1

declare dso_local i32 @madera_init_dai(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_19__*) #1

declare dso_local i32 @pm_runtime_idle(%struct.TYPE_19__*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_19__*, i32*, i32*, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_19__*) #1

declare dso_local i32 @madera_free_bus_error_irq(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @wm_adsp2_remove(%struct.TYPE_18__*) #1

declare dso_local i32 @madera_free_irq(%struct.madera*, i32, %struct.cs47l15*) #1

declare dso_local i32 @madera_free_overheat(%struct.TYPE_20__*) #1

declare dso_local i32 @madera_core_free(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
