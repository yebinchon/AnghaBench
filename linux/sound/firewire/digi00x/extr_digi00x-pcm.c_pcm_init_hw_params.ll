; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-pcm.c_pcm_init_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-pcm.c_pcm_init_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dg00x = type { %struct.amdtp_stream, %struct.amdtp_stream }
%struct.amdtp_stream = type { i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_pcm_hardware }
%struct.snd_pcm_hardware = type { i32, i32, i32, i8* }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SNDRV_PCM_FMTBIT_S32 = common dso_local global i8* null, align 8
@SNDRV_PCM_RATE_44100 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_48000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_88200 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_96000 = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@hw_rule_channels = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@hw_rule_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dg00x*, %struct.snd_pcm_substream*)* @pcm_init_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_init_hw_params(%struct.snd_dg00x* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_dg00x*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_pcm_hardware*, align 8
  %8 = alloca %struct.amdtp_stream*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_dg00x* %0, %struct.snd_dg00x** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %6, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 0
  store %struct.snd_pcm_hardware* %14, %struct.snd_pcm_hardware** %7, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i8*, i8** @SNDRV_PCM_FMTBIT_S32, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 1
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %23, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %25, i32 0, i32 3
  store i8* %21, i8** %26, align 8
  %27 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %28 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %27, i32 0, i32 1
  store %struct.amdtp_stream* %28, %struct.amdtp_stream** %8, align 8
  br label %38

29:                                               ; preds = %2
  %30 = load i8*, i8** @SNDRV_PCM_FMTBIT_S32, align 8
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %31, i32 0, i32 1
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %32, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %34, i32 0, i32 3
  store i8* %30, i8** %35, align 8
  %36 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %37 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %36, i32 0, i32 0
  store %struct.amdtp_stream* %37, %struct.amdtp_stream** %8, align 8
  br label %38

38:                                               ; preds = %29, %20
  %39 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %7, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %39, i32 0, i32 0
  store i32 10, i32* %40, align 8
  %41 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %7, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %41, i32 0, i32 1
  store i32 18, i32* %42, align 4
  %43 = load i32, i32* @SNDRV_PCM_RATE_44100, align 4
  %44 = load i32, i32* @SNDRV_PCM_RATE_48000, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @SNDRV_PCM_RATE_88200, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SNDRV_PCM_RATE_96000, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %7, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %53 = call i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime* %52)
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %54, i32 0, i32 1
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %55, align 8
  %57 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %58 = load i32, i32* @hw_rule_channels, align 4
  %59 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %60 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %56, i32 0, i32 %57, i32 %58, i32* null, i32 %59, i32 -1)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %38
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %83

65:                                               ; preds = %38
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %66, i32 0, i32 1
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %67, align 8
  %69 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %70 = load i32, i32* @hw_rule_rate, align 4
  %71 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %72 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %68, i32 0, i32 %69, i32 %70, i32* null, i32 %71, i32 -1)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %83

77:                                               ; preds = %65
  %78 = load %struct.amdtp_stream*, %struct.amdtp_stream** %8, align 8
  %79 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %79, i32 0, i32 1
  %81 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %80, align 8
  %82 = call i32 @amdtp_dot_add_pcm_hw_constraints(%struct.amdtp_stream* %78, %struct.snd_pcm_runtime* %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %77, %75, %63
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @amdtp_dot_add_pcm_hw_constraints(%struct.amdtp_stream*, %struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
