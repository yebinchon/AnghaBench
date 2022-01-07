; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_dai_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_dai_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dai_driver = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.snd_sof_pcm* }
%struct.snd_sof_pcm = type { %struct.TYPE_4__*, %struct.snd_soc_tplg_pcm, i32, %struct.snd_sof_dev* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.snd_soc_tplg_pcm = type { i64, %struct.snd_soc_tplg_stream_caps*, i32, i32 }
%struct.snd_soc_tplg_stream_caps = type { i32 }
%struct.snd_sof_dev = type { i32, i32 }
%struct.snd_soc_dai = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@COMP_ID_UNASSIGNED = common dso_local global i8* null, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"tplg: load pcm %s\0A\00", align 1
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"error: can't alloc page table for %s %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"error: can't bind pcm to host\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, %struct.snd_soc_dai_driver*, %struct.snd_soc_tplg_pcm*, %struct.snd_soc_dai*)* @sof_dai_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_dai_load(%struct.snd_soc_component* %0, i32 %1, %struct.snd_soc_dai_driver* %2, %struct.snd_soc_tplg_pcm* %3, %struct.snd_soc_dai* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_dai_driver*, align 8
  %10 = alloca %struct.snd_soc_tplg_pcm*, align 8
  %11 = alloca %struct.snd_soc_dai*, align 8
  %12 = alloca %struct.snd_sof_dev*, align 8
  %13 = alloca %struct.snd_soc_tplg_stream_caps*, align 8
  %14 = alloca %struct.snd_sof_pcm*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.snd_soc_dai_driver* %2, %struct.snd_soc_dai_driver** %9, align 8
  store %struct.snd_soc_tplg_pcm* %3, %struct.snd_soc_tplg_pcm** %10, align 8
  store %struct.snd_soc_dai* %4, %struct.snd_soc_dai** %11, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %18 = call %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.snd_sof_dev* %18, %struct.snd_sof_dev** %12, align 8
  %19 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %21 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %10, align 8
  %22 = icmp ne %struct.snd_soc_tplg_pcm* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %207

24:                                               ; preds = %5
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.snd_sof_pcm* @kzalloc(i32 48, i32 %25)
  store %struct.snd_sof_pcm* %26, %struct.snd_sof_pcm** %14, align 8
  %27 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %28 = icmp ne %struct.snd_sof_pcm* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %207

32:                                               ; preds = %24
  %33 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %34 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %35 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %34, i32 0, i32 3
  store %struct.snd_sof_dev* %33, %struct.snd_sof_dev** %35, align 8
  %36 = load i8*, i8** @COMP_ID_UNASSIGNED, align 8
  %37 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %38 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i8* %36, i8** %42, align 8
  %43 = load i8*, i8** @COMP_ID_UNASSIGNED, align 8
  %44 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %45 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i8* %43, i8** %49, align 8
  %50 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %10, align 8
  %51 = icmp ne %struct.snd_soc_tplg_pcm* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %32
  %53 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %54 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %53, i32 0, i32 1
  %55 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %10, align 8
  %56 = bitcast %struct.snd_soc_tplg_pcm* %54 to i8*
  %57 = bitcast %struct.snd_soc_tplg_pcm* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 24, i1 false)
  %58 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %59 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %10, align 8
  %62 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %52, %32
  %66 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %67 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %9, align 8
  %68 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store %struct.snd_sof_pcm* %66, %struct.snd_sof_pcm** %69, align 8
  %70 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %71 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %70, i32 0, i32 2
  %72 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %73 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %72, i32 0, i32 1
  %74 = call i32 @list_add(i32* %71, i32* %73)
  %75 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %76 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %65
  br label %127

81:                                               ; preds = %65
  %82 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %83 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %83, i32 0, i32 1
  %85 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %84, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %85, i64 %87
  store %struct.snd_soc_tplg_stream_caps* %88, %struct.snd_soc_tplg_stream_caps** %13, align 8
  %89 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %90 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %91 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %95 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = call i32 @snd_dma_alloc_pages(i32 %89, i32 %92, i32 %93, i32* %100)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %81
  %105 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %106 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %13, align 8
  %109 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %16, align 4
  %112 = call i32 (i32, i8*, ...) @dev_err(i32 %107, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load i32, i32* %16, align 4
  store i32 %113, i32* %6, align 4
  br label %207

114:                                              ; preds = %81
  %115 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %116 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @spcm_bind(%struct.snd_sof_dev* %115, %struct.snd_sof_pcm* %116, i32 %117)
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %123 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, ...) @dev_err(i32 %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %191

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126, %80
  %128 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %15, align 4
  %130 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %131 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %127
  %136 = load i32, i32* %16, align 4
  store i32 %136, i32* %6, align 4
  br label %207

137:                                              ; preds = %127
  %138 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %139 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %139, i32 0, i32 1
  %141 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %141, i64 %143
  store %struct.snd_soc_tplg_stream_caps* %144, %struct.snd_soc_tplg_stream_caps** %13, align 8
  %145 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %146 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %147 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @PAGE_SIZE, align 4
  %150 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %151 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %150, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = call i32 @snd_dma_alloc_pages(i32 %145, i32 %148, i32 %149, i32* %156)
  store i32 %157, i32* %16, align 4
  %158 = load i32, i32* %16, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %137
  %161 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %162 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %13, align 8
  %165 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %16, align 4
  %168 = call i32 (i32, i8*, ...) @dev_err(i32 %163, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %166, i32 %167)
  br label %191

169:                                              ; preds = %137
  %170 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %171 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @spcm_bind(%struct.snd_sof_dev* %170, %struct.snd_sof_pcm* %171, i32 %172)
  store i32 %173, i32* %16, align 4
  %174 = load i32, i32* %16, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %169
  %177 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %178 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 (i32, i8*, ...) @dev_err(i32 %179, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %181 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %182 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %181, i32 0, i32 0
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = call i32 @snd_dma_free_pages(i32* %187)
  br label %191

189:                                              ; preds = %169
  %190 = load i32, i32* %16, align 4
  store i32 %190, i32* %6, align 4
  br label %207

191:                                              ; preds = %176, %160, %121
  %192 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %193 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %191
  %198 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %14, align 8
  %199 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %198, i32 0, i32 0
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = call i32 @snd_dma_free_pages(i32* %203)
  br label %205

205:                                              ; preds = %197, %191
  %206 = load i32, i32* %16, align 4
  store i32 %206, i32* %6, align 4
  br label %207

207:                                              ; preds = %205, %189, %135, %104, %29, %23
  %208 = load i32, i32* %6, align 4
  ret i32 %208
}

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_sof_pcm* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @snd_dma_alloc_pages(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @spcm_bind(%struct.snd_sof_dev*, %struct.snd_sof_pcm*, i32) #1

declare dso_local i32 @snd_dma_free_pages(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
