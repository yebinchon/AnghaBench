; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_ssi = type { i32, i64, i32, i64, i64, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__, i64, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__*, i64 }
%struct.TYPE_12__ = type { i32, i32*, i64 }
%struct.TYPE_11__ = type { i32, i32*, i64 }
%struct.snd_soc_dai_driver = type { i32 }
%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.imx_ssi_platform_data* }
%struct.imx_ssi_platform_data = type { i32, i32, i32 }
%struct.resource = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot get the clock: %d\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IMX_SSI_USE_AC97 = common dso_local global i32 0, align 4
@ac97_ssi = common dso_local global %struct.imx_ssi* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"AC'97 SSI already registered\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@imx_ac97_dai = common dso_local global %struct.snd_soc_dai_driver zeroinitializer, align 4
@imx_ssi_dai = common dso_local global %struct.snd_soc_dai_driver zeroinitializer, align 4
@SSI_SIER = common dso_local global i64 0, align 8
@SSI_SRX0 = common dso_local global i64 0, align 8
@SSI_STX0 = common dso_local global i64 0, align 8
@IORESOURCE_DMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"tx0\00", align 1
@IMX_DMATYPE_SSI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"rx0\00", align 1
@imx_ssi_ac97_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to set AC'97 ops: %d\0A\00", align 1
@imx_component = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"register DAI failed\0A\00", align 1
@IMX_SSI_DMABUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_ssi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ssi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.imx_ssi*, align 8
  %6 = alloca %struct.imx_ssi_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_dai_driver*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load %struct.imx_ssi_platform_data*, %struct.imx_ssi_platform_data** %11, align 8
  store %struct.imx_ssi_platform_data* %12, %struct.imx_ssi_platform_data** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.imx_ssi* @devm_kzalloc(%struct.TYPE_13__* %14, i32 144, i32 %15)
  store %struct.imx_ssi* %16, %struct.imx_ssi** %5, align 8
  %17 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %18 = icmp ne %struct.imx_ssi* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %278

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %26 = call i32 @dev_set_drvdata(%struct.TYPE_13__* %24, %struct.imx_ssi* %25)
  %27 = load %struct.imx_ssi_platform_data*, %struct.imx_ssi_platform_data** %6, align 8
  %28 = icmp ne %struct.imx_ssi_platform_data* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = load %struct.imx_ssi_platform_data*, %struct.imx_ssi_platform_data** %6, align 8
  %31 = getelementptr inbounds %struct.imx_ssi_platform_data, %struct.imx_ssi_platform_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %34 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %33, i32 0, i32 12
  store i32 %32, i32* %34, align 4
  %35 = load %struct.imx_ssi_platform_data*, %struct.imx_ssi_platform_data** %6, align 8
  %36 = getelementptr inbounds %struct.imx_ssi_platform_data, %struct.imx_ssi_platform_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %39 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %38, i32 0, i32 11
  store i32 %37, i32* %39, align 8
  %40 = load %struct.imx_ssi_platform_data*, %struct.imx_ssi_platform_data** %6, align 8
  %41 = getelementptr inbounds %struct.imx_ssi_platform_data, %struct.imx_ssi_platform_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %44 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %29, %22
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = call i64 @platform_get_irq(%struct.platform_device* %46, i32 0)
  %48 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %49 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %51 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %56 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %2, align 4
  br label %278

