; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_als300.c_snd_als300_playback_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_als300.c_snd_als300_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_als300_substream_data*, i32 }
%struct.snd_als300_substream_data = type { i32, i32 }
%struct.snd_als300 = type { %struct.snd_pcm_substream* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_als300_playback_hw = common dso_local global i32 0, align 4
@PLAYBACK_CONTROL = common dso_local global i32 0, align 4
@PLAYBACK_BLOCK_COUNTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_als300_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_als300_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_als300*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_als300_substream_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_als300* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_als300* %8, %struct.snd_als300** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.snd_als300_substream_data* @kzalloc(i32 8, i32 %12)
  store %struct.snd_als300_substream_data* %13, %struct.snd_als300_substream_data** %6, align 8
  %14 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %6, align 8
  %15 = icmp ne %struct.snd_als300_substream_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %35

19:                                               ; preds = %1
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %21 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %22 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %21, i32 0, i32 0
  store %struct.snd_pcm_substream* %20, %struct.snd_pcm_substream** %22, align 8
  %23 = load i32, i32* @snd_als300_playback_hw, align 4
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %6, align 8
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 0
  store %struct.snd_als300_substream_data* %26, %struct.snd_als300_substream_data** %28, align 8
  %29 = load i32, i32* @PLAYBACK_CONTROL, align 4
  %30 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %6, align 8
  %31 = getelementptr inbounds %struct.snd_als300_substream_data, %struct.snd_als300_substream_data* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @PLAYBACK_BLOCK_COUNTER, align 4
  %33 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %6, align 8
  %34 = getelementptr inbounds %struct.snd_als300_substream_data, %struct.snd_als300_substream_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %19, %16
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.snd_als300* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_als300_substream_data* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
