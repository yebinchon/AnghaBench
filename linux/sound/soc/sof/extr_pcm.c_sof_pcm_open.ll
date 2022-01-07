; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_pcm.c_sof_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_pcm.c_sof_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i32, %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.snd_soc_component = type { i32 }
%struct.snd_sof_dev = type { i32 }
%struct.snd_sof_pcm = type { i32*, %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.snd_pcm_substream*, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.snd_soc_tplg_stream_caps*, i32 }
%struct.snd_soc_tplg_stream_caps = type { i32, i32, i32, i32, i32, i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"pcm: open stream %d dir %d\0A\00", align 1
@sof_pcm_period_elapsed_work = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP_VALID = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_PAUSE = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_NO_PERIOD_WAKEUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"period min %zd max %zd bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"period count %d max %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"buffer max %zd bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"error: pcm open failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @sof_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.snd_sof_dev*, align 8
  %8 = alloca %struct.snd_sof_pcm*, align 8
  %9 = alloca %struct.snd_soc_tplg_stream_caps*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 3
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %4, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 2
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %5, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %18 = load i32, i32* @DRV_NAME, align 4
  %19 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %17, i32 %18)
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %6, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %21 = call %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.snd_sof_dev* %21, %struct.snd_sof_dev** %7, align 8
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %223

29:                                               ; preds = %1
  %30 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %31 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %32 = call %struct.snd_sof_pcm* @snd_sof_find_spcm_dai(%struct.snd_sof_dev* %30, %struct.snd_soc_pcm_runtime* %31)
  store %struct.snd_sof_pcm* %32, %struct.snd_sof_pcm** %8, align 8
  %33 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %8, align 8
  %34 = icmp ne %struct.snd_sof_pcm* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %223

38:                                               ; preds = %29
  %39 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %40 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %8, align 8
  %43 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i32, i8*, i8*, ...) @dev_dbg(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %47, i64 %50)
  %52 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %8, align 8
  %53 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load i32, i32* @sof_pcm_period_elapsed_work, align 4
  %61 = call i32 @INIT_WORK(i32* %59, i32 %60)
  %62 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %8, align 8
  %63 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %64, align 8
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %65, i64 %68
  store %struct.snd_soc_tplg_stream_caps* %69, %struct.snd_soc_tplg_stream_caps** %9, align 8
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %70, i32 0, i32 2
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %71, align 8
  %73 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %74 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %9, align 8
  %75 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @le32_to_cpu(i32 %76)
  %78 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %72, i32 0, i32 %73, i8* %77)
  %79 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %79, i32 0, i32 2
  %81 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %80, align 8
  %82 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %83 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %9, align 8
  %84 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @le32_to_cpu(i32 %85)
  %87 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %81, i32 0, i32 %82, i8* %86)
  %88 = load i32, i32* @SNDRV_PCM_INFO_MMAP, align 4
  %89 = load i32, i32* @SNDRV_PCM_INFO_MMAP_VALID, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @SNDRV_PCM_INFO_INTERLEAVED, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @SNDRV_PCM_INFO_PAUSE, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @SNDRV_PCM_INFO_NO_PERIOD_WAKEUP, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %9, align 8
  %101 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le64_to_cpu(i32 %102)
  %104 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %105 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 6
  store i32 %103, i32* %106, align 8
  %107 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %9, align 8
  %108 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @le32_to_cpu(i32 %109)
  %111 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 5
  store i8* %110, i8** %113, align 8
  %114 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %9, align 8
  %115 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @le32_to_cpu(i32 %116)
  %118 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %119 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 4
  store i8* %117, i8** %120, align 8
  %121 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %9, align 8
  %122 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @le32_to_cpu(i32 %123)
  %125 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %126 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 3
  store i8* %124, i8** %127, align 8
  %128 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %9, align 8
  %129 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @le32_to_cpu(i32 %130)
  %132 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %133 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  store i8* %131, i8** %134, align 8
  %135 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %9, align 8
  %136 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @le32_to_cpu(i32 %137)
  %139 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %140 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  store i8* %138, i8** %141, align 8
  %142 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %143 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %146 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 5
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %150 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 4
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 (i32, i8*, i8*, ...) @dev_dbg(i32 %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %148, i8* %152)
  %154 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %155 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %158 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %162 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 (i32, i8*, i8*, ...) @dev_dbg(i32 %156, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %160, i8* %164)
  %166 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %167 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %170 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (i32, i8*, i8*, ...) @dev_dbg(i32 %168, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %172)
  %174 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %175 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %174, i32 0, i32 1
  store i32 500, i32* %175, align 8
  %176 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %8, align 8
  %177 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %176, i32 0, i32 1
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %180 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  store i64 0, i64* %184, align 8
  %185 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %8, align 8
  %186 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %185, i32 0, i32 1
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %189 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  store i64 0, i64* %193, align 8
  %194 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %195 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %8, align 8
  %196 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %195, i32 0, i32 1
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %199 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  store %struct.snd_pcm_substream* %194, %struct.snd_pcm_substream** %202, align 8
  %203 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %8, align 8
  %204 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %207 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  store i32 0, i32* %209, align 4
  %210 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %211 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %212 = call i32 @snd_sof_pcm_platform_open(%struct.snd_sof_dev* %210, %struct.snd_pcm_substream* %211)
  store i32 %212, i32* %10, align 4
  %213 = load i32, i32* %10, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %38
  %216 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %217 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @dev_err(i32 %218, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %219)
  br label %221

221:                                              ; preds = %215, %38
  %222 = load i32, i32* %10, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %221, %35, %28
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_sof_pcm* @snd_sof_find_spcm_dai(%struct.snd_sof_dev*, %struct.snd_soc_pcm_runtime*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, ...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i8*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @snd_sof_pcm_platform_open(%struct.snd_sof_dev*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
