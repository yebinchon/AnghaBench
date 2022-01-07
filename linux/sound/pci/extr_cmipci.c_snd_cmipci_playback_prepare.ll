; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.cmipci = type { i32, i32*, i64 }

@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i64 0, align 8
@IEC958_AES0_NONAUDIO = common dso_local global i32 0, align 4
@CM_CH_PLAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cmipci_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.cmipci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.cmipci* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.cmipci* %10, %struct.cmipci** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 44100
  br i1 %17, label %18, label %36

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp sle i32 %19, 96000
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SNDRV_PCM_FORMAT_S16_LE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 2
  br label %36

36:                                               ; preds = %29, %21, %18, %1
  %37 = phi i1 [ false, %21 ], [ false, %18 ], [ false, %1 ], [ %35, %29 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %43 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %48 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %46, %41, %36
  %53 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @setup_spdif_playback(%struct.cmipci* %53, %struct.snd_pcm_substream* %54, i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %70

61:                                               ; preds = %52
  %62 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %63 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %64 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @CM_CH_PLAY, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %69 = call i32 @snd_cmipci_pcm_prepare(%struct.cmipci* %62, i32* %67, %struct.snd_pcm_substream* %68)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %61, %59
  %71 = load i32, i32* %2, align 4
  ret i32 %71
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
