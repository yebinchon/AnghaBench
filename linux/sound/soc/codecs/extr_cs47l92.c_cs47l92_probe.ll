; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l92.c_cs47l92_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l92.c_cs47l92_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.madera = type { i32, i32, i32, i32 }
%struct.cs47l92 = type { %struct.TYPE_18__, i32* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.madera* }
%struct.TYPE_16__ = type { i8*, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }

@cs47l92_dai = common dso_local global i32* null, align 8
@MADERA_MAX_DAI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"irqchip driver not ready\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MADERA_IRQ_DSP_IRQ1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ADSP2 Compressed IRQ\00", align 1
@cs47l92_adsp2_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to request DSP IRQ: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to set DSP IRQ wake: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"cs47l92\00", align 1
@WMFW_ADSP2 = common dso_local global i32 0, align 4
@MADERA_DSP1_CONFIG_1 = common dso_local global i32 0, align 4
@cs47l92_dsp1_regions = common dso_local global i32* null, align 8
@WM_ADSP2_REGION_1_9 = common dso_local global i32 0, align 4
@wm_adsp2_bus_error = common dso_local global i32 0, align 4
@MADERA_FLL1_CONTROL_1 = common dso_local global i64 0, align 8
@MADERA_FLL2_CONTROL_1 = common dso_local global i64 0, align 8
@cs47l92_digital_vu = common dso_local global i32* null, align 8
@CS47L92_DIG_VU = common dso_local global i32 0, align 4
@soc_component_dev_cs47l92 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cs47l92_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l92_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.madera*, align 8
  %5 = alloca %struct.cs47l92*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.madera* @dev_get_drvdata(i32 %11)
  store %struct.madera* %12, %struct.madera** %4, align 8
  %13 = load i32*, i32** @cs47l92_dai, align 8
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
  %26 = call i32 @dev_dbg(%struct.TYPE_17__* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EPROBE_DEFER, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %282

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.cs47l92* @devm_kzalloc(%struct.TYPE_17__* %31, i32 40, i32 %32)
  store %struct.cs47l92* %33, %struct.cs47l92** %5, align 8
  %34 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %35 = icmp ne %struct.cs47l92* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %282

39:                                               ; preds = %29
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %42 = call i32 @platform_set_drvdata(%struct.platform_device* %40, %struct.cs47l92* %41)
  %43 = load %struct.madera*, %struct.madera** %4, align 8
  %44 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %45 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 3
  store %struct.madera* %43, %struct.madera** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %50 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 2
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %51, align 8
  %52 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %53 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  store i32 8, i32* %54, align 8
  %55 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %56 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %55, i32 0, i32 0
  %57 = call i32 @madera_core_init(%struct.TYPE_18__* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %39
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %282

62:                                               ; preds = %39
  %63 = load %struct.madera*, %struct.madera** %4, align 8
  %64 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %65 = load i32, i32* @cs47l92_adsp2_irq, align 4
  %66 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %67 = call i32 @madera_request_irq(%struct.madera* %63, i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %65, %struct.cs47l92* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @dev_err(%struct.TYPE_17__* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %277

75:                                               ; preds = %62
  %76 = load %struct.madera*, %struct.madera** %4, align 8
  %77 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %78 = call i32 @madera_set_irq_wake(%struct.madera* %76, i32 %77, i32 1)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @dev_warn(%struct.TYPE_17__* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %81, %75
  %87 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %88 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %92, align 8
  %93 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %94 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  store i32 1, i32* %98, align 8
  %99 = load i32, i32* @WMFW_ADSP2, align 4
  %100 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %101 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 9
  store i32 %99, i32* %105, align 4
  %106 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %107 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  store i32 2, i32* %111, align 4
  %112 = load %struct.madera*, %struct.madera** %4, align 8
  %113 = getelementptr inbounds %struct.madera, %struct.madera* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %116 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 8
  store i32 %114, i32* %120, align 8
  %121 = load %struct.madera*, %struct.madera** %4, align 8
  %122 = getelementptr inbounds %struct.madera, %struct.madera* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %125 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 7
  store i32 %123, i32* %129, align 4
  %130 = load i32, i32* @MADERA_DSP1_CONFIG_1, align 4
  %131 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %132 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 6
  store i32 %130, i32* %136, align 8
  %137 = load i32*, i32** @cs47l92_dsp1_regions, align 8
  %138 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %139 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 5
  store i32* %137, i32** %143, align 8
  %144 = load i32*, i32** @cs47l92_dsp1_regions, align 8
  %145 = call i32 @ARRAY_SIZE(i32* %144)
  %146 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %147 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 3
  store i32 %145, i32* %151, align 8
  %152 = load i32, i32* @WM_ADSP2_REGION_1_9, align 4
  %153 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %154 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 4
  store i32 %152, i32* %158, align 4
  %159 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %160 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i64 0
  %164 = call i32 @wm_adsp2_init(%struct.TYPE_16__* %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %86
  br label %269

168:                                              ; preds = %86
  %169 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %170 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %169, i32 0, i32 0
  %171 = load i32, i32* @wm_adsp2_bus_error, align 4
  %172 = call i32 @madera_init_bus_error_irq(%struct.TYPE_18__* %170, i32 0, i32 %171)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %168
  %176 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %177 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i64 0
  %181 = call i32 @wm_adsp2_remove(%struct.TYPE_16__* %180)
  br label %262

182:                                              ; preds = %168
  %183 = load %struct.madera*, %struct.madera** %4, align 8
  %184 = load i64, i64* @MADERA_FLL1_CONTROL_1, align 8
  %185 = sub nsw i64 %184, 1
  %186 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %187 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = call i32 @madera_init_fll(%struct.madera* %183, i32 1, i64 %185, i32* %189)
  %191 = load %struct.madera*, %struct.madera** %4, align 8
  %192 = load i64, i64* @MADERA_FLL2_CONTROL_1, align 8
  %193 = sub nsw i64 %192, 1
  %194 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %195 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = call i32 @madera_init_fll(%struct.madera* %191, i32 2, i64 %193, i32* %197)
  store i32 0, i32* %6, align 4
  br label %199

199:                                              ; preds = %209, %182
  %200 = load i32, i32* %6, align 4
  %201 = load i32*, i32** @cs47l92_dai, align 8
  %202 = call i32 @ARRAY_SIZE(i32* %201)
  %203 = icmp slt i32 %200, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %199
  %205 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %206 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %205, i32 0, i32 0
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @madera_init_dai(%struct.TYPE_18__* %206, i32 %207)
  br label %209

209:                                              ; preds = %204
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %6, align 4
  br label %199

212:                                              ; preds = %199
  store i32 0, i32* %6, align 4
  br label %213

213:                                              ; preds = %230, %212
  %214 = load i32, i32* %6, align 4
  %215 = load i32*, i32** @cs47l92_digital_vu, align 8
  %216 = call i32 @ARRAY_SIZE(i32* %215)
  %217 = icmp slt i32 %214, %216
  br i1 %217, label %218, label %233

218:                                              ; preds = %213
  %219 = load %struct.madera*, %struct.madera** %4, align 8
  %220 = getelementptr inbounds %struct.madera, %struct.madera* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** @cs47l92_digital_vu, align 8
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @CS47L92_DIG_VU, align 4
  %228 = load i32, i32* @CS47L92_DIG_VU, align 4
  %229 = call i32 @regmap_update_bits(i32 %221, i32 %226, i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %218
  %231 = load i32, i32* %6, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %6, align 4
  br label %213

233:                                              ; preds = %213
  %234 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %235 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %234, i32 0, i32 0
  %236 = call i32 @pm_runtime_enable(%struct.TYPE_17__* %235)
  %237 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %238 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %237, i32 0, i32 0
  %239 = call i32 @pm_runtime_idle(%struct.TYPE_17__* %238)
  %240 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %241 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %240, i32 0, i32 0
  %242 = load i32*, i32** @cs47l92_dai, align 8
  %243 = load i32*, i32** @cs47l92_dai, align 8
  %244 = call i32 @ARRAY_SIZE(i32* %243)
  %245 = call i32 @devm_snd_soc_register_component(%struct.TYPE_17__* %241, i32* @soc_component_dev_cs47l92, i32* %242, i32 %244)
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %7, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %233
  %249 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %250 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %249, i32 0, i32 0
  %251 = load i32, i32* %7, align 4
  %252 = call i32 @dev_err(%struct.TYPE_17__* %250, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %251)
  br label %255

253:                                              ; preds = %233
  %254 = load i32, i32* %7, align 4
  store i32 %254, i32* %2, align 4
  br label %282

255:                                              ; preds = %248
  %256 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %257 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %256, i32 0, i32 0
  %258 = call i32 @pm_runtime_disable(%struct.TYPE_17__* %257)
  %259 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %260 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %259, i32 0, i32 0
  %261 = call i32 @madera_free_bus_error_irq(%struct.TYPE_18__* %260, i32 0)
  br label %262

262:                                              ; preds = %255, %175
  %263 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %264 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i64 0
  %268 = call i32 @wm_adsp2_remove(%struct.TYPE_16__* %267)
  br label %269

269:                                              ; preds = %262, %167
  %270 = load %struct.madera*, %struct.madera** %4, align 8
  %271 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %272 = call i32 @madera_set_irq_wake(%struct.madera* %270, i32 %271, i32 0)
  %273 = load %struct.madera*, %struct.madera** %4, align 8
  %274 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %275 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %276 = call i32 @madera_free_irq(%struct.madera* %273, i32 %274, %struct.cs47l92* %275)
  br label %277

277:                                              ; preds = %269, %70
  %278 = load %struct.cs47l92*, %struct.cs47l92** %5, align 8
  %279 = getelementptr inbounds %struct.cs47l92, %struct.cs47l92* %278, i32 0, i32 0
  %280 = call i32 @madera_core_free(%struct.TYPE_18__* %279)
  %281 = load i32, i32* %7, align 4
  store i32 %281, i32* %2, align 4
  br label %282

282:                                              ; preds = %277, %253, %60, %36, %23
  %283 = load i32, i32* %2, align 4
  ret i32 %283
}

declare dso_local %struct.madera* @dev_get_drvdata(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_17__*, i8*) #1

declare dso_local %struct.cs47l92* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cs47l92*) #1

declare dso_local i32 @madera_core_init(%struct.TYPE_18__*) #1

declare dso_local i32 @madera_request_irq(%struct.madera*, i32, i8*, i32, %struct.cs47l92*) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @madera_set_irq_wake(%struct.madera*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @wm_adsp2_init(%struct.TYPE_16__*) #1

declare dso_local i32 @madera_init_bus_error_irq(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @wm_adsp2_remove(%struct.TYPE_16__*) #1

declare dso_local i32 @madera_init_fll(%struct.madera*, i32, i64, i32*) #1

declare dso_local i32 @madera_init_dai(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_17__*) #1

declare dso_local i32 @pm_runtime_idle(%struct.TYPE_17__*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_17__*) #1

declare dso_local i32 @madera_free_bus_error_irq(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @madera_free_irq(%struct.madera*, i32, %struct.cs47l92*) #1

declare dso_local i32 @madera_core_free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
