; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_cpu_dai_of.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_cpu_dai_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai_driver = type { i32, i32, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream }
%struct.snd_soc_pcm_stream = type { i32, i32, i32, i32, i32 }
%struct.device_node = type { i32 }
%struct.sti_uniperiph_data = type { %struct.TYPE_9__*, %struct.sti_uniperiph_dai, %struct.snd_soc_dai_driver* }
%struct.TYPE_9__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sti_uniperiph_dai = type { i64, %struct.uniperif* }
%struct.uniperif = type { i64, i32, %struct.TYPE_8__*, i32, %struct.TYPE_10__*, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.of_device_id = type { i64 }
%struct.sti_uniperiph_dev_data = type { i32, i64, i32, i32, i32 }

@snd_soc_sti_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"data associated to device is missing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sti_uniperiph_dai_template = common dso_local global %struct.snd_soc_dai_driver zeroinitializer, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to get memory resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SND_ST_UNIPERIF_TYPE_TDM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"st,tdm-mode\00", align 1
@SND_ST_UNIPERIF_TYPE_PCM = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.sti_uniperiph_data*)* @sti_uniperiph_cpu_dai_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_uniperiph_cpu_dai_of(%struct.device_node* %0, %struct.sti_uniperiph_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.sti_uniperiph_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.sti_uniperiph_dai*, align 8
  %8 = alloca %struct.snd_soc_dai_driver*, align 8
  %9 = alloca %struct.snd_soc_pcm_stream*, align 8
  %10 = alloca %struct.uniperif*, align 8
  %11 = alloca %struct.of_device_id*, align 8
  %12 = alloca %struct.sti_uniperiph_dev_data*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.sti_uniperiph_data* %1, %struct.sti_uniperiph_data** %5, align 8
  %15 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %5, align 8
  %16 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %5, align 8
  %20 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %19, i32 0, i32 1
  store %struct.sti_uniperiph_dai* %20, %struct.sti_uniperiph_dai** %7, align 8
  %21 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %5, align 8
  %22 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %21, i32 0, i32 2
  %23 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %22, align 8
  store %struct.snd_soc_dai_driver* %23, %struct.snd_soc_dai_driver** %8, align 8
  %24 = load i32, i32* @snd_soc_sti_match, align 4
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = call %struct.of_device_id* @of_match_node(i32 %24, %struct.device_node* %25)
  store %struct.of_device_id* %26, %struct.of_device_id** %11, align 8
  %27 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %28 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %2
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %225

36:                                               ; preds = %2
  %37 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %38 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.sti_uniperiph_dev_data*
  store %struct.sti_uniperiph_dev_data* %40, %struct.sti_uniperiph_dev_data** %12, align 8
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.uniperif* @devm_kzalloc(%struct.device* %41, i32 64, i32 %42)
  store %struct.uniperif* %43, %struct.uniperif** %10, align 8
  %44 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %45 = icmp ne %struct.uniperif* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %225

49:                                               ; preds = %36
  %50 = load %struct.sti_uniperiph_dev_data*, %struct.sti_uniperiph_dev_data** %12, align 8
  %51 = getelementptr inbounds %struct.sti_uniperiph_dev_data, %struct.sti_uniperiph_dev_data* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %54 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sti_uniperiph_dev_data*, %struct.sti_uniperiph_dev_data** %12, align 8
  %56 = getelementptr inbounds %struct.sti_uniperiph_dev_data, %struct.sti_uniperiph_dev_data* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %59 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %61 = bitcast %struct.snd_soc_dai_driver* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 bitcast (%struct.snd_soc_dai_driver* @sti_uniperiph_dai_template to i8*), i64 48, i1 false)
  %62 = load %struct.sti_uniperiph_dev_data*, %struct.sti_uniperiph_dev_data** %12, align 8
  %63 = getelementptr inbounds %struct.sti_uniperiph_dev_data, %struct.sti_uniperiph_dev_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %66 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %5, align 8
  %68 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load i32, i32* @IORESOURCE_MEM, align 4
  %71 = call %struct.TYPE_10__* @platform_get_resource(%struct.TYPE_9__* %69, i32 %70, i32 0)
  %72 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %73 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %72, i32 0, i32 4
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %73, align 8
  %74 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %75 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %74, i32 0, i32 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = icmp ne %struct.TYPE_10__* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %49
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %225

