; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_keyword_dapm_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_keyword_dapm_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.snd_sof_widget* }
%struct.snd_sof_widget = type { %struct.TYPE_4__*, %struct.snd_sof_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_sof_dev = type { i32 }
%struct.snd_kcontrol = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"received event %d for widget %s\0A\00", align 1
@SOF_IPC_STREAM_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"error: failed to set pcm params for widget %s\0A\00", align 1
@SOF_IPC_STREAM_TRIG_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"error: failed to trigger widget %s\0A\00", align 1
@SOF_IPC_STREAM_TRIG_STOP = common dso_local global i32 0, align 4
@SOF_IPC_STREAM_PCM_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @sof_keyword_dapm_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_keyword_dapm_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_sof_widget*, align 8
  %9 = alloca %struct.snd_sof_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %13, align 8
  store %struct.snd_sof_widget* %14, %struct.snd_sof_widget** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %8, align 8
  %16 = icmp ne %struct.snd_sof_widget* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

18:                                               ; preds = %3
  %19 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %8, align 8
  %20 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %19, i32 0, i32 1
  %21 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %20, align 8
  store %struct.snd_sof_dev* %21, %struct.snd_sof_dev** %9, align 8
  %22 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %9, align 8
  %23 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %97 [
    i32 128, label %31
    i32 129, label %64
  ]

31:                                               ; preds = %18
  %32 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %8, align 8
  %33 = load i32, i32* @SOF_IPC_STREAM_CAPTURE, align 4
  %34 = call i32 @ipc_pcm_params(%struct.snd_sof_widget* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %9, align 8
  %39 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %8, align 8
  %42 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %98

47:                                               ; preds = %31
  %48 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %8, align 8
  %49 = load i32, i32* @SOF_IPC_STREAM_TRIG_START, align 4
  %50 = call i32 @ipc_trigger(%struct.snd_sof_widget* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %9, align 8
  %55 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %8, align 8
  %58 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %53, %47
  br label %98

64:                                               ; preds = %18
  %65 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %8, align 8
  %66 = load i32, i32* @SOF_IPC_STREAM_TRIG_STOP, align 4
  %67 = call i32 @ipc_trigger(%struct.snd_sof_widget* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %9, align 8
  %72 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %8, align 8
  %75 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %70, %64
  %81 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %8, align 8
  %82 = load i32, i32* @SOF_IPC_STREAM_PCM_FREE, align 4
  %83 = call i32 @ipc_trigger(%struct.snd_sof_widget* %81, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %80
  %87 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %9, align 8
  %88 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %8, align 8
  %91 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %86, %80
  br label %98

97:                                               ; preds = %18
  br label %98

98:                                               ; preds = %97, %96, %63, %37
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %17
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @ipc_pcm_params(%struct.snd_sof_widget*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ipc_trigger(%struct.snd_sof_widget*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
