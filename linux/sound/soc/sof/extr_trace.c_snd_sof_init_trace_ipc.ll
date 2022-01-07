; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_trace.c_snd_sof_init_trace_ipc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_trace.c_snd_sof_init_trace_ipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.sof_ipc_fw_ready }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sof_ipc_fw_ready = type { %struct.sof_ipc_fw_version }
%struct.sof_ipc_fw_version = type { i64 }
%struct.sof_ipc_dma_trace_params_ext = type { %struct.TYPE_8__, i64, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.sof_ipc_reply = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOF_IPC_GLB_TRACE_MSG = common dso_local global i32 0, align 4
@SOF_IPC_TRACE_DMA_PARAMS_EXT = common dso_local global i32 0, align 4
@SOF_IPC_TRACE_DMA_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"error: fail in snd_sof_dma_trace_init %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"stream_tag: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"error: can't set params for DMA for trace %d\0A\00", align 1
@SNDRV_PCM_TRIGGER_START = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"error: snd_sof_dma_trace_trigger: start: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_init_trace_ipc(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca %struct.sof_ipc_fw_ready*, align 8
  %5 = alloca %struct.sof_ipc_fw_version*, align 8
  %6 = alloca %struct.sof_ipc_dma_trace_params_ext, align 8
  %7 = alloca %struct.sof_ipc_reply, align 4
  %8 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  %9 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %10 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %9, i32 0, i32 8
  store %struct.sof_ipc_fw_ready* %10, %struct.sof_ipc_fw_ready** %4, align 8
  %11 = load %struct.sof_ipc_fw_ready*, %struct.sof_ipc_fw_ready** %4, align 8
  %12 = getelementptr inbounds %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_ready* %11, i32 0, i32 0
  store %struct.sof_ipc_fw_version* %12, %struct.sof_ipc_fw_version** %5, align 8
  %13 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %14 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %19 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %128

25:                                               ; preds = %17
  %26 = load i32, i32* @SOF_IPC_GLB_TRACE_MSG, align 4
  %27 = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, %struct.sof_ipc_dma_trace_params_ext* %6, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.sof_ipc_fw_version*, %struct.sof_ipc_fw_version** %5, align 8
  %30 = getelementptr inbounds %struct.sof_ipc_fw_version, %struct.sof_ipc_fw_version* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @SOF_ABI_VER(i32 3, i32 7, i32 0)
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, %struct.sof_ipc_dma_trace_params_ext* %6, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 40, i32* %36, align 8
  %37 = load i32, i32* @SOF_IPC_TRACE_DMA_PARAMS_EXT, align 4
  %38 = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, %struct.sof_ipc_dma_trace_params_ext* %6, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = call i32 (...) @ktime_get()
  %43 = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, %struct.sof_ipc_dma_trace_params_ext* %6, i32 0, i32 3
  store i32 %42, i32* %43, align 8
  br label %52

44:                                               ; preds = %25
  %45 = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, %struct.sof_ipc_dma_trace_params_ext* %6, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 4, i32* %46, align 8
  %47 = load i32, i32* @SOF_IPC_TRACE_DMA_PARAMS, align 4
  %48 = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, %struct.sof_ipc_dma_trace_params_ext* %6, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %44, %34
  %53 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %54 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, %struct.sof_ipc_dma_trace_params_ext* %6, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %60 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, %struct.sof_ipc_dma_trace_params_ext* %6, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %66 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, %struct.sof_ipc_dma_trace_params_ext* %6, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, %struct.sof_ipc_dma_trace_params_ext* %6, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %72 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %74 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %76 = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, %struct.sof_ipc_dma_trace_params_ext* %6, i32 0, i32 1
  %77 = call i32 @snd_sof_dma_trace_init(%struct.snd_sof_dev* %75, i64* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %52
  %81 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %82 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %2, align 4
  br label %128

87:                                               ; preds = %52
  %88 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %89 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, %struct.sof_ipc_dma_trace_params_ext* %6, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @dev_dbg(i32 %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  %94 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %95 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, %struct.sof_ipc_dma_trace_params_ext* %6, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @sof_ipc_tx_message(i32 %96, i32 %99, %struct.sof_ipc_dma_trace_params_ext* %6, i32 40, %struct.sof_ipc_reply* %7, i32 4)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %87
  %104 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %105 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  br label %124

109:                                              ; preds = %87
  %110 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %111 = load i32, i32* @SNDRV_PCM_TRIGGER_START, align 4
  %112 = call i32 @snd_sof_dma_trace_trigger(%struct.snd_sof_dev* %110, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %117 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @dev_err(i32 %118, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  br label %124

121:                                              ; preds = %109
  %122 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %123 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  store i32 0, i32* %2, align 4
  br label %128

124:                                              ; preds = %115, %103
  %125 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %126 = call i32 @snd_sof_dma_trace_release(%struct.snd_sof_dev* %125)
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %124, %121, %80, %22
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i64 @SOF_ABI_VER(i32, i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @snd_sof_dma_trace_init(%struct.snd_sof_dev*, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @sof_ipc_tx_message(i32, i32, %struct.sof_ipc_dma_trace_params_ext*, i32, %struct.sof_ipc_reply*, i32) #1

declare dso_local i32 @snd_sof_dma_trace_trigger(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @snd_sof_dma_trace_release(%struct.snd_sof_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
