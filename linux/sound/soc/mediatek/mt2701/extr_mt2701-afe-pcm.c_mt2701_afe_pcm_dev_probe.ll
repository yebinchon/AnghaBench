; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_afe_pcm_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_afe_pcm_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mtk_base_afe = type { i32, i32, i32 (%struct.device*)*, i32, i32, i32*, i32, i32, i32*, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32, %struct.device*, %struct.mt2701_afe_private* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.mt2701_afe_private = type { %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32** }
%struct.TYPE_10__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"asys\00", align 1
@mt2701_asys_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"asys-isr\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"could not request_irq for asys-isr\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"could not get regmap from parent\0A\00", align 1
@MT2701_MEMIF_NUM = common dso_local global i32 0, align 4
@memif_data = common dso_local global i32* null, align 8
@MT2701_IRQ_ASYS_END = common dso_local global i32 0, align 4
@irq_data = common dso_local global i32* null, align 8
@mt2701_i2s_data = common dso_local global i32** null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@mt2701_afe_hardware = common dso_local global i32 0, align 4
@mt2701_memif_fs = common dso_local global i32 0, align 4
@mt2701_irq_fs = common dso_local global i32 0, align 4
@mt2701_afe_backup_list = common dso_local global i32* null, align 8
@mt2701_afe_runtime_suspend = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"init clock error\0A\00", align 1
@mtk_afe_pcm_platform = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"err_platform\0A\00", align 1
@mt2701_afe_pcm_dai_component = common dso_local global i32 0, align 4
@mt2701_afe_pcm_dais = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"err_dai_component\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mt2701_afe_pcm_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2701_afe_pcm_dev_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mtk_base_afe*, align 8
  %5 = alloca %struct.mt2701_afe_private*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @devm_kzalloc(%struct.device* %11, i32 88, i32 %12)
  %14 = bitcast i8* %13 to %struct.mtk_base_afe*
  store %struct.mtk_base_afe* %14, %struct.mtk_base_afe** %4, align 8
  %15 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %16 = icmp ne %struct.mtk_base_afe* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %328

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @devm_kzalloc(%struct.device* %22, i32 16, i32 %23)
  %25 = bitcast i8* %24 to %struct.mt2701_afe_private*
  %26 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %27 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %26, i32 0, i32 14
  store %struct.mt2701_afe_private* %25, %struct.mt2701_afe_private** %27, align 8
  %28 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %29 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %28, i32 0, i32 14
  %30 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %29, align 8
  %31 = icmp ne %struct.mt2701_afe_private* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %328

35:                                               ; preds = %20
  %36 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %37 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %36, i32 0, i32 14
  %38 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %37, align 8
  store %struct.mt2701_afe_private* %38, %struct.mt2701_afe_private** %5, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call %struct.TYPE_10__* @of_device_get_match_data(%struct.device* %40)
  %42 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %5, align 8
  %43 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %42, i32 0, i32 1
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %43, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %47 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %46, i32 0, i32 13
  store %struct.device* %45, %struct.device** %47, align 8
  %48 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %49 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %48, i32 0, i32 13
  %50 = load %struct.device*, %struct.device** %49, align 8
  store %struct.device* %50, %struct.device** %6, align 8
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %5, align 8
  %53 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @devm_kcalloc(%struct.device* %51, i32 %56, i32 4, i32 %57)
  %59 = bitcast i8* %58 to %struct.TYPE_9__*
  %60 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %5, align 8
  %61 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %60, i32 0, i32 0
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %61, align 8
  %62 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %5, align 8
  %63 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = icmp ne %struct.TYPE_9__* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %35
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %328

69:                                               ; preds = %35
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = call i32 @platform_get_irq_byname(%struct.platform_device* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %328

76:                                               ; preds = %69
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @mt2701_asys_isr, align 4
  %80 = load i32, i32* @IRQF_TRIGGER_NONE, align 4
  %81 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %82 = bitcast %struct.mtk_base_afe* %81 to i8*
  %83 = call i32 @devm_request_irq(%struct.device* %77, i32 %78, i32 %79, i32 %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = load %struct.device*, %struct.device** %6, align 8
  %88 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %2, align 4
  br label %328

90:                                               ; preds = %76
  %91 = load %struct.device*, %struct.device** %6, align 8
  %92 = getelementptr inbounds %struct.device, %struct.device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @syscon_node_to_regmap(i32 %95)
  %97 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %98 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %97, i32 0, i32 12
  store i32 %96, i32* %98, align 4
  %99 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %100 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %99, i32 0, i32 12
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @IS_ERR(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %90
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %107 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %108 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %107, i32 0, i32 12
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @PTR_ERR(i32 %109)
  store i32 %110, i32* %2, align 4
  br label %328

111:                                              ; preds = %90
  %112 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %113 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %112, i32 0, i32 11
  %114 = call i32 @mutex_init(i32* %113)
  %115 = load i32, i32* @MT2701_MEMIF_NUM, align 4
  %116 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %117 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %120 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i8* @devm_kcalloc(%struct.device* %118, i32 %121, i32 16, i32 %122)
  %124 = bitcast i8* %123 to %struct.TYPE_7__*
  %125 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %126 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %125, i32 0, i32 10
  store %struct.TYPE_7__* %124, %struct.TYPE_7__** %126, align 8
  %127 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %128 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %127, i32 0, i32 10
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = icmp ne %struct.TYPE_7__* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %111
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %328

134:                                              ; preds = %111
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %160, %134
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %138 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %163

141:                                              ; preds = %135
  %142 = load i32*, i32** @memif_data, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %147 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %146, i32 0, i32 10
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  store i32* %145, i32** %152, align 8
  %153 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %154 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %153, i32 0, i32 10
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  store i32 -1, i32* %159, align 8
  br label %160

160:                                              ; preds = %141
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  br label %135

163:                                              ; preds = %135
  %164 = load i32, i32* @MT2701_IRQ_ASYS_END, align 4
  %165 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %166 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.device*, %struct.device** %6, align 8
  %168 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %169 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @GFP_KERNEL, align 4
  %172 = call i8* @devm_kcalloc(%struct.device* %167, i32 %170, i32 8, i32 %171)
  %173 = bitcast i8* %172 to %struct.TYPE_8__*
  %174 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %175 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %174, i32 0, i32 9
  store %struct.TYPE_8__* %173, %struct.TYPE_8__** %175, align 8
  %176 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %177 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %176, i32 0, i32 9
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = icmp ne %struct.TYPE_8__* %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %163
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %2, align 4
  br label %328

183:                                              ; preds = %163
  store i32 0, i32* %7, align 4
  br label %184

184:                                              ; preds = %202, %183
  %185 = load i32, i32* %7, align 4
  %186 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %187 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %205

190:                                              ; preds = %184
  %191 = load i32*, i32** @irq_data, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %196 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %195, i32 0, i32 9
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  store i32* %194, i32** %201, align 8
  br label %202

202:                                              ; preds = %190
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %7, align 4
  br label %184

205:                                              ; preds = %184
  store i32 0, i32* %7, align 4
  br label %206

206:                                              ; preds = %249, %205
  %207 = load i32, i32* %7, align 4
  %208 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %5, align 8
  %209 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %208, i32 0, i32 1
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %207, %212
  br i1 %213, label %214, label %252

214:                                              ; preds = %206
  %215 = load i32**, i32*** @mt2701_i2s_data, align 8
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32*, i32** %215, i64 %217
  %219 = load i32*, i32** %218, align 8
  %220 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %5, align 8
  %223 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %222, i32 0, i32 0
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %223, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = load i32**, i32*** %228, align 8
  %230 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %231 = getelementptr inbounds i32*, i32** %229, i64 %230
  store i32* %221, i32** %231, align 8
  %232 = load i32**, i32*** @mt2701_i2s_data, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32*, i32** %232, i64 %234
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  %239 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %5, align 8
  %240 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %239, i32 0, i32 0
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %240, align 8
  %242 = load i32, i32* %7, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load i32**, i32*** %245, align 8
  %247 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %248 = getelementptr inbounds i32*, i32** %246, i64 %247
  store i32* %238, i32** %248, align 8
  br label %249

249:                                              ; preds = %214
  %250 = load i32, i32* %7, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %7, align 4
  br label %206

252:                                              ; preds = %206
  %253 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %254 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %253, i32 0, i32 8
  store i32* @mt2701_afe_hardware, i32** %254, align 8
  %255 = load i32, i32* @mt2701_memif_fs, align 4
  %256 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %257 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %256, i32 0, i32 7
  store i32 %255, i32* %257, align 4
  %258 = load i32, i32* @mt2701_irq_fs, align 4
  %259 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %260 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %259, i32 0, i32 6
  store i32 %258, i32* %260, align 8
  %261 = load i32*, i32** @mt2701_afe_backup_list, align 8
  %262 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %263 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %262, i32 0, i32 5
  store i32* %261, i32** %263, align 8
  %264 = load i32*, i32** @mt2701_afe_backup_list, align 8
  %265 = call i32 @ARRAY_SIZE(i32* %264)
  %266 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %267 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %266, i32 0, i32 4
  store i32 %265, i32* %267, align 4
  %268 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %269 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %268, i32 0, i32 2
  store i32 (%struct.device*)* @mt2701_afe_runtime_resume, i32 (%struct.device*)** %269, align 8
  %270 = load i32, i32* @mt2701_afe_runtime_suspend, align 4
  %271 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %272 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %271, i32 0, i32 3
  store i32 %270, i32* %272, align 8
  %273 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %274 = call i32 @mt2701_init_clock(%struct.mtk_base_afe* %273)
  store i32 %274, i32* %9, align 4
  %275 = load i32, i32* %9, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %252
  %278 = load %struct.device*, %struct.device** %6, align 8
  %279 = call i32 @dev_err(%struct.device* %278, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %280 = load i32, i32* %9, align 4
  store i32 %280, i32* %2, align 4
  br label %328

281:                                              ; preds = %252
  %282 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %283 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %284 = call i32 @platform_set_drvdata(%struct.platform_device* %282, %struct.mtk_base_afe* %283)
  %285 = load %struct.device*, %struct.device** %6, align 8
  %286 = call i32 @pm_runtime_enable(%struct.device* %285)
  %287 = load %struct.device*, %struct.device** %6, align 8
  %288 = call i32 @pm_runtime_enabled(%struct.device* %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %297, label %290

290:                                              ; preds = %281
  %291 = load %struct.device*, %struct.device** %6, align 8
  %292 = call i32 @mt2701_afe_runtime_resume(%struct.device* %291)
  store i32 %292, i32* %9, align 4
  %293 = load i32, i32* %9, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %290
  br label %324

296:                                              ; preds = %290
  br label %297

297:                                              ; preds = %296, %281
  %298 = load %struct.device*, %struct.device** %6, align 8
  %299 = call i32 @pm_runtime_get_sync(%struct.device* %298)
  %300 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %301 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %300, i32 0, i32 0
  %302 = call i32 @devm_snd_soc_register_component(%struct.device* %301, i32* @mtk_afe_pcm_platform, i32* null, i32 0)
  store i32 %302, i32* %9, align 4
  %303 = load i32, i32* %9, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %297
  %306 = load %struct.device*, %struct.device** %6, align 8
  %307 = call i32 @dev_warn(%struct.device* %306, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %321

308:                                              ; preds = %297
  %309 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %310 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %309, i32 0, i32 0
  %311 = load i32*, i32** @mt2701_afe_pcm_dais, align 8
  %312 = load i32*, i32** @mt2701_afe_pcm_dais, align 8
  %313 = call i32 @ARRAY_SIZE(i32* %312)
  %314 = call i32 @devm_snd_soc_register_component(%struct.device* %310, i32* @mt2701_afe_pcm_dai_component, i32* %311, i32 %313)
  store i32 %314, i32* %9, align 4
  %315 = load i32, i32* %9, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %308
  %318 = load %struct.device*, %struct.device** %6, align 8
  %319 = call i32 @dev_warn(%struct.device* %318, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %321

320:                                              ; preds = %308
  store i32 0, i32* %2, align 4
  br label %328

321:                                              ; preds = %317, %305
  %322 = load %struct.device*, %struct.device** %6, align 8
  %323 = call i32 @pm_runtime_put_sync(%struct.device* %322)
  br label %324

324:                                              ; preds = %321, %295
  %325 = load %struct.device*, %struct.device** %6, align 8
  %326 = call i32 @pm_runtime_disable(%struct.device* %325)
  %327 = load i32, i32* %9, align 4
  store i32 %327, i32* %2, align 4
  br label %328

328:                                              ; preds = %324, %320, %277, %180, %131, %104, %86, %74, %66, %32, %17
  %329 = load i32, i32* %2, align 4
  ret i32 %329
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mt2701_afe_runtime_resume(%struct.device*) #1

declare dso_local i32 @mt2701_init_clock(%struct.mtk_base_afe*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_base_afe*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_enabled(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
