; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-pcm.c_mmp_pcm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-pcm.c_mmp_pcm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mmp_audio_platdata* }
%struct.mmp_audio_platdata = type { i32, i32, i32, i32 }

@mmp_pcm_hardware = common dso_local global %struct.TYPE_3__* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@mmp_soc_component = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mmp_pcm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_pcm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mmp_audio_platdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.mmp_audio_platdata*, %struct.mmp_audio_platdata** %6, align 8
  store %struct.mmp_audio_platdata* %7, %struct.mmp_audio_platdata** %3, align 8
  %8 = load %struct.mmp_audio_platdata*, %struct.mmp_audio_platdata** %3, align 8
  %9 = icmp ne %struct.mmp_audio_platdata* %8, null
  br i1 %9, label %10, label %39

10:                                               ; preds = %1
  %11 = load %struct.mmp_audio_platdata*, %struct.mmp_audio_platdata** %3, align 8
  %12 = getelementptr inbounds %struct.mmp_audio_platdata, %struct.mmp_audio_platdata* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmp_pcm_hardware, align 8
  %15 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %13, i32* %17, align 4
  %18 = load %struct.mmp_audio_platdata*, %struct.mmp_audio_platdata** %3, align 8
  %19 = getelementptr inbounds %struct.mmp_audio_platdata, %struct.mmp_audio_platdata* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmp_pcm_hardware, align 8
  %22 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.mmp_audio_platdata*, %struct.mmp_audio_platdata** %3, align 8
  %26 = getelementptr inbounds %struct.mmp_audio_platdata, %struct.mmp_audio_platdata* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmp_pcm_hardware, align 8
  %29 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  %32 = load %struct.mmp_audio_platdata*, %struct.mmp_audio_platdata** %3, align 8
  %33 = getelementptr inbounds %struct.mmp_audio_platdata, %struct.mmp_audio_platdata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmp_pcm_hardware, align 8
  %36 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %10, %1
  %40 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @devm_snd_soc_register_component(%struct.TYPE_4__* %41, i32* @mmp_soc_component, i32* null, i32 0)
  ret i32 %42
}

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_4__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
