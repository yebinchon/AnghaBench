; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-pcm.c_init_hw_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-pcm.c_init_hw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { %struct.snd_motu_packet_format, %struct.amdtp_stream, %struct.snd_motu_packet_format, %struct.amdtp_stream }
%struct.snd_motu_packet_format = type { i32 }
%struct.amdtp_stream = type { i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_pcm_hardware }
%struct.snd_pcm_hardware = type { i8* }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SNDRV_PCM_FMTBIT_S32 = common dso_local global i8* null, align 8
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@motu_rate_constraint = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@motu_channels_constraint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_motu*, %struct.snd_pcm_substream*)* @init_hw_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hw_info(%struct.snd_motu* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_motu*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_pcm_hardware*, align 8
  %8 = alloca %struct.amdtp_stream*, align 8
  %9 = alloca %struct.snd_motu_packet_format*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %6, align 8
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 0
  store %struct.snd_pcm_hardware* %15, %struct.snd_pcm_hardware** %7, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load i8*, i8** @SNDRV_PCM_FMTBIT_S32, align 8
  %23 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %7, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %26 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %25, i32 0, i32 3
  store %struct.amdtp_stream* %26, %struct.amdtp_stream** %8, align 8
  %27 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %28 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %27, i32 0, i32 2
  store %struct.snd_motu_packet_format* %28, %struct.snd_motu_packet_format** %9, align 8
  br label %37

29:                                               ; preds = %2
  %30 = load i8*, i8** @SNDRV_PCM_FMTBIT_S32, align 8
  %31 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %7, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %34 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %33, i32 0, i32 1
  store %struct.amdtp_stream* %34, %struct.amdtp_stream** %8, align 8
  %35 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %36 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %35, i32 0, i32 0
  store %struct.snd_motu_packet_format* %36, %struct.snd_motu_packet_format** %9, align 8
  br label %37

37:                                               ; preds = %29, %21
  %38 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %40 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %9, align 8
  %41 = call i32 @limit_channels_and_rates(%struct.snd_motu* %38, %struct.snd_pcm_runtime* %39, %struct.snd_motu_packet_format* %40)
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %43 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %44 = load i32, i32* @motu_rate_constraint, align 4
  %45 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %9, align 8
  %46 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %47 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %42, i32 0, i32 %43, i32 %44, %struct.snd_motu_packet_format* %45, i32 %46, i32 -1)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %67

52:                                               ; preds = %37
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %54 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %55 = load i32, i32* @motu_channels_constraint, align 4
  %56 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %9, align 8
  %57 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %58 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %53, i32 0, i32 %54, i32 %55, %struct.snd_motu_packet_format* %56, i32 %57, i32 -1)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; preds = %52
  %64 = load %struct.amdtp_stream*, %struct.amdtp_stream** %8, align 8
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %66 = call i32 @amdtp_motu_add_pcm_hw_constraints(%struct.amdtp_stream* %64, %struct.snd_pcm_runtime* %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %61, %50
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @limit_channels_and_rates(%struct.snd_motu*, %struct.snd_pcm_runtime*, %struct.snd_motu_packet_format*) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, %struct.snd_motu_packet_format*, i32, i32) #1

declare dso_local i32 @amdtp_motu_add_pcm_hw_constraints(%struct.amdtp_stream*, %struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
