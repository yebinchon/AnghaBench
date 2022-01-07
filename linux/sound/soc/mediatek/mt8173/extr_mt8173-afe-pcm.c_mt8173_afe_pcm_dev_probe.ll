; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_pcm_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_pcm_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mtk_base_afe = type { i32, i32, i32 (i32*)*, i32, i32, i32*, i32, i32, i32*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32*, i32, i32, %struct.mt8173_afe_private* }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.mt8173_afe_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@mt8173_afe_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Afe_ISR_Handle\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"could not request_irq\0A\00", align 1
@mt8173_afe_regmap_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"mt8173_afe_init_audio_clk fail\0A\00", align 1
@MT8173_AFE_MEMIF_NUM = common dso_local global i32 0, align 4
@MT8173_AFE_IRQ_NUM = common dso_local global i32 0, align 4
@memif_data = common dso_local global i32* null, align 8
@irq_data = common dso_local global i32* null, align 8
@mt8173_afe_hardware = common dso_local global i32 0, align 4
@mt8173_memif_fs = common dso_local global i32 0, align 4
@mt8173_irq_fs = common dso_local global i32 0, align 4
@mt8173_afe_backup_list = common dso_local global i32* null, align 8
@mt8173_afe_runtime_suspend = common dso_local global i32 0, align 4
@mtk_afe_pcm_platform = common dso_local global i32 0, align 4
@mt8173_afe_pcm_dai_component = common dso_local global i32 0, align 4
@mt8173_afe_pcm_dais = common dso_local global i32* null, align 8
@mt8173_afe_hdmi_dai_component = common dso_local global i32 0, align 4
@mt8173_afe_hdmi_dais = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"MT8173 AFE driver initialized.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mt8173_afe_pcm_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8173_afe_pcm_dev_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtk_base_afe*, align 8
  %8 = alloca %struct.mt8173_afe_private*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 @DMA_BIT_MASK(i32 33)
  %12 = call i32 @dma_set_mask_and_coherent(i32* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %299

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @devm_kzalloc(i32* %19, i32 88, i32 %20)
  %22 = bitcast i8* %21 to %struct.mtk_base_afe*
  store %struct.mtk_base_afe* %22, %struct.mtk_base_afe** %7, align 8
  %23 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %24 = icmp ne %struct.mtk_base_afe* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %299

28:                                               ; preds = %17
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @devm_kzalloc(i32* %30, i32 4, i32 %31)
  %33 = bitcast i8* %32 to %struct.mt8173_afe_private*
  %34 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %35 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %34, i32 0, i32 14
  store %struct.mt8173_afe_private* %33, %struct.mt8173_afe_private** %35, align 8
  %36 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %37 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %36, i32 0, i32 14
  %38 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %37, align 8
  store %struct.mt8173_afe_private* %38, %struct.mt8173_afe_private** %8, align 8
  %39 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %8, align 8
  %40 = icmp ne %struct.mt8173_afe_private* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %299

44:                                               ; preds = %28
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %48 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %47, i32 0, i32 11
  store i32* %46, i32** %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = call i32 @platform_get_irq(%struct.platform_device* %49, i32 0)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  br label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  br label %61

61:                                               ; preds = %58, %56
  %62 = phi i32 [ %57, %56 ], [ %60, %58 ]
  store i32 %62, i32* %2, align 4
  br label %299

63:                                               ; preds = %44
  %64 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %65 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %64, i32 0, i32 11
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @mt8173_afe_irq_handler, align 4
  %69 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %70 = bitcast %struct.mtk_base_afe* %69 to i8*
  %71 = call i32 @devm_request_irq(i32* %66, i32 %67, i32 %68, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %63
  %75 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %76 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %75, i32 0, i32 11
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %299

80:                                               ; preds = %63
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %81, i32 0)
  %83 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %84 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %83, i32 0, i32 13
  store i32 %82, i32* %84, align 4
  %85 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %86 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %85, i32 0, i32 13
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @IS_ERR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %92 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %91, i32 0, i32 13
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @PTR_ERR(i32 %93)
  store i32 %94, i32* %2, align 4
  br label %299

95:                                               ; preds = %80
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %99 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %98, i32 0, i32 13
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @devm_regmap_init_mmio(i32* %97, i32 %100, i32* @mt8173_afe_regmap_config)
  %102 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %103 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %102, i32 0, i32 12
  store i32 %101, i32* %103, align 8
  %104 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %105 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %104, i32 0, i32 12
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @IS_ERR(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %95
  %110 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %111 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %110, i32 0, i32 12
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @PTR_ERR(i32 %112)
  store i32 %113, i32* %2, align 4
  br label %299

114:                                              ; preds = %95
  %115 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %116 = call i32 @mt8173_afe_init_audio_clk(%struct.mtk_base_afe* %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %121 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %120, i32 0, i32 11
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @dev_err(i32* %122, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %2, align 4
  br label %299

125:                                              ; preds = %114
  %126 = load i32, i32* @MT8173_AFE_MEMIF_NUM, align 4
  %127 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %128 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %130 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %129, i32 0, i32 11
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %133 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call i8* @devm_kcalloc(i32* %131, i32 %134, i32 16, i32 %135)
  %137 = bitcast i8* %136 to %struct.TYPE_4__*
  %138 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %139 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %138, i32 0, i32 9
  store %struct.TYPE_4__* %137, %struct.TYPE_4__** %139, align 8
  %140 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %141 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %140, i32 0, i32 9
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = icmp ne %struct.TYPE_4__* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %125
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %299

147:                                              ; preds = %125
  %148 = load i32, i32* @MT8173_AFE_IRQ_NUM, align 4
  %149 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %150 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %152 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %151, i32 0, i32 11
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %155 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call i8* @devm_kcalloc(i32* %153, i32 %156, i32 16, i32 %157)
  %159 = bitcast i8* %158 to %struct.TYPE_3__*
  %160 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %161 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %160, i32 0, i32 10
  store %struct.TYPE_3__* %159, %struct.TYPE_3__** %161, align 8
  %162 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %163 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %162, i32 0, i32 10
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = icmp ne %struct.TYPE_3__* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %147
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %299

169:                                              ; preds = %147
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %221, %169
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %173 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %224

176:                                              ; preds = %170
  %177 = load i32*, i32** @memif_data, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %182 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %181, i32 0, i32 9
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  store i32* %180, i32** %187, align 8
  %188 = load i32*, i32** @irq_data, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %193 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %192, i32 0, i32 10
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %193, align 8
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  store i32* %191, i32** %198, align 8
  %199 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %200 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %199, i32 0, i32 10
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  store i32 1, i32* %205, align 8
  %206 = load i32, i32* %5, align 4
  %207 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %208 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %207, i32 0, i32 9
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  store i32 %206, i32* %213, align 8
  %214 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %215 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %214, i32 0, i32 9
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = load i32, i32* %5, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  store i32 1, i32* %220, align 4
  br label %221

221:                                              ; preds = %176
  %222 = load i32, i32* %5, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %5, align 4
  br label %170

224:                                              ; preds = %170
  %225 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %226 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %225, i32 0, i32 8
  store i32* @mt8173_afe_hardware, i32** %226, align 8
  %227 = load i32, i32* @mt8173_memif_fs, align 4
  %228 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %229 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %228, i32 0, i32 7
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* @mt8173_irq_fs, align 4
  %231 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %232 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %231, i32 0, i32 6
  store i32 %230, i32* %232, align 8
  %233 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %234 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %235 = call i32 @platform_set_drvdata(%struct.platform_device* %233, %struct.mtk_base_afe* %234)
  %236 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %237 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %236, i32 0, i32 0
  %238 = call i32 @pm_runtime_enable(i32* %237)
  %239 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %240 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %239, i32 0, i32 0
  %241 = call i32 @pm_runtime_enabled(i32* %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %251, label %243

243:                                              ; preds = %224
  %244 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %245 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %244, i32 0, i32 0
  %246 = call i32 @mt8173_afe_runtime_resume(i32* %245)
  store i32 %246, i32* %4, align 4
  %247 = load i32, i32* %4, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %243
  br label %294

250:                                              ; preds = %243
  br label %251

251:                                              ; preds = %250, %224
  %252 = load i32*, i32** @mt8173_afe_backup_list, align 8
  %253 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %254 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %253, i32 0, i32 5
  store i32* %252, i32** %254, align 8
  %255 = load i32*, i32** @mt8173_afe_backup_list, align 8
  %256 = call i32 @ARRAY_SIZE(i32* %255)
  %257 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %258 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %257, i32 0, i32 4
  store i32 %256, i32* %258, align 4
  %259 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %260 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %259, i32 0, i32 2
  store i32 (i32*)* @mt8173_afe_runtime_resume, i32 (i32*)** %260, align 8
  %261 = load i32, i32* @mt8173_afe_runtime_suspend, align 4
  %262 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %7, align 8
  %263 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %262, i32 0, i32 3
  store i32 %261, i32* %263, align 8
  %264 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %265 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %264, i32 0, i32 0
  %266 = call i32 @devm_snd_soc_register_component(i32* %265, i32* @mtk_afe_pcm_platform, i32* null, i32 0)
  store i32 %266, i32* %4, align 4
  %267 = load i32, i32* %4, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %251
  br label %294

270:                                              ; preds = %251
  %271 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %272 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %271, i32 0, i32 0
  %273 = load i32*, i32** @mt8173_afe_pcm_dais, align 8
  %274 = load i32*, i32** @mt8173_afe_pcm_dais, align 8
  %275 = call i32 @ARRAY_SIZE(i32* %274)
  %276 = call i32 @devm_snd_soc_register_component(i32* %272, i32* @mt8173_afe_pcm_dai_component, i32* %273, i32 %275)
  store i32 %276, i32* %4, align 4
  %277 = load i32, i32* %4, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %270
  br label %294

280:                                              ; preds = %270
  %281 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %282 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %281, i32 0, i32 0
  %283 = load i32*, i32** @mt8173_afe_hdmi_dais, align 8
  %284 = load i32*, i32** @mt8173_afe_hdmi_dais, align 8
  %285 = call i32 @ARRAY_SIZE(i32* %284)
  %286 = call i32 @devm_snd_soc_register_component(i32* %282, i32* @mt8173_afe_hdmi_dai_component, i32* %283, i32 %285)
  store i32 %286, i32* %4, align 4
  %287 = load i32, i32* %4, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %280
  br label %294

290:                                              ; preds = %280
  %291 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %292 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %291, i32 0, i32 0
  %293 = call i32 @dev_info(i32* %292, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %299

294:                                              ; preds = %289, %279, %269, %249
  %295 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %296 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %295, i32 0, i32 0
  %297 = call i32 @pm_runtime_disable(i32* %296)
  %298 = load i32, i32* %4, align 4
  store i32 %298, i32* %2, align 4
  br label %299

299:                                              ; preds = %294, %290, %166, %144, %119, %109, %90, %74, %61, %41, %25, %15
  %300 = load i32, i32* %2, align 4
  ret i32 %300
}

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regmap_init_mmio(i32*, i32, i32*) #1

declare dso_local i32 @mt8173_afe_init_audio_clk(%struct.mtk_base_afe*) #1

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_base_afe*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_enabled(i32*) #1

declare dso_local i32 @mt8173_afe_runtime_resume(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
