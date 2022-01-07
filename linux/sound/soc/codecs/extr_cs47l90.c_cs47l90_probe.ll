; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l90.c_cs47l90_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l90.c_cs47l90_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.madera = type { i32, i32, i32, i32 }
%struct.cs47l90 = type { %struct.TYPE_18__, i32* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.madera* }
%struct.TYPE_16__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cs47l90_dai = common dso_local global i32* null, align 8
@MADERA_MAX_DAI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"irqchip driver not ready\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MADERA_IRQ_DSP_IRQ1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ADSP2 Compressed IRQ\00", align 1
@cs47l90_adsp2_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to request DSP IRQ: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to set DSP IRQ wake: %d\0A\00", align 1
@CS47L90_NUM_ADSP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"cs47l90\00", align 1
@WMFW_ADSP2 = common dso_local global i32 0, align 4
@cs47l90_dsp_control_bases = common dso_local global i32* null, align 8
@cs47l90_dsp_regions = common dso_local global i32* null, align 8
@cs47l90_dsp1_regions = common dso_local global i32* null, align 8
@WM_ADSP2_REGION_1_9 = common dso_local global i32 0, align 4
@wm_adsp2_bus_error = common dso_local global i32 0, align 4
@MADERA_FLL1_CONTROL_1 = common dso_local global i64 0, align 8
@MADERA_FLL2_CONTROL_1 = common dso_local global i64 0, align 8
@MADERA_FLLAO_CONTROL_1 = common dso_local global i64 0, align 8
@cs47l90_digital_vu = common dso_local global i32* null, align 8
@CS47L90_DIG_VU = common dso_local global i32 0, align 4
@soc_component_dev_cs47l90 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cs47l90_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l90_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.madera*, align 8
  %5 = alloca %struct.cs47l90*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.madera* @dev_get_drvdata(i32 %11)
  store %struct.madera* %12, %struct.madera** %4, align 8
  %13 = load i32*, i32** @cs47l90_dai, align 8
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
  br label %371

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.cs47l90* @devm_kzalloc(%struct.TYPE_17__* %31, i32 40, i32 %32)
  store %struct.cs47l90* %33, %struct.cs47l90** %5, align 8
  %34 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %35 = icmp ne %struct.cs47l90* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %371

