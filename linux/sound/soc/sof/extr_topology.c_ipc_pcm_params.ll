; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_ipc_pcm_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_ipc_pcm_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_widget = type { %struct.TYPE_8__*, i32, %struct.snd_sof_dev* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.snd_sof_dev = type { i32, i32 }
%struct.sof_ipc_pcm_params_reply = type { i32 }
%struct.sof_ipc_pcm_params = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_sof_pcm = type { %struct.snd_pcm_hw_params* }

@.str = private unnamed_addr constant [31 x i8] c"error: cannot find PCM for %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SOF_IPC_GLB_STREAM_MSG = common dso_local global i32 0, align 4
@SOF_IPC_STREAM_PCM_PARAMS = common dso_local global i32 0, align 4
@SOF_IPC_BUFFER_INTERLEAVED = common dso_local global i32 0, align 4
@SOF_IPC_FRAME_S16_LE = common dso_local global i32 0, align 4
@SOF_IPC_FRAME_S24_4LE = common dso_local global i32 0, align 4
@SOF_IPC_FRAME_S32_LE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"error: pcm params failed for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_widget*, i32)* @ipc_pcm_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_pcm_params(%struct.snd_sof_widget* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sof_widget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sof_ipc_pcm_params_reply, align 4
  %7 = alloca %struct.snd_sof_dev*, align 8
  %8 = alloca %struct.sof_ipc_pcm_params, align 4
  %9 = alloca %struct.snd_pcm_hw_params*, align 8
  %10 = alloca %struct.snd_sof_pcm*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_sof_widget* %0, %struct.snd_sof_widget** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %4, align 8
  %13 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %12, i32 0, i32 2
  %14 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %13, align 8
  store %struct.snd_sof_dev* %14, %struct.snd_sof_dev** %7, align 8
  store i32 0, i32* %11, align 4
  %15 = call i32 @memset(%struct.sof_ipc_pcm_params* %8, i32 0, i32 44)
  %16 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %17 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %4, align 8
  %18 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.snd_sof_pcm* @snd_sof_find_spcm_name(%struct.snd_sof_dev* %16, i32 %21)
  store %struct.snd_sof_pcm* %22, %struct.snd_sof_pcm** %10, align 8
  %23 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %10, align 8
  %24 = icmp ne %struct.snd_sof_pcm* %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %2
  %26 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %27 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %4, align 8
  %30 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %120

37:                                               ; preds = %2
  %38 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %10, align 8
  %39 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %38, i32 0, i32 0
  %40 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %40, i64 %42
  store %struct.snd_pcm_hw_params* %43, %struct.snd_pcm_hw_params** %9, align 8
  %44 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %8, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 44, i32* %45, align 4
  %46 = load i32, i32* @SOF_IPC_GLB_STREAM_MSG, align 4
  %47 = load i32, i32* @SOF_IPC_STREAM_PCM_PARAMS, align 4
  %48 = or i32 %46, %47
  %49 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %8, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %4, align 8
  %52 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %8, i32 0, i32 2
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %8, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 7
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 32, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %8, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %9, align 8
  %62 = call i32 @params_width(%struct.snd_pcm_hw_params* %61)
  %63 = ashr i32 %62, 3
  %64 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %8, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @SOF_IPC_BUFFER_INTERLEAVED, align 4
  %67 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %8, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 4
  %69 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %9, align 8
  %70 = call i32 @params_rate(%struct.snd_pcm_hw_params* %69)
  %71 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %8, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %9, align 8
  %74 = call i32 @params_channels(%struct.snd_pcm_hw_params* %73)
  %75 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %8, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %9, align 8
  %78 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %77)
  %79 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %8, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %9, align 8
  %82 = call i32 @params_format(%struct.snd_pcm_hw_params* %81)
  switch i32 %82, label %95 [
    i32 130, label %83
    i32 129, label %87
    i32 128, label %91
  ]

83:                                               ; preds = %37
  %84 = load i32, i32* @SOF_IPC_FRAME_S16_LE, align 4
  %85 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %8, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  br label %98

87:                                               ; preds = %37
  %88 = load i32, i32* @SOF_IPC_FRAME_S24_4LE, align 4
  %89 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %8, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  br label %98

91:                                               ; preds = %37
  %92 = load i32, i32* @SOF_IPC_FRAME_S32_LE, align 4
  %93 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %8, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %98

95:                                               ; preds = %37
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %120

98:                                               ; preds = %91, %87, %83
  %99 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %100 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.sof_ipc_pcm_params, %struct.sof_ipc_pcm_params* %8, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @sof_ipc_tx_message(i32 %101, i32 %104, %struct.sof_ipc_pcm_params* %8, i32 44, %struct.sof_ipc_pcm_params_reply* %6, i32 4)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %98
  %109 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %110 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %4, align 8
  %113 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @dev_err(i32 %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %108, %98
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %95, %25
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @memset(%struct.sof_ipc_pcm_params*, i32, i32) #1

declare dso_local %struct.snd_sof_pcm* @snd_sof_find_spcm_name(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @sof_ipc_tx_message(i32, i32, %struct.sof_ipc_pcm_params*, i32, %struct.sof_ipc_pcm_params_reply*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
