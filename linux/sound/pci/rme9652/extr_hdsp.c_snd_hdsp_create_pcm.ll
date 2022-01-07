; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_create_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_create_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.hdsp = type { i32, %struct.snd_pcm* }
%struct.snd_pcm = type { i32, i32, %struct.hdsp* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_hdsp_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_hdsp_capture_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_JOINT_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.hdsp*)* @snd_hdsp_create_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_create_pcm(%struct.snd_card* %0, %struct.hdsp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.hdsp*, align 8
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.hdsp* %1, %struct.hdsp** %5, align 8
  %8 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %9 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %10 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @snd_pcm_new(%struct.snd_card* %8, i32 %11, i32 0, i32 1, i32 1, %struct.snd_pcm** %6)
  store i32 %12, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %18 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %19 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %18, i32 0, i32 1
  store %struct.snd_pcm* %17, %struct.snd_pcm** %19, align 8
  %20 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %21 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %22 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %21, i32 0, i32 2
  store %struct.hdsp* %20, %struct.hdsp** %22, align 8
  %23 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %24 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %27 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strcpy(i32 %25, i32 %28)
  %30 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %31 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %32 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %30, i32 %31, i32* @snd_hdsp_playback_ops)
  %33 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %34 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %35 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %33, i32 %34, i32* @snd_hdsp_capture_ops)
  %36 = load i32, i32* @SNDRV_PCM_INFO_JOINT_DUPLEX, align 4
  %37 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %38 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %16, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i32, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
