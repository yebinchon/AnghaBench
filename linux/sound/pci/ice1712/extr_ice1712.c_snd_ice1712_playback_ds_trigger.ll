; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_playback_ds_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_playback_ds_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_ice1712 = type { i32 }

@ICE1712_DSC_CONTROL = common dso_local global i32 0, align 4
@SNDRV_PCM_TRIGGER_START = common dso_local global i32 0, align 4
@SNDRV_PCM_TRIGGER_STOP = common dso_local global i32 0, align 4
@SNDRV_PCM_TRIGGER_PAUSE_PUSH = common dso_local global i32 0, align 4
@SNDRV_PCM_TRIGGER_PAUSE_RELEASE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_ice1712_playback_ds_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_playback_ds_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_ice1712* %9, %struct.snd_ice1712** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 2
  %18 = load i32, i32* @ICE1712_DSC_CONTROL, align 4
  %19 = call i32 @snd_ice1712_ds_read(%struct.snd_ice1712* %13, i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SNDRV_PCM_TRIGGER_START, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %53

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SNDRV_PCM_TRIGGER_STOP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, -2
  store i32 %32, i32* %7, align 4
  br label %52

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @SNDRV_PCM_TRIGGER_PAUSE_PUSH, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, 2
  store i32 %39, i32* %7, align 4
  br label %51

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SNDRV_PCM_TRIGGER_PAUSE_RELEASE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, -3
  store i32 %46, i32* %7, align 4
  br label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %37
  br label %52

52:                                               ; preds = %51, %30
  br label %53

53:                                               ; preds = %52, %23
  %54 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 2
  %59 = load i32, i32* @ICE1712_DSC_CONTROL, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @snd_ice1712_ds_write(%struct.snd_ice1712* %54, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %63 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_ice1712_ds_read(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @snd_ice1712_ds_write(%struct.snd_ice1712*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
