; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l35.c_cs47l35_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l35.c_cs47l35_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.madera = type { i32, i32, i32, i32 }
%struct.cs47l35 = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.madera* }
%struct.TYPE_16__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32 }

@cs47l35_dai = common dso_local global i32* null, align 8
@MADERA_MAX_DAI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"irqchip driver not ready\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MADERA_IRQ_DSP_IRQ1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ADSP2 Compressed IRQ\00", align 1
@cs47l35_adsp2_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to request DSP IRQ: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to set DSP IRQ wake: %d\0A\00", align 1
@CS47L35_NUM_ADSP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"cs47l35\00", align 1
@WMFW_ADSP2 = common dso_local global i32 0, align 4
@wm_adsp2_control_bases = common dso_local global i32* null, align 8
@cs47l35_dsp_regions = common dso_local global i32* null, align 8
@cs47l35_dsp1_regions = common dso_local global i32* null, align 8
@MADERA_FLL1_CONTROL_1 = common dso_local global i64 0, align 8
@cs47l35_digital_vu = common dso_local global i32* null, align 8
@CS47L35_DIG_VU = common dso_local global i32 0, align 4
@soc_component_dev_cs47l35 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cs47l35_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l35_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.madera*, align 8
  %5 = alloca %struct.cs47l35*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.madera* @dev_get_drvdata(i32 %11)
  store %struct.madera* %12, %struct.madera** %4, align 8
  %13 = load i32*, i32** @cs47l35_dai, align 8
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
  br label %326

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.cs47l35* @devm_kzalloc(%struct.TYPE_17__* %31, i32 40, i32 %32)
  store %struct.cs47l35* %33, %struct.cs47l35** %5, align 8
  %34 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %35 = icmp ne %struct.cs47l35* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %326

