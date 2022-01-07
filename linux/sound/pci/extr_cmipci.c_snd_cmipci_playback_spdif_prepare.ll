; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_playback_spdif_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_playback_spdif_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.cmipci = type { i32, i32*, i64 }

@IEC958_AES0_NONAUDIO = common dso_local global i32 0, align 4
@CM_CH_PLAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cmipci_playback_spdif_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_playback_spdif_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.cmipci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.cmipci* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.cmipci* %8, %struct.cmipci** %4, align 8
  %9 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %10 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %15 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %6, align 4
  br label %20

19:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %19, %13
  %21 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @setup_spdif_playback(%struct.cmipci* %21, %struct.snd_pcm_substream* %22, i32 1, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %37

28:                                               ; preds = %20
  %29 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %30 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %31 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @CM_CH_PLAY, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %36 = call i32 @snd_cmipci_pcm_prepare(%struct.cmipci* %29, i32* %34, %struct.snd_pcm_substream* %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %28, %26
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.cmipci* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @setup_spdif_playback(%struct.cmipci*, %struct.snd_pcm_substream*, i32, i32) #1

declare dso_local i32 @snd_cmipci_pcm_prepare(%struct.cmipci*, i32*, %struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