59:                                               ; preds = %45
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i64 @devm_clk_get(%struct.TYPE_13__* %61, i32* null)
  %63 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %64 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  %65 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %66 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @IS_ERR(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %59
  %71 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %72 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @PTR_ERR(i64 %73)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %275

79:                                               ; preds = %59
  %80 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %81 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @clk_prepare_enable(i64 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %275

87:                                               ; preds = %79
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = load i32, i32* @IORESOURCE_MEM, align 4
  %90 = call %struct.resource* @platform_get_resource(%struct.platform_device* %88, i32 %89, i32 0)
  store %struct.resource* %90, %struct.resource** %4, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.resource*, %struct.resource** %4, align 8
  %94 = call i64 @devm_ioremap_resource(%struct.TYPE_13__* %92, %struct.resource* %93)
  %95 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %96 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %95, i32 0, i32 8
  store i64 %94, i64* %96, align 8
  %97 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %98 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %97, i32 0, i32 8
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @IS_ERR(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %87
  %103 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %104 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @PTR_ERR(i64 %105)
  store i32 %106, i32* %7, align 4
  br label %270

107:                                              ; preds = %87
  %108 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %109 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @IMX_SSI_USE_AC97, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %107
  %115 = load %struct.imx_ssi*, %struct.imx_ssi** @ac97_ssi, align 8
  %116 = icmp ne %struct.imx_ssi* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* @EBUSY, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %7, align 4
  br label %270

123:                                              ; preds = %114
  %124 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  store %struct.imx_ssi* %124, %struct.imx_ssi** @ac97_ssi, align 8
  %125 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %126 = call i32 @setup_channel_to_ac97(%struct.imx_ssi* %125)
  store %struct.snd_soc_dai_driver* @imx_ac97_dai, %struct.snd_soc_dai_driver** %8, align 8
  br label %128

127:                                              ; preds = %107
  store %struct.snd_soc_dai_driver* @imx_ssi_dai, %struct.snd_soc_dai_driver** %8, align 8
  br label %128

128:                                              ; preds = %127, %123
  %129 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %130 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %129, i32 0, i32 8
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SSI_SIER, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @writel(i32 0, i64 %133)
  %135 = load %struct.resource*, %struct.resource** %4, align 8
  %136 = getelementptr inbounds %struct.resource, %struct.resource* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SSI_SRX0, align 8
  %139 = add nsw i64 %137, %138
  %140 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %141 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %140, i32 0, i32 7
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 2
  store i64 %139, i64* %142, align 8
  %143 = load %struct.resource*, %struct.resource** %4, align 8
  %144 = getelementptr inbounds %struct.resource, %struct.resource* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @SSI_STX0, align 8
  %147 = add nsw i64 %145, %146
  %148 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %149 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %148, i32 0, i32 6
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  store i64 %147, i64* %150, align 8
  %151 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %152 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %151, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  store i32 6, i32* %153, align 8
  %154 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %155 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %154, i32 0, i32 7
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  store i32 4, i32* %156, align 8
  %157 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %158 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %157, i32 0, i32 10
  %159 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %160 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  store i32* %158, i32** %161, align 8
  %162 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %163 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %162, i32 0, i32 9
  %164 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %165 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %164, i32 0, i32 7
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  store i32* %163, i32** %166, align 8
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = load i32, i32* @IORESOURCE_DMA, align 4
  %169 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %167, i32 %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %169, %struct.resource** %4, align 8
  %170 = load %struct.resource*, %struct.resource** %4, align 8
  %171 = icmp ne %struct.resource* %170, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %128
  %173 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %174 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %173, i32 0, i32 10
  %175 = load %struct.resource*, %struct.resource** %4, align 8
  %176 = getelementptr inbounds %struct.resource, %struct.resource* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* @IMX_DMATYPE_SSI, align 4
  %179 = call i32 @imx_pcm_dma_params_init_data(i32* %174, i64 %177, i32 %178)
  br label %180

180:                                              ; preds = %172, %128
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = load i32, i32* @IORESOURCE_DMA, align 4
  %183 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %181, i32 %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store %struct.resource* %183, %struct.resource** %4, align 8
  %184 = load %struct.resource*, %struct.resource** %4, align 8
  %185 = icmp ne %struct.resource* %184, null
  br i1 %185, label %186, label %194

186:                                              ; preds = %180
  %187 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %188 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %187, i32 0, i32 9
  %189 = load %struct.resource*, %struct.resource** %4, align 8
  %190 = getelementptr inbounds %struct.resource, %struct.resource* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* @IMX_DMATYPE_SSI, align 4
  %193 = call i32 @imx_pcm_dma_params_init_data(i32* %188, i64 %191, i32 %192)
  br label %194

194:                                              ; preds = %186, %180
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %197 = call i32 @platform_set_drvdata(%struct.platform_device* %195, %struct.imx_ssi* %196)
  %198 = call i32 @snd_soc_set_ac97_ops(i32* @imx_ssi_ac97_ops)
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %194
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  %204 = load i32, i32* %7, align 4
  %205 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %203, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %204)
  br label %270

206:                                              ; preds = %194
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %207, i32 0, i32 0
  %209 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %210 = call i32 @snd_soc_register_component(%struct.TYPE_13__* %208, i32* @imx_component, %struct.snd_soc_dai_driver* %209, i32 1)
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %206
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %215, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %270

217:                                              ; preds = %206
  %218 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %219 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = trunc i64 %220 to i32
  %222 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %223 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %222, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 8
  %225 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %226 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %225, i32 0, i32 8
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %229 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %228, i32 0, i32 5
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 3
  store i64 %227, i64* %230, align 8
  %231 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %232 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %231, i32 0, i32 7
  %233 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %234 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 2
  store %struct.TYPE_11__* %232, %struct.TYPE_11__** %235, align 8
  %236 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %237 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %236, i32 0, i32 6
  %238 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %239 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 1
  store %struct.TYPE_12__* %237, %struct.TYPE_12__** %240, align 8
  %241 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %242 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %243 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %242, i32 0, i32 5
  %244 = call i32 @imx_pcm_fiq_init(%struct.platform_device* %241, %struct.TYPE_14__* %243)
  %245 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %246 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %245, i32 0, i32 2
  store i32 %244, i32* %246, align 8
  %247 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %248 = load i32, i32* @IMX_SSI_DMABUF_SIZE, align 4
  %249 = call i64 @imx_pcm_dma_init(%struct.platform_device* %247, i32 %248)
  %250 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %251 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %250, i32 0, i32 4
  store i64 %249, i64* %251, align 8
  %252 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %253 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %217
  %257 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %258 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %263 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  store i32 %264, i32* %7, align 4
  br label %266

265:                                              ; preds = %256, %217
  store i32 0, i32* %2, align 4
  br label %278

266:                                              ; preds = %261
  %267 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %268 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %267, i32 0, i32 0
  %269 = call i32 @snd_soc_unregister_component(%struct.TYPE_13__* %268)
  br label %270

270:                                              ; preds = %266, %213, %201, %117, %102
  %271 = load %struct.imx_ssi*, %struct.imx_ssi** %5, align 8
  %272 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %271, i32 0, i32 3
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @clk_disable_unprepare(i64 %273)
  br label %275

275:                                              ; preds = %270, %86, %70
  %276 = call i32 @snd_soc_set_ac97_ops(i32* null)
  %277 = load i32, i32* %7, align 4
  store i32 %277, i32* %2, align 4
  br label %278

278:                                              ; preds = %275, %265, %54, %19
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local %struct.imx_ssi* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_13__*, %struct.imx_ssi*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @devm_clk_get(%struct.TYPE_13__*, i32*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_13__*, %struct.resource*) #1

declare dso_local i32 @setup_channel_to_ac97(%struct.imx_ssi*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @imx_pcm_dma_params_init_data(i32*, i64, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.imx_ssi*) #1

declare dso_local i32 @snd_soc_set_ac97_ops(i32*) #1

declare dso_local i32 @snd_soc_register_component(%struct.TYPE_13__*, i32*, %struct.snd_soc_dai_driver*, i32) #1

declare dso_local i32 @imx_pcm_fiq_init(%struct.platform_device*, %struct.TYPE_14__*) #1

declare dso_local i64 @imx_pcm_dma_init(%struct.platform_device*, i32) #1

declare dso_local i32 @snd_soc_unregister_component(%struct.TYPE_13__*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
