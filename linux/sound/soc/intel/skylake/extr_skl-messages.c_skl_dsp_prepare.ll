; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_dsp_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_dsp_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_dma_buffer = type { i32 }
%struct.hdac_bus = type { i32 }
%struct.hdac_ext_stream = type { i32 }
%struct.hdac_stream = type { i32 }
%struct.snd_pcm_substream = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@HDAC_EXT_STREAM_TYPE_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, %struct.snd_dma_buffer*)* @skl_dsp_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_dsp_prepare(%struct.device* %0, i32 %1, i32 %2, %struct.snd_dma_buffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_dma_buffer*, align 8
  %10 = alloca %struct.hdac_bus*, align 8
  %11 = alloca %struct.hdac_ext_stream*, align 8
  %12 = alloca %struct.hdac_stream*, align 8
  %13 = alloca %struct.snd_pcm_substream, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.snd_dma_buffer* %3, %struct.snd_dma_buffer** %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.hdac_bus* @dev_get_drvdata(%struct.device* %15)
  store %struct.hdac_bus* %16, %struct.hdac_bus** %10, align 8
  %17 = load %struct.hdac_bus*, %struct.hdac_bus** %10, align 8
  %18 = icmp ne %struct.hdac_bus* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %56

22:                                               ; preds = %4
  %23 = call i32 @memset(%struct.snd_pcm_substream* %13, i32 0, i32 4)
  %24 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.hdac_bus*, %struct.hdac_bus** %10, align 8
  %27 = load i32, i32* @HDAC_EXT_STREAM_TYPE_HOST, align 4
  %28 = call %struct.hdac_ext_stream* @snd_hdac_ext_stream_assign(%struct.hdac_bus* %26, %struct.snd_pcm_substream* %13, i32 %27)
  store %struct.hdac_ext_stream* %28, %struct.hdac_ext_stream** %11, align 8
  %29 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %11, align 8
  %30 = icmp ne %struct.hdac_ext_stream* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %56

34:                                               ; preds = %22
  %35 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %11, align 8
  %36 = call %struct.hdac_stream* @hdac_stream(%struct.hdac_ext_stream* %35)
  store %struct.hdac_stream* %36, %struct.hdac_stream** %12, align 8
  %37 = load %struct.hdac_stream*, %struct.hdac_stream** %12, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %9, align 8
  %41 = call i32 @snd_hdac_dsp_prepare(%struct.hdac_stream* %37, i32 %38, i32 %39, %struct.snd_dma_buffer* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %5, align 4
  br label %56

46:                                               ; preds = %34
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.hdac_stream*, %struct.hdac_stream** %12, align 8
  %50 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @skl_dsp_setup_spib(%struct.device* %47, i32 %48, i32 %51, i32 1)
  %53 = load %struct.hdac_stream*, %struct.hdac_stream** %12, align 8
  %54 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %46, %44, %31, %19
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.hdac_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @memset(%struct.snd_pcm_substream*, i32, i32) #1

declare dso_local %struct.hdac_ext_stream* @snd_hdac_ext_stream_assign(%struct.hdac_bus*, %struct.snd_pcm_substream*, i32) #1

declare dso_local %struct.hdac_stream* @hdac_stream(%struct.hdac_ext_stream*) #1

declare dso_local i32 @snd_hdac_dsp_prepare(%struct.hdac_stream*, i32, i32, %struct.snd_dma_buffer*) #1

declare dso_local i32 @skl_dsp_setup_spib(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
