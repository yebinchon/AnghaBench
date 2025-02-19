; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_azf3328_codec_data*, i32 }
%struct.snd_azf3328_codec_data = type { %struct.snd_pcm_substream* }
%struct.snd_azf3328 = type { %struct.snd_azf3328_codec_data* }

@snd_azf3328_hardware = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@snd_azf3328_hw_constraints_rates = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_azf3328_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_azf3328_pcm_open(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_azf3328*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_azf3328_codec_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.snd_azf3328* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_azf3328* %9, %struct.snd_azf3328** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %6, align 8
  %13 = load %struct.snd_azf3328*, %struct.snd_azf3328** %5, align 8
  %14 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %13, i32 0, i32 0
  %15 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %15, i64 %17
  store %struct.snd_azf3328_codec_data* %18, %struct.snd_azf3328_codec_data** %7, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %20 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %7, align 8
  %21 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %20, i32 0, i32 0
  store %struct.snd_pcm_substream* %19, %struct.snd_pcm_substream** %21, align 8
  %22 = load i32, i32* @snd_azf3328_hardware, align 4
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %26 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %27 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %25, i32 0, i32 %26, i32* @snd_azf3328_hw_constraints_rates)
  %28 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %7, align 8
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 0
  store %struct.snd_azf3328_codec_data* %28, %struct.snd_azf3328_codec_data** %30, align 8
  ret i32 0
}

declare dso_local %struct.snd_azf3328* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
