; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_create_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_create_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.hdspm = type { i32, %struct.snd_pcm* }
%struct.snd_pcm = type { i32, i32, %struct.hdspm* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_hdspm_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_JOINT_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.hdspm*)* @snd_hdspm_create_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_create_pcm(%struct.snd_card* %0, %struct.hdspm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.hdspm*, align 8
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.hdspm* %1, %struct.hdspm** %5, align 8
  %8 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %9 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %10 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @snd_pcm_new(%struct.snd_card* %8, i32 %11, i32 0, i32 1, i32 1, %struct.snd_pcm** %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %47

17:                                               ; preds = %2
  %18 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %19 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %20 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %19, i32 0, i32 1
  store %struct.snd_pcm* %18, %struct.snd_pcm** %20, align 8
  %21 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %23 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %22, i32 0, i32 2
  store %struct.hdspm* %21, %struct.hdspm** %23, align 8
  %24 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %25 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %28 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @strcpy(i32 %26, i32 %29)
  %31 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %32 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %33 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %31, i32 %32, i32* @snd_hdspm_ops)
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %35 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %36 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %34, i32 %35, i32* @snd_hdspm_ops)
  %37 = load i32, i32* @SNDRV_PCM_INFO_JOINT_DUPLEX, align 4
  %38 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %39 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %41 = call i32 @snd_hdspm_preallocate_memory(%struct.hdspm* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %17
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %44, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i32, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_hdspm_preallocate_memory(%struct.hdspm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
