; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_pcm.c_sof_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_pcm.c_sof_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.snd_sof_dev = type { i32, i32 }
%struct.snd_sof_pcm = type { i32*, i32*, %struct.TYPE_13__*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.sof_ipc_pcm_params = type { %struct.TYPE_16__, %struct.TYPE_15__, i32 }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.sof_ipc_pcm_params_reply = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"pcm: hw params stream %d dir %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"error: could not allocate %d bytes for PCM %d\0A\00", align 1
@SOF_IPC_GLB_STREAM_MSG = common dso_local global i32 0, align 4
@SOF_IPC_STREAM_PCM_PARAMS = common dso_local global i32 0, align 4
@SOF_IPC_BUFFER_INTERLEAVED = common dso_local global i32 0, align 4
@SOF_IPC_FRAME_S16_LE = common dso_local global i32 0, align 4
@SOF_IPC_FRAME_S24_4LE = common dso_local global i32 0, align 4
@SOF_IPC_FRAME_S32_LE = common dso_local global i32 0, align 4
@SOF_IPC_FRAME_FLOAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"error: platform hw params failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"stream_tag %d\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"error: hw params ipc failed for stream %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @sof_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.snd_sof_dev*, align 8
  %10 = alloca %struct.snd_sof_pcm*, align 8
  %11 = alloca %struct.sof_ipc_pcm_params, align 8
  %12 = alloca %struct.sof_ipc_pcm_params_reply, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 2
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %6, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 1
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %18, align 8
  store %struct.snd_pcm_runtime* %19, %struct.snd_pcm_runtime** %7, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %21 = load i32, i32* @DRV_NAME, align 4
  %22 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %20, i32 %21)
  store %struct.snd_soc_component* %22, %struct.snd_soc_component** %8, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %24 = call %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %23)
  store %struct.snd_sof_dev* %24, %struct.snd_sof_dev** %9, align 8
  %25 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %26 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %260

32:                                               ; preds = %2
  %33 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %9, align 8
  %34 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %35 = call %struct.snd_sof_pcm* @snd_sof_find_spcm_dai(%struct.snd_sof_dev* %33, %struct.snd_soc_pcm_runtime* %34)
  store %struct.snd_sof_pcm* %35, %struct.snd_sof_pcm** %10, align 8
  %36 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %10, align 8
  %37 = icmp ne %struct.snd_sof_pcm* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %260

41:                                               ; preds = %32
  %42 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %9, align 8
  %43 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %10, align 8
  %46 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %51)
  %53 = call i32 @memset(%struct.sof_ipc_pcm_params* %11, i32 0, i32 72)
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %55 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %56 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %55)
  %57 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %54, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %41
  %61 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %9, align 8
  %62 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %65 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %64)
  %66 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %10, align 8
  %67 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %69)
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %3, align 4
  br label %260

72:                                               ; preds = %41
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %77 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @create_page_table(%struct.snd_pcm_substream* %76, i32 %79, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %3, align 4
  br label %260

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %72
  %90 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %91 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @PFN_UP(i32 %92)
  %94 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  %97 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  store i32 72, i32* %98, align 8
  %99 = load i32, i32* @SOF_IPC_GLB_STREAM_MSG, align 4
  %100 = load i32, i32* @SOF_IPC_STREAM_PCM_PARAMS, align 4
  %101 = or i32 %99, %100
  %102 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %10, align 8
  %105 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %104, i32 0, i32 2
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %108 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 2
  store i32 %112, i32* %113, align 8
  %114 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 10
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  store i32 56, i32* %116, align 4
  %117 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %10, align 8
  %118 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %117, i32 0, i32 2
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %121 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 9
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 4
  %130 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %131 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 9
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  %136 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %137 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %142 = call i32 @params_width(%struct.snd_pcm_hw_params* %141)
  %143 = ashr i32 %142, 3
  %144 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* @SOF_IPC_BUFFER_INTERLEAVED, align 4
  %147 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 8
  store i32 %146, i32* %148, align 4
  %149 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %150 = call i32 @params_rate(%struct.snd_pcm_hw_params* %149)
  %151 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 7
  store i32 %150, i32* %152, align 8
  %153 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %154 = call i32 @params_channels(%struct.snd_pcm_hw_params* %153)
  %155 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 4
  %157 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %158 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %157)
  %159 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 8
  %161 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %162 = call i32 @params_format(%struct.snd_pcm_hw_params* %161)
  %163 = call i32 @snd_pcm_format_physical_width(i32 %162)
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %89
  %167 = load i32, i32* %13, align 4
  store i32 %167, i32* %3, align 4
  br label %260

