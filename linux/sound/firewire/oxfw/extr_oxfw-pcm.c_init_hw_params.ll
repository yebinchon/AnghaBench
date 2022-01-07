; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-pcm.c_init_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-pcm.c_init_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_oxfw = type { i32**, %struct.amdtp_stream, i32**, %struct.amdtp_stream }
%struct.amdtp_stream = type { i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@AM824_IN_PCM_FORMAT_BITS = common dso_local global i32 0, align 4
@AM824_OUT_PCM_FORMAT_BITS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@hw_rule_channels = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@hw_rule_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_oxfw*, %struct.snd_pcm_substream*)* @init_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hw_params(%struct.snd_oxfw* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.snd_oxfw*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.amdtp_stream*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_oxfw* %0, %struct.snd_oxfw** %3, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load i32, i32* @AM824_IN_PCM_FORMAT_BITS, align 4
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %23 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %22, i32 0, i32 3
  store %struct.amdtp_stream* %23, %struct.amdtp_stream** %7, align 8
  %24 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %25 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %24, i32 0, i32 2
  %26 = load i32**, i32*** %25, align 8
  store i32** %26, i32*** %6, align 8
  br label %37

27:                                               ; preds = %2
  %28 = load i32, i32* @AM824_OUT_PCM_FORMAT_BITS, align 4
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %33 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %32, i32 0, i32 1
  store %struct.amdtp_stream* %33, %struct.amdtp_stream** %7, align 8
  %34 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %35 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  store i32** %36, i32*** %6, align 8
  br label %37

37:                                               ; preds = %27, %17
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = load i32**, i32*** %6, align 8
  %41 = call i32 @limit_channels_and_rates(%struct.TYPE_2__* %39, i32** %40)
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %43 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %44 = load i32, i32* @hw_rule_channels, align 4
  %45 = load i32**, i32*** %6, align 8
  %46 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %47 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %42, i32 0, i32 %43, i32 %44, i32** %45, i32 %46, i32 -1)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %65

51:                                               ; preds = %37
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %53 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %54 = load i32, i32* @hw_rule_rate, align 4
  %55 = load i32**, i32*** %6, align 8
  %56 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %57 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %52, i32 0, i32 %53, i32 %54, i32** %55, i32 %56, i32 -1)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %65

61:                                               ; preds = %51
  %62 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %64 = call i32 @amdtp_am824_add_pcm_hw_constraints(%struct.amdtp_stream* %62, %struct.snd_pcm_runtime* %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %61, %60, %50
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32 @limit_channels_and_rates(%struct.TYPE_2__*, i32**) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, i32**, i32, i32) #1

declare dso_local i32 @amdtp_am824_add_pcm_hw_constraints(%struct.amdtp_stream*, %struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
