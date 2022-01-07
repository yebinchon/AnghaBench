; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_dsp_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_dsp_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_dma_buffer = type { i32 }
%struct.hdac_bus = type { i32 }
%struct.hdac_stream = type { i32 }
%struct.hdac_ext_stream = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HDAC_EXT_STREAM_TYPE_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.snd_dma_buffer*, i32)* @skl_dsp_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_dsp_cleanup(%struct.device* %0, %struct.snd_dma_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.snd_dma_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hdac_bus*, align 8
  %9 = alloca %struct.hdac_stream*, align 8
  %10 = alloca %struct.hdac_ext_stream*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.snd_dma_buffer* %1, %struct.snd_dma_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.hdac_bus* @dev_get_drvdata(%struct.device* %11)
  store %struct.hdac_bus* %12, %struct.hdac_bus** %8, align 8
  %13 = load %struct.hdac_bus*, %struct.hdac_bus** %8, align 8
  %14 = icmp ne %struct.hdac_bus* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load %struct.hdac_bus*, %struct.hdac_bus** %8, align 8
  %20 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.hdac_stream* @snd_hdac_get_stream(%struct.hdac_bus* %19, i32 %20, i32 %21)
  store %struct.hdac_stream* %22, %struct.hdac_stream** %9, align 8
  %23 = load %struct.hdac_stream*, %struct.hdac_stream** %9, align 8
  %24 = icmp ne %struct.hdac_stream* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %40

28:                                               ; preds = %18
  %29 = load %struct.hdac_stream*, %struct.hdac_stream** %9, align 8
  %30 = call %struct.hdac_ext_stream* @stream_to_hdac_ext_stream(%struct.hdac_stream* %29)
  store %struct.hdac_ext_stream* %30, %struct.hdac_ext_stream** %10, align 8
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @skl_dsp_setup_spib(%struct.device* %31, i32 0, i32 %32, i32 0)
  %34 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %10, align 8
  %35 = load i32, i32* @HDAC_EXT_STREAM_TYPE_HOST, align 4
  %36 = call i32 @snd_hdac_ext_stream_release(%struct.hdac_ext_stream* %34, i32 %35)
  %37 = load %struct.hdac_stream*, %struct.hdac_stream** %9, align 8
  %38 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %39 = call i32 @snd_hdac_dsp_cleanup(%struct.hdac_stream* %37, %struct.snd_dma_buffer* %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %28, %25, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.hdac_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.hdac_stream* @snd_hdac_get_stream(%struct.hdac_bus*, i32, i32) #1

declare dso_local %struct.hdac_ext_stream* @stream_to_hdac_ext_stream(%struct.hdac_stream*) #1

declare dso_local i32 @skl_dsp_setup_spib(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @snd_hdac_ext_stream_release(%struct.hdac_ext_stream*, i32) #1

declare dso_local i32 @snd_hdac_dsp_cleanup(%struct.hdac_stream*, %struct.snd_dma_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
