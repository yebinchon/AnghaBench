; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_pcm.c_pcm_init_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_pcm.c_pcm_init_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_efw = type { i32*, i32*, i32, %struct.amdtp_stream, %struct.amdtp_stream }
%struct.amdtp_stream = type { i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@AM824_IN_PCM_FORMAT_BITS = common dso_local global i32 0, align 4
@AM824_OUT_PCM_FORMAT_BITS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@hw_rule_channels = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@hw_rule_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_efw*, %struct.snd_pcm_substream*)* @pcm_init_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_init_hw_params(%struct.snd_efw* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.snd_efw*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.amdtp_stream*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_efw* %0, %struct.snd_efw** %3, align 8
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
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %23 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %22, i32 0, i32 4
  store %struct.amdtp_stream* %23, %struct.amdtp_stream** %6, align 8
  %24 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %25 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %7, align 8
  br label %37

27:                                               ; preds = %2
  %28 = load i32, i32* @AM824_OUT_PCM_FORMAT_BITS, align 4
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %33 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %32, i32 0, i32 3
  store %struct.amdtp_stream* %33, %struct.amdtp_stream** %6, align 8
  %34 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %35 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %7, align 8
  br label %37

37:                                               ; preds = %27, %17
  %38 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %39 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %45 = call i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime* %44)
  %46 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %46, i32 0, i32 0
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @limit_channels(%struct.TYPE_2__* %47, i32* %48)
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %51 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %52 = load i32, i32* @hw_rule_channels, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %55 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %50, i32 0, i32 %51, i32 %52, i32* %53, i32 %54, i32 -1)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %37
  br label %73

59:                                               ; preds = %37
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %61 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %62 = load i32, i32* @hw_rule_rate, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %65 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %60, i32 0, i32 %61, i32 %62, i32* %63, i32 %64, i32 -1)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %73

69:                                               ; preds = %59
  %70 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %72 = call i32 @amdtp_am824_add_pcm_hw_constraints(%struct.amdtp_stream* %70, %struct.snd_pcm_runtime* %71)
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %69, %68, %58
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @limit_channels(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @amdtp_am824_add_pcm_hw_constraints(%struct.amdtp_stream*, %struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
