; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_pcm.c_snd_vortex_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_pcm.c_snd_vortex_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime*, i32 }
%struct.snd_pcm_runtime = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 }

@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@VORTEX_PCM_WT = common dso_local global i64 0, align 8
@VORTEX_PCM_A3D = common dso_local global i64 0, align 8
@snd_vortex_playback_hw_a3d = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@VORTEX_PCM_SPDIF = common dso_local global i64 0, align 8
@snd_vortex_playback_hw_spdif = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@SNDRV_PCM_RATE_32000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_44100 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_48000 = common dso_local global i32 0, align 4
@VORTEX_PCM_ADB = common dso_local global i64 0, align 8
@VORTEX_PCM_I2S = common dso_local global i64 0, align 8
@snd_vortex_playback_hw_adb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@snd_vortex_playback_hw_wt = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@hw_constraints_au8830_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_vortex_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vortex_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.TYPE_8__* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %13 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %14 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %108

18:                                               ; preds = %1
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %20 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %21 = call i32 @snd_pcm_hw_constraint_pow2(%struct.snd_pcm_runtime* %19, i32 0, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %108

25:                                               ; preds = %18
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %27 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %28 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %26, i32 0, i32 %27, i32 64)
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @VORTEX_PCM_TYPE(i32 %31)
  %33 = load i64, i64* @VORTEX_PCM_WT, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %99

35:                                               ; preds = %25
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @VORTEX_PCM_TYPE(i32 %38)
  %40 = load i64, i64* @VORTEX_PCM_A3D, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 1
  %45 = bitcast %struct.TYPE_9__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 4 bitcast (%struct.TYPE_9__* @snd_vortex_playback_hw_a3d to i8*), i64 8, i1 false)
  br label %46

46:                                               ; preds = %42, %35
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @VORTEX_PCM_TYPE(i32 %49)
  %51 = load i64, i64* @VORTEX_PCM_SPDIF, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %46
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %54, i32 0, i32 1
  %56 = bitcast %struct.TYPE_9__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 4 bitcast (%struct.TYPE_9__* @snd_vortex_playback_hw_spdif to i8*), i64 8, i1 false)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %75 [
    i32 32000, label %60
    i32 44100, label %65
    i32 48000, label %70
  ]

60:                                               ; preds = %53
  %61 = load i32, i32* @SNDRV_PCM_RATE_32000, align 4
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  br label %75

65:                                               ; preds = %53
  %66 = load i32, i32* @SNDRV_PCM_RATE_44100, align 4
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  br label %75

70:                                               ; preds = %53
  %71 = load i32, i32* @SNDRV_PCM_RATE_48000, align 4
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  br label %75

75:                                               ; preds = %53, %70, %65, %60
  br label %76

76:                                               ; preds = %75, %46
  %77 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @VORTEX_PCM_TYPE(i32 %79)
  %81 = load i64, i64* @VORTEX_PCM_ADB, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @VORTEX_PCM_TYPE(i32 %86)
  %88 = load i64, i64* @VORTEX_PCM_I2S, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %83, %76
  %91 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %92 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %91, i32 0, i32 1
  %93 = bitcast %struct.TYPE_9__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 4 bitcast (%struct.TYPE_9__* @snd_vortex_playback_hw_adb to i8*), i64 8, i1 false)
  br label %94

94:                                               ; preds = %90, %83
  %95 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %96 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %95, i32 0, i32 1
  %97 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %96, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  br label %107

99:                                               ; preds = %25
  %100 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %100, i32 0, i32 1
  %102 = bitcast %struct.TYPE_9__* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 4 bitcast (%struct.TYPE_9__* @snd_vortex_playback_hw_wt to i8*), i64 8, i1 false)
  %103 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %104 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %103, i32 0, i32 1
  %105 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %104, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %105, i32 0, i32 0
  store i32* null, i32** %106, align 8
  br label %107

107:                                              ; preds = %99, %94
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %23, %16
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.TYPE_8__* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_pow2(%struct.snd_pcm_runtime*, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i64 @VORTEX_PCM_TYPE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
