; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_pcm.c_sof_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_pcm.c_sof_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.snd_soc_component = type { i32 }
%struct.snd_sof_dev = type { i32, i32 }
%struct.snd_sof_pcm = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sof_ipc_stream = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.sof_ipc_reply = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"pcm: trigger stream %d dir %d cmd %d\0A\00", align 1
@SOF_IPC_GLB_STREAM_MSG = common dso_local global i32 0, align 4
@SOF_IPC_STREAM_TRIG_PAUSE = common dso_local global i32 0, align 4
@SOF_IPC_STREAM_TRIG_RELEASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"error: failed to set up hw_params upon resume\0A\00", align 1
@SOF_IPC_STREAM_TRIG_START = common dso_local global i32 0, align 4
@SOF_IPC_STREAM_TRIG_STOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"error: unhandled trigger cmd %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @sof_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.snd_sof_dev*, align 8
  %9 = alloca %struct.snd_sof_pcm*, align 8
  %10 = alloca %struct.sof_ipc_stream, align 4
  %11 = alloca %struct.sof_ipc_reply, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 1
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %16, align 8
  store %struct.snd_soc_pcm_runtime* %17, %struct.snd_soc_pcm_runtime** %6, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %19 = load i32, i32* @DRV_NAME, align 4
  %20 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %18, i32 %19)
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %7, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %22 = call %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.snd_sof_dev* %22, %struct.snd_sof_dev** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %24 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %148

30:                                               ; preds = %2
  %31 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %32 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %33 = call %struct.snd_sof_pcm* @snd_sof_find_spcm_dai(%struct.snd_sof_dev* %31, %struct.snd_soc_pcm_runtime* %32)
  store %struct.snd_sof_pcm* %33, %struct.snd_sof_pcm** %9, align 8
  %34 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %9, align 8
  %35 = icmp ne %struct.snd_sof_pcm* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %148

39:                                               ; preds = %30
  %40 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %41 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %9, align 8
  %44 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %46, i64 %49, i32 %50)
  %52 = getelementptr inbounds %struct.sof_ipc_stream, %struct.sof_ipc_stream* %10, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 12, i32* %53, align 4
  %54 = load i32, i32* @SOF_IPC_GLB_STREAM_MSG, align 4
  %55 = getelementptr inbounds %struct.sof_ipc_stream, %struct.sof_ipc_stream* %10, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %9, align 8
  %58 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.sof_ipc_stream, %struct.sof_ipc_stream* %10, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %5, align 4
  switch i32 %67, label %104 [
    i32 133, label %68
    i32 132, label %74
    i32 131, label %80
    i32 130, label %92
    i32 128, label %98
    i32 129, label %98
  ]

68:                                               ; preds = %39
  %69 = load i32, i32* @SOF_IPC_STREAM_TRIG_PAUSE, align 4
  %70 = getelementptr inbounds %struct.sof_ipc_stream, %struct.sof_ipc_stream* %10, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  store i32 1, i32* %13, align 4
  br label %112

74:                                               ; preds = %39
  %75 = load i32, i32* @SOF_IPC_STREAM_TRIG_RELEASE, align 4
  %76 = getelementptr inbounds %struct.sof_ipc_stream, %struct.sof_ipc_stream* %10, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %112

80:                                               ; preds = %39
  %81 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %82 = call i32 @sof_pcm_prepare(%struct.snd_pcm_substream* %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %87 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, ...) @dev_err(i32 %88, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %3, align 4
  br label %148

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %39, %91
  %93 = load i32, i32* @SOF_IPC_STREAM_TRIG_START, align 4
  %94 = getelementptr inbounds %struct.sof_ipc_stream, %struct.sof_ipc_stream* %10, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %112

98:                                               ; preds = %39, %39
  %99 = load i32, i32* @SOF_IPC_STREAM_TRIG_STOP, align 4
  %100 = getelementptr inbounds %struct.sof_ipc_stream, %struct.sof_ipc_stream* %10, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %112

104:                                              ; preds = %39
  %105 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %106 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 (i32, i8*, ...) @dev_err(i32 %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %148

112:                                              ; preds = %98, %92, %74, %68
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %112
  %116 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %117 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @snd_sof_pcm_platform_trigger(%struct.snd_sof_dev* %116, %struct.snd_pcm_substream* %117, i32 %118)
  br label %120

120:                                              ; preds = %115, %112
  %121 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %122 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.sof_ipc_stream, %struct.sof_ipc_stream* %10, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @sof_ipc_tx_message(i32 %123, i32 %126, %struct.sof_ipc_stream* %10, i32 12, %struct.sof_ipc_reply* %11, i32 4)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %120
  %131 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %132 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @snd_sof_pcm_platform_trigger(%struct.snd_sof_dev* %131, %struct.snd_pcm_substream* %132, i32 %133)
  br label %135

135:                                              ; preds = %130, %120
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %143 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %144 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %9, align 8
  %145 = call i32 @sof_pcm_dsp_pcm_free(%struct.snd_pcm_substream* %142, %struct.snd_sof_dev* %143, %struct.snd_sof_pcm* %144)
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %141, %138, %135
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %146, %104, %85, %36, %29
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_sof_pcm* @snd_sof_find_spcm_dai(%struct.snd_sof_dev*, %struct.snd_soc_pcm_runtime*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @sof_pcm_prepare(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_sof_pcm_platform_trigger(%struct.snd_sof_dev*, %struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @sof_ipc_tx_message(i32, i32, %struct.sof_ipc_stream*, i32, %struct.sof_ipc_reply*, i32) #1

declare dso_local i32 @sof_pcm_dsp_pcm_free(%struct.snd_pcm_substream*, %struct.snd_sof_dev*, %struct.snd_sof_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