39:                                               ; preds = %29
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %42 = call i32 @platform_set_drvdata(%struct.platform_device* %40, %struct.cs47l90* %41)
  %43 = load %struct.madera*, %struct.madera** %4, align 8
  %44 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %45 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 3
  store %struct.madera* %43, %struct.madera** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %50 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 2
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %51, align 8
  %52 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %53 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  store i32 10, i32* %54, align 8
  %55 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %56 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %55, i32 0, i32 0
  %57 = call i32 @madera_core_init(%struct.TYPE_18__* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %39
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %371

62:                                               ; preds = %39
  %63 = load %struct.madera*, %struct.madera** %4, align 8
  %64 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %65 = load i32, i32* @cs47l90_adsp2_irq, align 4
  %66 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %67 = call i32 @madera_request_irq(%struct.madera* %63, i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %65, %struct.cs47l90* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @dev_err(%struct.TYPE_17__* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %366

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
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %249, %86
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @CS47L90_NUM_ADSP, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %252

91:                                               ; preds = %87
  %92 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %93 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %99, align 8
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  %102 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %103 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  store i32 %101, i32* %109, align 8
  %110 = load i32, i32* @WMFW_ADSP2, align 4
  %111 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %112 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 9
  store i32 %110, i32* %118, align 8
  %119 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %120 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 2
  store i32 2, i32* %126, align 4
  %127 = load %struct.madera*, %struct.madera** %4, align 8
  %128 = getelementptr inbounds %struct.madera, %struct.madera* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %131 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 8
  store i32 %129, i32* %137, align 4
  %138 = load %struct.madera*, %struct.madera** %4, align 8
  %139 = getelementptr inbounds %struct.madera, %struct.madera* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %142 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 7
  store i32 %140, i32* %148, align 8
  %149 = load i32*, i32** @cs47l90_dsp_control_bases, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %155 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 6
  store i32 %153, i32* %161, align 4
  %162 = load i32*, i32** @cs47l90_dsp_regions, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %168 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 5
  store i32 %166, i32* %174, align 8
  %175 = load i32*, i32** @cs47l90_dsp1_regions, align 8
  %176 = call i32 @ARRAY_SIZE(i32* %175)
  %177 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %178 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 3
  store i32 %176, i32* %184, align 8
  %185 = load i32, i32* @WM_ADSP2_REGION_1_9, align 4
  %186 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %187 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 4
  store i32 %185, i32* %193, align 4
  %194 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %195 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i64 %199
  %201 = call i32 @wm_adsp2_init(%struct.TYPE_16__* %200)
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %222

204:                                              ; preds = %91
  %205 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %206 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %205, i32 0, i32 0
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @wm_adsp2_bus_error, align 4
  %209 = call i32 @madera_init_bus_error_irq(%struct.TYPE_18__* %206, i32 %207, i32 %208)
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* %7, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %204
  %213 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %214 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %215, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i64 %218
  %220 = call i32 @wm_adsp2_remove(%struct.TYPE_16__* %219)
  br label %221

221:                                              ; preds = %212, %204
  br label %222

222:                                              ; preds = %221, %91
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %248

225:                                              ; preds = %222
  %226 = load i32, i32* %6, align 4
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %6, align 4
  br label %228

228:                                              ; preds = %244, %225
  %229 = load i32, i32* %6, align 4
  %230 = icmp sge i32 %229, 0
  br i1 %230, label %231, label %247

231:                                              ; preds = %228
  %232 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %233 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %232, i32 0, i32 0
  %234 = load i32, i32* %6, align 4
  %235 = call i32 @madera_free_bus_error_irq(%struct.TYPE_18__* %233, i32 %234)
  %236 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %237 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %238, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i64 %241
  %243 = call i32 @wm_adsp2_remove(%struct.TYPE_16__* %242)
  br label %244

244:                                              ; preds = %231
  %245 = load i32, i32* %6, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %6, align 4
  br label %228

247:                                              ; preds = %228
  br label %358

248:                                              ; preds = %222
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %6, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %6, align 4
  br label %87

252:                                              ; preds = %87
  %253 = load %struct.madera*, %struct.madera** %4, align 8
  %254 = load i64, i64* @MADERA_FLL1_CONTROL_1, align 8
  %255 = sub nsw i64 %254, 1
  %256 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %257 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  %260 = call i32 @madera_init_fll(%struct.madera* %253, i32 1, i64 %255, i32* %259)
  %261 = load %struct.madera*, %struct.madera** %4, align 8
  %262 = load i64, i64* @MADERA_FLL2_CONTROL_1, align 8
  %263 = sub nsw i64 %262, 1
  %264 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %265 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 1
  %268 = call i32 @madera_init_fll(%struct.madera* %261, i32 2, i64 %263, i32* %267)
  %269 = load %struct.madera*, %struct.madera** %4, align 8
  %270 = load i64, i64* @MADERA_FLLAO_CONTROL_1, align 8
  %271 = sub nsw i64 %270, 1
  %272 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %273 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 2
  %276 = call i32 @madera_init_fll(%struct.madera* %269, i32 4, i64 %271, i32* %275)
  store i32 0, i32* %6, align 4
  br label %277

277:                                              ; preds = %287, %252
  %278 = load i32, i32* %6, align 4
  %279 = load i32*, i32** @cs47l90_dai, align 8
  %280 = call i32 @ARRAY_SIZE(i32* %279)
  %281 = icmp slt i32 %278, %280
  br i1 %281, label %282, label %290

282:                                              ; preds = %277
  %283 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %284 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %283, i32 0, i32 0
  %285 = load i32, i32* %6, align 4
  %286 = call i32 @madera_init_dai(%struct.TYPE_18__* %284, i32 %285)
  br label %287

287:                                              ; preds = %282
  %288 = load i32, i32* %6, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %6, align 4
  br label %277

290:                                              ; preds = %277
  store i32 0, i32* %6, align 4
  br label %291

291:                                              ; preds = %308, %290
  %292 = load i32, i32* %6, align 4
  %293 = load i32*, i32** @cs47l90_digital_vu, align 8
  %294 = call i32 @ARRAY_SIZE(i32* %293)
  %295 = icmp slt i32 %292, %294
  br i1 %295, label %296, label %311

296:                                              ; preds = %291
  %297 = load %struct.madera*, %struct.madera** %4, align 8
  %298 = getelementptr inbounds %struct.madera, %struct.madera* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32*, i32** @cs47l90_digital_vu, align 8
  %301 = load i32, i32* %6, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @CS47L90_DIG_VU, align 4
  %306 = load i32, i32* @CS47L90_DIG_VU, align 4
  %307 = call i32 @regmap_update_bits(i32 %299, i32 %304, i32 %305, i32 %306)
  br label %308

308:                                              ; preds = %296
  %309 = load i32, i32* %6, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %6, align 4
  br label %291

311:                                              ; preds = %291
  %312 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %313 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %312, i32 0, i32 0
  %314 = call i32 @pm_runtime_enable(%struct.TYPE_17__* %313)
  %315 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %316 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %315, i32 0, i32 0
  %317 = call i32 @pm_runtime_idle(%struct.TYPE_17__* %316)
  %318 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %319 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %318, i32 0, i32 0
  %320 = load i32*, i32** @cs47l90_dai, align 8
  %321 = load i32*, i32** @cs47l90_dai, align 8
  %322 = call i32 @ARRAY_SIZE(i32* %321)
  %323 = call i32 @devm_snd_soc_register_component(%struct.TYPE_17__* %319, i32* @soc_component_dev_cs47l90, i32* %320, i32 %322)
  store i32 %323, i32* %7, align 4
  %324 = load i32, i32* %7, align 4
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %331

326:                                              ; preds = %311
  %327 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %328 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %327, i32 0, i32 0
  %329 = load i32, i32* %7, align 4
  %330 = call i32 @dev_err(%struct.TYPE_17__* %328, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %329)
  br label %333

331:                                              ; preds = %311
  %332 = load i32, i32* %7, align 4
  store i32 %332, i32* %2, align 4
  br label %371

333:                                              ; preds = %326
  %334 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %335 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %334, i32 0, i32 0
  %336 = call i32 @pm_runtime_disable(%struct.TYPE_17__* %335)
  store i32 0, i32* %6, align 4
  br label %337

337:                                              ; preds = %354, %333
  %338 = load i32, i32* %6, align 4
  %339 = load i32, i32* @CS47L90_NUM_ADSP, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %357

341:                                              ; preds = %337
  %342 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %343 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %342, i32 0, i32 0
  %344 = load i32, i32* %6, align 4
  %345 = call i32 @madera_free_bus_error_irq(%struct.TYPE_18__* %343, i32 %344)
  %346 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %347 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 1
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** %348, align 8
  %350 = load i32, i32* %6, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i64 %351
  %353 = call i32 @wm_adsp2_remove(%struct.TYPE_16__* %352)
  br label %354

354:                                              ; preds = %341
  %355 = load i32, i32* %6, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %6, align 4
  br label %337

357:                                              ; preds = %337
  br label %358

358:                                              ; preds = %357, %247
  %359 = load %struct.madera*, %struct.madera** %4, align 8
  %360 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %361 = call i32 @madera_set_irq_wake(%struct.madera* %359, i32 %360, i32 0)
  %362 = load %struct.madera*, %struct.madera** %4, align 8
  %363 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %364 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %365 = call i32 @madera_free_irq(%struct.madera* %362, i32 %363, %struct.cs47l90* %364)
  br label %366

366:                                              ; preds = %358, %70
  %367 = load %struct.cs47l90*, %struct.cs47l90** %5, align 8
  %368 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %367, i32 0, i32 0
  %369 = call i32 @madera_core_free(%struct.TYPE_18__* %368)
  %370 = load i32, i32* %7, align 4
  store i32 %370, i32* %2, align 4
  br label %371

371:                                              ; preds = %366, %331, %60, %36, %23
  %372 = load i32, i32* %2, align 4
  ret i32 %372
}

declare dso_local %struct.madera* @dev_get_drvdata(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_17__*, i8*) #1

declare dso_local %struct.cs47l90* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cs47l90*) #1

declare dso_local i32 @madera_core_init(%struct.TYPE_18__*) #1

declare dso_local i32 @madera_request_irq(%struct.madera*, i32, i8*, i32, %struct.cs47l90*) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @madera_set_irq_wake(%struct.madera*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @wm_adsp2_init(%struct.TYPE_16__*) #1

declare dso_local i32 @madera_init_bus_error_irq(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @wm_adsp2_remove(%struct.TYPE_16__*) #1

declare dso_local i32 @madera_free_bus_error_irq(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @madera_init_fll(%struct.madera*, i32, i64, i32*) #1

declare dso_local i32 @madera_init_dai(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_17__*) #1

declare dso_local i32 @pm_runtime_idle(%struct.TYPE_17__*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_17__*) #1

declare dso_local i32 @madera_free_irq(%struct.madera*, i32, %struct.cs47l90*) #1

declare dso_local i32 @madera_core_free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