39:                                               ; preds = %29
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %42 = call i32 @platform_set_drvdata(%struct.platform_device* %40, %struct.cs47l35* %41)
  %43 = load %struct.madera*, %struct.madera** %4, align 8
  %44 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %45 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 3
  store %struct.madera* %43, %struct.madera** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %50 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 2
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %51, align 8
  %52 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %53 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  store i32 4, i32* %54, align 8
  %55 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %56 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %55, i32 0, i32 0
  %57 = call i32 @madera_core_init(%struct.TYPE_18__* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %39
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %326

62:                                               ; preds = %39
  %63 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %64 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %63, i32 0, i32 0
  %65 = call i32 @madera_init_overheat(%struct.TYPE_18__* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %321

69:                                               ; preds = %62
  %70 = load %struct.madera*, %struct.madera** %4, align 8
  %71 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %72 = load i32, i32* @cs47l35_adsp2_irq, align 4
  %73 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %74 = call i32 @madera_request_irq(%struct.madera* %70, i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %72, %struct.cs47l35* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @dev_err(%struct.TYPE_17__* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %317

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
  %92 = call i32 @dev_warn(%struct.TYPE_17__* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %88, %82
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %222, %93
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @CS47L35_NUM_ADSP, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %225

98:                                               ; preds = %94
  %99 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %100 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %106, align 8
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  %109 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %110 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  store i32 %108, i32* %116, align 8
  %117 = load i32, i32* @WMFW_ADSP2, align 4
  %118 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %119 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 8
  store i32 %117, i32* %125, align 4
  %126 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %127 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 2
  store i32 1, i32* %133, align 4
  %134 = load %struct.madera*, %struct.madera** %4, align 8
  %135 = getelementptr inbounds %struct.madera, %struct.madera* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %138 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 7
  store i32 %136, i32* %144, align 8
  %145 = load %struct.madera*, %struct.madera** %4, align 8
  %146 = getelementptr inbounds %struct.madera, %struct.madera* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %149 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 6
  store i32 %147, i32* %155, align 4
  %156 = load i32*, i32** @wm_adsp2_control_bases, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %162 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 5
  store i32 %160, i32* %168, align 8
  %169 = load i32*, i32** @cs47l35_dsp_regions, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %175 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 4
  store i32 %173, i32* %181, align 4
  %182 = load i32*, i32** @cs47l35_dsp1_regions, align 8
  %183 = call i32 @ARRAY_SIZE(i32* %182)
  %184 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %185 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 3
  store i32 %183, i32* %191, align 8
  %192 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %193 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %194, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i64 %197
  %199 = call i32 @wm_adsp2_init(%struct.TYPE_16__* %198)
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %221

202:                                              ; preds = %98
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %6, align 4
  br label %205

205:                                              ; preds = %217, %202
  %206 = load i32, i32* %6, align 4
  %207 = icmp sge i32 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %205
  %209 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %210 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i64 %214
  %216 = call i32 @wm_adsp2_remove(%struct.TYPE_16__* %215)
  br label %217

217:                                              ; preds = %208
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %6, align 4
  br label %205

220:                                              ; preds = %205
  br label %309

221:                                              ; preds = %98
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %6, align 4
  br label %94

225:                                              ; preds = %94
  %226 = load %struct.madera*, %struct.madera** %4, align 8
  %227 = load i64, i64* @MADERA_FLL1_CONTROL_1, align 8
  %228 = sub nsw i64 %227, 1
  %229 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %230 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %229, i32 0, i32 1
  %231 = call i32 @madera_init_fll(%struct.madera* %226, i32 1, i64 %228, i32* %230)
  store i32 0, i32* %6, align 4
  br label %232

232:                                              ; preds = %242, %225
  %233 = load i32, i32* %6, align 4
  %234 = load i32*, i32** @cs47l35_dai, align 8
  %235 = call i32 @ARRAY_SIZE(i32* %234)
  %236 = icmp slt i32 %233, %235
  br i1 %236, label %237, label %245

237:                                              ; preds = %232
  %238 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %239 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %238, i32 0, i32 0
  %240 = load i32, i32* %6, align 4
  %241 = call i32 @madera_init_dai(%struct.TYPE_18__* %239, i32 %240)
  br label %242

242:                                              ; preds = %237
  %243 = load i32, i32* %6, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %6, align 4
  br label %232

245:                                              ; preds = %232
  store i32 0, i32* %6, align 4
  br label %246

246:                                              ; preds = %263, %245
  %247 = load i32, i32* %6, align 4
  %248 = load i32*, i32** @cs47l35_digital_vu, align 8
  %249 = call i32 @ARRAY_SIZE(i32* %248)
  %250 = icmp slt i32 %247, %249
  br i1 %250, label %251, label %266

251:                                              ; preds = %246
  %252 = load %struct.madera*, %struct.madera** %4, align 8
  %253 = getelementptr inbounds %struct.madera, %struct.madera* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32*, i32** @cs47l35_digital_vu, align 8
  %256 = load i32, i32* %6, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @CS47L35_DIG_VU, align 4
  %261 = load i32, i32* @CS47L35_DIG_VU, align 4
  %262 = call i32 @regmap_update_bits(i32 %254, i32 %259, i32 %260, i32 %261)
  br label %263

263:                                              ; preds = %251
  %264 = load i32, i32* %6, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %6, align 4
  br label %246

266:                                              ; preds = %246
  %267 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %268 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %267, i32 0, i32 0
  %269 = call i32 @pm_runtime_enable(%struct.TYPE_17__* %268)
  %270 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %271 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %270, i32 0, i32 0
  %272 = call i32 @pm_runtime_idle(%struct.TYPE_17__* %271)
  %273 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %274 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %273, i32 0, i32 0
  %275 = load i32*, i32** @cs47l35_dai, align 8
  %276 = load i32*, i32** @cs47l35_dai, align 8
  %277 = call i32 @ARRAY_SIZE(i32* %276)
  %278 = call i32 @devm_snd_soc_register_component(%struct.TYPE_17__* %274, i32* @soc_component_dev_cs47l35, i32* %275, i32 %277)
  store i32 %278, i32* %7, align 4
  %279 = load i32, i32* %7, align 4
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %266
  %282 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %283 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %282, i32 0, i32 0
  %284 = load i32, i32* %7, align 4
  %285 = call i32 @dev_err(%struct.TYPE_17__* %283, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %284)
  br label %288

286:                                              ; preds = %266
  %287 = load i32, i32* %7, align 4
  store i32 %287, i32* %2, align 4
  br label %326

288:                                              ; preds = %281
  %289 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %290 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %289, i32 0, i32 0
  %291 = call i32 @pm_runtime_disable(%struct.TYPE_17__* %290)
  store i32 0, i32* %6, align 4
  br label %292

292:                                              ; preds = %305, %288
  %293 = load i32, i32* %6, align 4
  %294 = load i32, i32* @CS47L35_NUM_ADSP, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %308

296:                                              ; preds = %292
  %297 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %298 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %299, align 8
  %301 = load i32, i32* %6, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i64 %302
  %304 = call i32 @wm_adsp2_remove(%struct.TYPE_16__* %303)
  br label %305

305:                                              ; preds = %296
  %306 = load i32, i32* %6, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %6, align 4
  br label %292

308:                                              ; preds = %292
  br label %309

309:                                              ; preds = %308, %220
  %310 = load %struct.madera*, %struct.madera** %4, align 8
  %311 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %312 = call i32 @madera_set_irq_wake(%struct.madera* %310, i32 %311, i32 0)
  %313 = load %struct.madera*, %struct.madera** %4, align 8
  %314 = load i32, i32* @MADERA_IRQ_DSP_IRQ1, align 4
  %315 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %316 = call i32 @madera_free_irq(%struct.madera* %313, i32 %314, %struct.cs47l35* %315)
  br label %317

317:                                              ; preds = %309, %77
  %318 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %319 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %318, i32 0, i32 0
  %320 = call i32 @madera_free_overheat(%struct.TYPE_18__* %319)
  br label %321

321:                                              ; preds = %317, %68
  %322 = load %struct.cs47l35*, %struct.cs47l35** %5, align 8
  %323 = getelementptr inbounds %struct.cs47l35, %struct.cs47l35* %322, i32 0, i32 0
  %324 = call i32 @madera_core_free(%struct.TYPE_18__* %323)
  %325 = load i32, i32* %7, align 4
  store i32 %325, i32* %2, align 4
  br label %326

326:                                              ; preds = %321, %286, %60, %36, %23
  %327 = load i32, i32* %2, align 4
  ret i32 %327
}

declare dso_local %struct.madera* @dev_get_drvdata(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_17__*, i8*) #1

declare dso_local %struct.cs47l35* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cs47l35*) #1

declare dso_local i32 @madera_core_init(%struct.TYPE_18__*) #1

declare dso_local i32 @madera_init_overheat(%struct.TYPE_18__*) #1

declare dso_local i32 @madera_request_irq(%struct.madera*, i32, i8*, i32, %struct.cs47l35*) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @madera_set_irq_wake(%struct.madera*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @wm_adsp2_init(%struct.TYPE_16__*) #1

declare dso_local i32 @wm_adsp2_remove(%struct.TYPE_16__*) #1

declare dso_local i32 @madera_init_fll(%struct.madera*, i32, i64, i32*) #1

declare dso_local i32 @madera_init_dai(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_17__*) #1

declare dso_local i32 @pm_runtime_idle(%struct.TYPE_17__*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_17__*) #1

declare dso_local i32 @madera_free_irq(%struct.madera*, i32, %struct.cs47l35*) #1

declare dso_local i32 @madera_free_overheat(%struct.TYPE_18__*) #1

declare dso_local i32 @madera_core_free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
