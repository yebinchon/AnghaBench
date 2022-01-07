; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_playback2_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_playback2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.cmipci = type { i32, i32, i32, i64, i32* }

@CM_OPEN_PLAYBACK2 = common dso_local global i32 0, align 4
@snd_cmipci_playback2 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CM_CH_PLAY = common dso_local global i64 0, align 8
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@hw_constraints_channels_4 = common dso_local global i32 0, align 4
@hw_constraints_channels_6 = common dso_local global i32 0, align 4
@hw_constraints_channels_8 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_88200 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_96000 = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@hw_constraints_rates = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_KNOT = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cmipci_playback2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_playback2_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.cmipci*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.cmipci* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.cmipci* %8, %struct.cmipci** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %13 = load i32, i32* @CM_OPEN_PLAYBACK2, align 4
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = call i32 @open_device_check(%struct.cmipci* %12, i32 %13, %struct.snd_pcm_substream* %14)
  store i32 %15, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %123

19:                                               ; preds = %1
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 0
  %22 = bitcast %struct.TYPE_2__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.TYPE_2__* @snd_cmipci_playback2 to i8*), i64 12, i1 false)
  %23 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %24 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %27 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @CM_CH_PLAY, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %75, label %33

33:                                               ; preds = %19
  %34 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %35 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %33
  %39 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %40 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %46 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %51 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %52 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %50, i32 0, i32 %51, i32* @hw_constraints_channels_4)
  br label %73

53:                                               ; preds = %38
  %54 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %55 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 6
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %60 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %61 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %59, i32 0, i32 %60, i32* @hw_constraints_channels_6)
  br label %72

62:                                               ; preds = %53
  %63 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %64 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 8
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %69 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %70 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %68, i32 0, i32 %69, i32* @hw_constraints_channels_8)
  br label %71

71:                                               ; preds = %67, %62
  br label %72

72:                                               ; preds = %71, %58
  br label %73

73:                                               ; preds = %72, %49
  br label %74

74:                                               ; preds = %73, %33
  br label %75

75:                                               ; preds = %74, %19
  %76 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %77 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %76, i32 0, i32 2
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %80 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 68
  br i1 %82, label %83, label %95

83:                                               ; preds = %75
  %84 = load i32, i32* @SNDRV_PCM_RATE_88200, align 4
  %85 = load i32, i32* @SNDRV_PCM_RATE_96000, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 4
  %92 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i32 96000, i32* %94, align 4
  br label %119

95:                                               ; preds = %75
  %96 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %97 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 55
  br i1 %99, label %100, label %118

100:                                              ; preds = %95
  %101 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %102 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %103 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %101, i32 0, i32 %102, i32* @hw_constraints_rates)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %123

108:                                              ; preds = %100
  %109 = load i32, i32* @SNDRV_PCM_RATE_KNOT, align 4
  %110 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %111 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %109
  store i32 %114, i32* %112, align 4
  %115 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %116 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  store i32 128000, i32* %117, align 4
  br label %118

118:                                              ; preds = %108, %95
  br label %119

119:                                              ; preds = %118, %83
  %120 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %121 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %122 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %120, i32 %121, i32 0, i32 65536)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %119, %106, %17
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.cmipci* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @open_device_check(%struct.cmipci*, i32, %struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
