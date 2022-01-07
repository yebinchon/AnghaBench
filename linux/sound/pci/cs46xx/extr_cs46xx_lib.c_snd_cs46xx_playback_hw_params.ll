; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_playback_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_playback_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32*, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64, i32*, %struct.snd_cs46xx_pcm* }
%struct.snd_cs46xx_pcm = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, i64, i64 }
%struct.snd_pcm_hw_params = type { i32 }

@CS46XX_FRAGS = common dso_local global i64 0, align 8
@snd_cs46xx_playback_ops = common dso_local global i32 0, align 4
@snd_cs46xx_playback_indirect_ops = common dso_local global i32 0, align 4
@DSP_IEC958_CHANNEL = common dso_local global i64 0, align 8
@DSP_PCM_CENTER_LFE_CHANNEL = common dso_local global i64 0, align 8
@DSP_PCM_MAIN_CHANNEL = common dso_local global i64 0, align 8
@DSP_PCM_REAR_CHANNEL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@snd_cs46xx_playback_clfe_ops = common dso_local global i32 0, align 4
@snd_cs46xx_playback_iec958_ops = common dso_local global i32 0, align 4
@snd_cs46xx_playback_indirect_clfe_ops = common dso_local global i32 0, align 4
@snd_cs46xx_playback_indirect_iec958_ops = common dso_local global i32 0, align 4
@snd_cs46xx_playback_indirect_rear_ops = common dso_local global i32 0, align 4
@snd_cs46xx_playback_rear_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_cs46xx_playback_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs46xx_playback_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_cs46xx_pcm*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %6, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 3
  %14 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %13, align 8
  store %struct.snd_cs46xx_pcm* %14, %struct.snd_cs46xx_pcm** %7, align 8
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %16 = call i64 @params_periods(%struct.snd_pcm_hw_params* %15)
  %17 = load i64, i64* @CS46XX_FRAGS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %2
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %24 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %22, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %30 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %29)
  br label %31

31:                                               ; preds = %28, %19
  %32 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %33 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %39 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %45 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %50, i32 0, i32 0
  store i32* @snd_cs46xx_playback_ops, i32** %51, align 8
  br label %79

52:                                               ; preds = %2
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %57 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %55, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %62, i32 0, i32 2
  store i32* null, i32** %63, align 8
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %61, %52
  %69 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %70 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %71 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %70)
  %72 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %69, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %80

76:                                               ; preds = %68
  %77 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %77, i32 0, i32 0
  store i32* @snd_cs46xx_playback_indirect_ops, i32** %78, align 8
  br label %79

79:                                               ; preds = %76, %31
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %74
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @params_periods(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
