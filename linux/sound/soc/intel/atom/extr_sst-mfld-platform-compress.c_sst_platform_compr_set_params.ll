; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-compress.c_sst_platform_compr_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-compress.c_sst_platform_compr_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.snd_compr_stream = type { %struct.TYPE_19__*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.sst_runtime_stream* }
%struct.sst_runtime_stream = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (i32, %struct.snd_sst_params*, %struct.sst_compress_cb*)* }
%struct.snd_sst_params = type { %struct.TYPE_18__, %struct.TYPE_15__, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.sst_compress_cb = type { i32, %struct.snd_compr_stream*, i32, %struct.snd_compr_stream* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_compr_params = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.sst_data = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"compr_set_params: fill stream params ret_val = 0x%x\0A\00", align 1
@SST_CODEC_TYPE_MP3 = common dso_local global i32 0, align 4
@SST_CODEC_TYPE_AAC = common dso_local global i32 0, align 4
@SND_AUDIOSTREAMFORMAT_MP4ADTS = common dso_local global i32 0, align 4
@AAC_BIT_STREAM_ADTS = common dso_local global i32 0, align 4
@SND_AUDIOSTREAMFORMAT_RAW = common dso_local global i32 0, align 4
@AAC_BIT_STREAM_RAW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Undefined format%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"codec not supported, id =%d\0A\00", align 1
@sst_compr_fragment_elapsed = common dso_local global i32 0, align 4
@sst_drain_notify = common dso_local global i32 0, align 4
@sst = common dso_local global %struct.TYPE_11__* null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"stream allocation failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*)* @sst_platform_compr_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_platform_compr_set_params(%struct.snd_compr_stream* %0, %struct.snd_compr_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_compr_stream*, align 8
  %5 = alloca %struct.snd_compr_params*, align 8
  %6 = alloca %struct.sst_runtime_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_sst_params, align 8
  %9 = alloca %struct.sst_compress_cb, align 8
  %10 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %11 = alloca %struct.snd_soc_component*, align 8
  %12 = alloca %struct.sst_data*, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %4, align 8
  store %struct.snd_compr_params* %1, %struct.snd_compr_params** %5, align 8
  %13 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %13, i32 0, i32 1
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %14, align 8
  store %struct.snd_soc_pcm_runtime* %15, %struct.snd_soc_pcm_runtime** %10, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  %17 = load i32, i32* @DRV_NAME, align 4
  %18 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %16, i32 %17)
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %11, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %20 = call %struct.sst_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.sst_data* %20, %struct.sst_data** %12, align 8
  %21 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %22 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %21, i32 0, i32 0
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 3
  %25 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %24, align 8
  store %struct.sst_runtime_stream* %25, %struct.sst_runtime_stream** %6, align 8
  %26 = call i32 @memset(%struct.snd_sst_params* %8, i32 0, i32 48)
  %27 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %28 = load %struct.sst_data*, %struct.sst_data** %12, align 8
  %29 = call i32 @sst_fill_stream_params(%struct.snd_compr_stream* %27, %struct.sst_data* %28, %struct.snd_sst_params* %8, i32 1)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %180

36:                                               ; preds = %2
  %37 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %38 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %114 [
    i32 128, label %41
    i32 129, label %56
  ]

41:                                               ; preds = %36
  %42 = load i32, i32* @SST_CODEC_TYPE_MP3, align 4
  %43 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %8, i32 0, i32 2
  store i32 %42, i32* %43, align 8
  %44 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %45 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %8, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  %52 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %8, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i32 16, i32* %55, align 8
  br label %122

56:                                               ; preds = %36
  %57 = load i32, i32* @SST_CODEC_TYPE_AAC, align 4
  %58 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %8, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  %59 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %60 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %8, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  store i32 %62, i32* %66, align 4
  %67 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %8, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  store i32 16, i32* %70, align 8
  %71 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %72 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SND_AUDIOSTREAMFORMAT_MP4ADTS, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %56
  %78 = load i32, i32* @AAC_BIT_STREAM_ADTS, align 4
  %79 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %8, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  store i32 %78, i32* %82, align 8
  br label %105

83:                                               ; preds = %56
  %84 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %85 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SND_AUDIOSTREAMFORMAT_RAW, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32, i32* @AAC_BIT_STREAM_RAW, align 4
  %92 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %8, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  store i32 %91, i32* %95, align 8
  br label %104

96:                                               ; preds = %83
  %97 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %98 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %180

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104, %77
  %106 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %107 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %8, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  store i32 %109, i32* %113, align 4
  br label %122

114:                                              ; preds = %36
  %115 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %116 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %180

122:                                              ; preds = %105, %41
  %123 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %124 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %123, i32 0, i32 0
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @virt_to_phys(i32 %127)
  %129 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %8, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  store i32 %128, i32* %133, align 4
  %134 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %135 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %134, i32 0, i32 0
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %8, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  store i32 %138, i32* %143, align 4
  %144 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %8, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  %146 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %147 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %146, i32 0, i32 0
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %8, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %154 = getelementptr inbounds %struct.sst_compress_cb, %struct.sst_compress_cb* %9, i32 0, i32 3
  store %struct.snd_compr_stream* %153, %struct.snd_compr_stream** %154, align 8
  %155 = load i32, i32* @sst_compr_fragment_elapsed, align 4
  %156 = getelementptr inbounds %struct.sst_compress_cb, %struct.sst_compress_cb* %9, i32 0, i32 2
  store i32 %155, i32* %156, align 8
  %157 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %158 = getelementptr inbounds %struct.sst_compress_cb, %struct.sst_compress_cb* %9, i32 0, i32 1
  store %struct.snd_compr_stream* %157, %struct.snd_compr_stream** %158, align 8
  %159 = load i32, i32* @sst_drain_notify, align 4
  %160 = getelementptr inbounds %struct.sst_compress_cb, %struct.sst_compress_cb* %9, i32 0, i32 0
  store i32 %159, i32* %160, align 8
  %161 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %162 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %161, i32 0, i32 1
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = load i32 (i32, %struct.snd_sst_params*, %struct.sst_compress_cb*)*, i32 (i32, %struct.snd_sst_params*, %struct.sst_compress_cb*)** %164, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sst, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 %165(i32 %168, %struct.snd_sst_params* %8, %struct.sst_compress_cb* %9)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %122
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* %7, align 4
  store i32 %175, i32* %3, align 4
  br label %180

176:                                              ; preds = %122
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %179 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %176, %172, %114, %96, %34
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.sst_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @memset(%struct.snd_sst_params*, i32, i32) #1

declare dso_local i32 @sst_fill_stream_params(%struct.snd_compr_stream*, %struct.sst_data*, %struct.snd_sst_params*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @virt_to_phys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
