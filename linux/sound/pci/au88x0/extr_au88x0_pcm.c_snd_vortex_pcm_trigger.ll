; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_pcm.c_snd_vortex_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_pcm.c_snd_vortex_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }

@VORTEX_PCM_WT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"wt start %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"wt stop %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_vortex_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vortex_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.TYPE_17__* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %7, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %109 [
    i32 129, label %24
    i32 128, label %52
    i32 131, label %77
    i32 130, label %93
  ]

24:                                               ; preds = %2
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @VORTEX_PCM_TYPE(i32 %29)
  %31 = load i32, i32* @VORTEX_PCM_WT, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @vortex_adbdma_resetup(%struct.TYPE_17__* %34, i32 %35)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @vortex_adbdma_startfifo(%struct.TYPE_17__* %37, i32 %38)
  br label %51

40:                                               ; preds = %24
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @dev_info(i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @vortex_wtdma_startfifo(%struct.TYPE_17__* %48, i32 %49)
  br label %51

51:                                               ; preds = %40, %33
  br label %115

52:                                               ; preds = %2
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @VORTEX_PCM_TYPE(i32 %57)
  %59 = load i32, i32* @VORTEX_PCM_WT, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @vortex_adbdma_stopfifo(%struct.TYPE_17__* %62, i32 %63)
  br label %76

65:                                               ; preds = %52
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @dev_info(i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @vortex_wtdma_stopfifo(%struct.TYPE_17__* %73, i32 %74)
  br label %76

76:                                               ; preds = %65, %61
  br label %115

77:                                               ; preds = %2
  %78 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @VORTEX_PCM_TYPE(i32 %80)
  %82 = load i32, i32* @VORTEX_PCM_WT, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @vortex_adbdma_pausefifo(%struct.TYPE_17__* %85, i32 %86)
  br label %92

88:                                               ; preds = %77
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @vortex_wtdma_pausefifo(%struct.TYPE_17__* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %84
  br label %115

93:                                               ; preds = %2
  %94 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %95 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @VORTEX_PCM_TYPE(i32 %96)
  %98 = load i32, i32* @VORTEX_PCM_WT, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @vortex_adbdma_resumefifo(%struct.TYPE_17__* %101, i32 %102)
  br label %108

104:                                              ; preds = %93
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @vortex_wtdma_resumefifo(%struct.TYPE_17__* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %100
  br label %115

109:                                              ; preds = %2
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %119

115:                                              ; preds = %108, %92, %76, %51
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock(i32* %117)
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %115, %109
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.TYPE_17__* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @VORTEX_PCM_TYPE(i32) #1

declare dso_local i32 @vortex_adbdma_resetup(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vortex_adbdma_startfifo(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @vortex_wtdma_startfifo(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vortex_adbdma_stopfifo(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vortex_wtdma_stopfifo(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vortex_adbdma_pausefifo(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vortex_wtdma_pausefifo(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vortex_adbdma_resumefifo(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vortex_wtdma_resumefifo(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
