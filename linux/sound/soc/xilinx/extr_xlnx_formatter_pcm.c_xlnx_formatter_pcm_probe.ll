; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_formatter_pcm.c_xlnx_formatter_pcm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_formatter_pcm.c_xlnx_formatter_pcm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.xlnx_pcm_drv_data = type { i32, i32, i32, i32, i64, i64 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"s_axi_lite_aclk\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to get s_axi_lite_aclk(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to enable s_axi_lite_aclk(%d)\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"audio formatter node:addr to resource failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"audio formatter ioremap failed\0A\00", align 1
@XLNX_AUD_CORE_CONFIG = common dso_local global i64 0, align 8
@AUD_CFG_MM2S_MASK = common dso_local global i32 0, align 4
@XLNX_MM2S_OFFSET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"audio formatter reset failed\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"irq_mm2s\00", align 1
@xlnx_mm2s_irq_handler = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"xlnx_formatter_pcm_mm2s_irq\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"xlnx audio mm2s irq request failed\0A\00", align 1
@AUD_CFG_S2MM_MASK = common dso_local global i32 0, align 4
@XLNX_S2MM_OFFSET = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"irq_s2mm\00", align 1
@xlnx_s2mm_irq_handler = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"xlnx_formatter_pcm_s2mm_irq\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"xlnx audio s2mm irq request failed\0A\00", align 1
@xlnx_asoc_component = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"pcm platform device register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xlnx_formatter_pcm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlnx_formatter_pcm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xlnx_pcm_drv_data*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %8, align 8
  %11 = load %struct.device*, %struct.device** %8, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.xlnx_pcm_drv_data* @devm_kzalloc(%struct.device* %11, i32 32, i32 %12)
  store %struct.xlnx_pcm_drv_data* %13, %struct.xlnx_pcm_drv_data** %6, align 8
  %14 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %15 = icmp ne %struct.xlnx_pcm_drv_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %211

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = call i64 @devm_clk_get(%struct.device* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %23 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %22, i32 0, i32 4
  store i64 %21, i64* %23, align 8
  %24 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %25 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @IS_ERR(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %31 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @PTR_ERR(i64 %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.device*, %struct.device** %8, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %211

38:                                               ; preds = %19
  %39 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %40 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @clk_prepare_enable(i64 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.device*, %struct.device** %8, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %211

50:                                               ; preds = %38
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load i32, i32* @IORESOURCE_MEM, align 4
  %53 = call %struct.resource* @platform_get_resource(%struct.platform_device* %51, i32 %52, i32 0)
  store %struct.resource* %53, %struct.resource** %7, align 8
  %54 = load %struct.resource*, %struct.resource** %7, align 8
  %55 = icmp ne %struct.resource* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load %struct.device*, %struct.device** %8, align 8
  %58 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %205

61:                                               ; preds = %50
  %62 = load %struct.device*, %struct.device** %8, align 8
  %63 = load %struct.resource*, %struct.resource** %7, align 8
  %64 = call i64 @devm_ioremap_resource(%struct.device* %62, %struct.resource* %63)
  %65 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %66 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %65, i32 0, i32 5
  store i64 %64, i64* %66, align 8
  %67 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %68 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @IS_ERR(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %61
  %73 = load %struct.device*, %struct.device** %8, align 8
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %75 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %76 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @PTR_ERR(i64 %77)
  store i32 %78, i32* %4, align 4
  br label %205

79:                                               ; preds = %61
  %80 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %81 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @XLNX_AUD_CORE_CONFIG, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @readl(i64 %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @AUD_CFG_MM2S_MASK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %139

90:                                               ; preds = %79
  %91 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %92 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %94 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @XLNX_MM2S_OFFSET, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @xlnx_formatter_pcm_reset(i64 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = load %struct.device*, %struct.device** %8, align 8
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %205

104:                                              ; preds = %90
  %105 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %106 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @XLNX_MM2S_OFFSET, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %111 = call i32 @xlnx_formatter_disable_irqs(i64 %109, i32 %110)
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = call i8* @platform_get_irq_byname(%struct.platform_device* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %116 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %118 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %104
  %122 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %123 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %4, align 4
  br label %205

125:                                              ; preds = %104
  %126 = load %struct.device*, %struct.device** %8, align 8
  %127 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %128 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @xlnx_mm2s_irq_handler, align 4
  %131 = load %struct.device*, %struct.device** %8, align 8
  %132 = call i32 @devm_request_irq(%struct.device* %126, i32 %129, i32 %130, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), %struct.device* %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %125
  %136 = load %struct.device*, %struct.device** %8, align 8
  %137 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %136, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %205

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %138, %79
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @AUD_CFG_S2MM_MASK, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %193

144:                                              ; preds = %139
  %145 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %146 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %145, i32 0, i32 2
  store i32 1, i32* %146, align 8
  %147 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %148 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @XLNX_S2MM_OFFSET, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @xlnx_formatter_pcm_reset(i64 %151)
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %144
  %156 = load %struct.device*, %struct.device** %8, align 8
  %157 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %156, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %205

158:                                              ; preds = %144
  %159 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %160 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @XLNX_S2MM_OFFSET, align 8
  %163 = add nsw i64 %161, %162
  %164 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %165 = call i32 @xlnx_formatter_disable_irqs(i64 %163, i32 %164)
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = call i8* @platform_get_irq_byname(%struct.platform_device* %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %170 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  %171 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %172 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %158
  %176 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %177 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %4, align 4
  br label %205

179:                                              ; preds = %158
  %180 = load %struct.device*, %struct.device** %8, align 8
  %181 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %182 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @xlnx_s2mm_irq_handler, align 4
  %185 = load %struct.device*, %struct.device** %8, align 8
  %186 = call i32 @devm_request_irq(%struct.device* %180, i32 %183, i32 %184, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), %struct.device* %185)
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* %4, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %179
  %190 = load %struct.device*, %struct.device** %8, align 8
  %191 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %190, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  br label %205

192:                                              ; preds = %179
  br label %193

193:                                              ; preds = %192, %139
  %194 = load %struct.device*, %struct.device** %8, align 8
  %195 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %196 = call i32 @dev_set_drvdata(%struct.device* %194, %struct.xlnx_pcm_drv_data* %195)
  %197 = load %struct.device*, %struct.device** %8, align 8
  %198 = call i32 @devm_snd_soc_register_component(%struct.device* %197, i32* @xlnx_asoc_component, i32* null, i32 0)
  store i32 %198, i32* %4, align 4
  %199 = load i32, i32* %4, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %193
  %202 = load %struct.device*, %struct.device** %8, align 8
  %203 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %202, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %205

204:                                              ; preds = %193
  store i32 0, i32* %2, align 4
  br label %211

205:                                              ; preds = %201, %189, %175, %155, %135, %121, %101, %72, %56
  %206 = load %struct.xlnx_pcm_drv_data*, %struct.xlnx_pcm_drv_data** %6, align 8
  %207 = getelementptr inbounds %struct.xlnx_pcm_drv_data, %struct.xlnx_pcm_drv_data* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @clk_disable_unprepare(i64 %208)
  %210 = load i32, i32* %4, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %205, %204, %45, %29, %16
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local %struct.xlnx_pcm_drv_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @xlnx_formatter_pcm_reset(i64) #1

declare dso_local i32 @xlnx_formatter_disable_irqs(i64, i32) #1

declare dso_local i8* @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.xlnx_pcm_drv_data*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