168:                                              ; preds = %89
  %169 = load i32, i32* %13, align 4
  %170 = ashr i32 %169, 3
  %171 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 4
  %173 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %174 = call i32 @params_format(%struct.snd_pcm_hw_params* %173)
  switch i32 %174, label %191 [
    i32 130, label %175
    i32 129, label %179
    i32 128, label %183
    i32 131, label %187
  ]

175:                                              ; preds = %168
  %176 = load i32, i32* @SOF_IPC_FRAME_S16_LE, align 4
  %177 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 4
  br label %194

179:                                              ; preds = %168
  %180 = load i32, i32* @SOF_IPC_FRAME_S24_4LE, align 4
  %181 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 4
  store i32 %180, i32* %182, align 4
  br label %194

183:                                              ; preds = %168
  %184 = load i32, i32* @SOF_IPC_FRAME_S32_LE, align 4
  %185 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 4
  store i32 %184, i32* %186, align 4
  br label %194

187:                                              ; preds = %168
  %188 = load i32, i32* @SOF_IPC_FRAME_FLOAT, align 4
  %189 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 4
  br label %194

191:                                              ; preds = %168
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %3, align 4
  br label %260

194:                                              ; preds = %187, %183, %179, %175
  %195 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %9, align 8
  %196 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %197 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %198 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %199 = call i32 @snd_sof_pcm_platform_hw_params(%struct.snd_sof_dev* %195, %struct.snd_pcm_substream* %196, %struct.snd_pcm_hw_params* %197, %struct.TYPE_16__* %198)
  store i32 %199, i32* %13, align 4
  %200 = load i32, i32* %13, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %194
  %203 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %9, align 8
  %204 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i32, i8*, ...) @dev_err(i32 %205, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %207 = load i32, i32* %13, align 4
  store i32 %207, i32* %3, align 4
  br label %260

208:                                              ; preds = %194
  %209 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %9, align 8
  %210 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %211, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %214)
  %216 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %9, align 8
  %217 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @sof_ipc_tx_message(i32 %218, i32 %221, %struct.sof_ipc_pcm_params* %11, i32 72, %struct.sof_ipc_pcm_params_reply* %12, i32 4)
  store i32 %222, i32* %13, align 4
  %223 = load i32, i32* %13, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %208
  %226 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %9, align 8
  %227 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %11, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i32, i8*, ...) @dev_err(i32 %228, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* %13, align 4
  store i32 %233, i32* %3, align 4
  br label %260

234:                                              ; preds = %208
  %235 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %10, align 8
  %236 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %237 = call i32 @sof_pcm_dsp_params(%struct.snd_sof_pcm* %235, %struct.snd_pcm_substream* %236, %struct.sof_ipc_pcm_params_reply* %12)
  store i32 %237, i32* %13, align 4
  %238 = load i32, i32* %13, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %234
  %241 = load i32, i32* %13, align 4
  store i32 %241, i32* %3, align 4
  br label %260

242:                                              ; preds = %234
  %243 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %10, align 8
  %244 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %247 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  store i32 1, i32* %249, align 4
  %250 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %10, align 8
  %251 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %254 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  %257 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %258 = call i32 @memcpy(i32* %256, %struct.snd_pcm_hw_params* %257, i32 4)
  %259 = load i32, i32* %13, align 4
  store i32 %259, i32* %3, align 4
  br label %260

260:                                              ; preds = %242, %240, %225, %202, %191, %166, %86, %60, %38, %31
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_sof_pcm* @snd_sof_find_spcm_dai(%struct.snd_sof_dev*, %struct.snd_soc_pcm_runtime*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.sof_ipc_pcm_params*, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @create_page_table(%struct.snd_pcm_substream*, i32, i32) #1

declare dso_local i32 @PFN_UP(i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_sof_pcm_platform_hw_params(%struct.snd_sof_dev*, %struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.TYPE_16__*) #1

declare dso_local i32 @sof_ipc_tx_message(i32, i32, %struct.sof_ipc_pcm_params*, i32, %struct.sof_ipc_pcm_params_reply*, i32) #1

declare dso_local i32 @sof_pcm_dsp_params(%struct.snd_sof_pcm*, %struct.snd_pcm_substream*, %struct.sof_ipc_pcm_params_reply*) #1

declare dso_local i32 @memcpy(i32*, %struct.snd_pcm_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