83:                                               ; preds = %49
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %86 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %85, i32 0, i32 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = call i32 @devm_ioremap_resource(%struct.device* %84, %struct.TYPE_10__* %87)
  %89 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %90 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  %91 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %92 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @IS_ERR(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %83
  %97 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %98 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @PTR_ERR(i32 %99)
  store i32 %100, i32* %3, align 4
  br label %225

101:                                              ; preds = %83
  %102 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %103 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %102, i32 0, i32 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %108 = call i64 @UNIPERIF_FIFO_DATA_OFFSET(%struct.uniperif* %107)
  %109 = add nsw i64 %106, %108
  %110 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %111 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %110, i32 0, i32 5
  store i64 %109, i64* %111, align 8
  %112 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %5, align 8
  %113 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = call i64 @platform_get_irq(%struct.TYPE_9__* %114, i32 0)
  %116 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %117 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %119 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %101
  %123 = load i32, i32* @ENXIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %225

125:                                              ; preds = %101
  %126 = load %struct.sti_uniperiph_dev_data*, %struct.sti_uniperiph_dev_data** %12, align 8
  %127 = getelementptr inbounds %struct.sti_uniperiph_dev_data, %struct.sti_uniperiph_dev_data* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %130 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load %struct.sti_uniperiph_dev_data*, %struct.sti_uniperiph_dev_data** %12, align 8
  %132 = getelementptr inbounds %struct.sti_uniperiph_dev_data, %struct.sti_uniperiph_dev_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @SND_ST_UNIPERIF_TYPE_TDM, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %125
  %138 = load %struct.device_node*, %struct.device_node** %4, align 8
  %139 = call i32 @of_property_read_string(%struct.device_node* %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %13)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* @SND_ST_UNIPERIF_TYPE_TDM, align 4
  %143 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %144 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 8
  br label %149

145:                                              ; preds = %137
  %146 = load i32, i32* @SND_ST_UNIPERIF_TYPE_PCM, align 4
  %147 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %148 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %145, %141
  br label %150

150:                                              ; preds = %149, %125
  %151 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %152 = load %struct.sti_uniperiph_dai*, %struct.sti_uniperiph_dai** %7, align 8
  %153 = getelementptr inbounds %struct.sti_uniperiph_dai, %struct.sti_uniperiph_dai* %152, i32 0, i32 1
  store %struct.uniperif* %151, %struct.uniperif** %153, align 8
  %154 = load %struct.sti_uniperiph_dev_data*, %struct.sti_uniperiph_dev_data** %12, align 8
  %155 = getelementptr inbounds %struct.sti_uniperiph_dev_data, %struct.sti_uniperiph_dev_data* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.sti_uniperiph_dai*, %struct.sti_uniperiph_dai** %7, align 8
  %158 = getelementptr inbounds %struct.sti_uniperiph_dai, %struct.sti_uniperiph_dai* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %5, align 8
  %160 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.sti_uniperiph_dai, %struct.sti_uniperiph_dai* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %150
  %166 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %5, align 8
  %167 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %166, i32 0, i32 0
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %170 = call i32 @uni_player_init(%struct.TYPE_9__* %168, %struct.uniperif* %169)
  store i32 %170, i32* %14, align 4
  %171 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %172 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %171, i32 0, i32 3
  store %struct.snd_soc_pcm_stream* %172, %struct.snd_soc_pcm_stream** %9, align 8
  br label %181

173:                                              ; preds = %150
  %174 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %5, align 8
  %175 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %174, i32 0, i32 0
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %178 = call i32 @uni_reader_init(%struct.TYPE_9__* %176, %struct.uniperif* %177)
  store i32 %178, i32* %14, align 4
  %179 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %180 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %179, i32 0, i32 2
  store %struct.snd_soc_pcm_stream* %180, %struct.snd_soc_pcm_stream** %9, align 8
  br label %181

181:                                              ; preds = %173, %165
  %182 = load i32, i32* %14, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = load i32, i32* %14, align 4
  store i32 %185, i32* %3, align 4
  br label %225

186:                                              ; preds = %181
  %187 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %188 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %191 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %193 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %9, align 8
  %196 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 4
  %197 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %198 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %197, i32 0, i32 2
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %9, align 8
  %203 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %202, i32 0, i32 3
  store i32 %201, i32* %203, align 4
  %204 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %205 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %204, i32 0, i32 2
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %9, align 8
  %210 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 4
  %211 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %212 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %211, i32 0, i32 2
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %9, align 8
  %217 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  %218 = load %struct.uniperif*, %struct.uniperif** %10, align 8
  %219 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %218, i32 0, i32 2
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %9, align 8
  %224 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 4
  store i32 0, i32* %3, align 4
  br label %225

225:                                              ; preds = %186, %184, %122, %96, %78, %46, %31
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.uniperif* @devm_kzalloc(%struct.device*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_10__* @platform_get_resource(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.TYPE_10__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @UNIPERIF_FIFO_DATA_OFFSET(%struct.uniperif*) #1

declare dso_local i64 @platform_get_irq(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @uni_player_init(%struct.TYPE_9__*, %struct.uniperif*) #1

declare dso_local i32 @uni_reader_init(%struct.TYPE_9__*, %struct.uniperif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
