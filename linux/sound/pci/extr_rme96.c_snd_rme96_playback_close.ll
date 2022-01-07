; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_playback_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_playback_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.rme96 = type { i32, %struct.TYPE_4__*, i32, i32, i64, i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RME96_STOP_PLAYBACK = common dso_local global i32 0, align 4
@RME96_WCR_ADAT = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme96_playback_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_playback_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.rme96*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.rme96* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.rme96* %6, %struct.rme96** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.rme96*, %struct.rme96** %3, align 8
  %8 = getelementptr inbounds %struct.rme96, %struct.rme96* %7, i32 0, i32 3
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.rme96*, %struct.rme96** %3, align 8
  %11 = call i64 @RME96_ISPLAYING(%struct.rme96* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.rme96*, %struct.rme96** %3, align 8
  %15 = load i32, i32* @RME96_STOP_PLAYBACK, align 4
  %16 = call i32 @snd_rme96_trigger(%struct.rme96* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.rme96*, %struct.rme96** %3, align 8
  %19 = getelementptr inbounds %struct.rme96, %struct.rme96* %18, i32 0, i32 5
  store i32* null, i32** %19, align 8
  %20 = load %struct.rme96*, %struct.rme96** %3, align 8
  %21 = getelementptr inbounds %struct.rme96, %struct.rme96* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.rme96*, %struct.rme96** %3, align 8
  %23 = getelementptr inbounds %struct.rme96, %struct.rme96* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RME96_WCR_ADAT, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load %struct.rme96*, %struct.rme96** %3, align 8
  %30 = getelementptr inbounds %struct.rme96, %struct.rme96* %29, i32 0, i32 3
  %31 = call i32 @spin_unlock_irq(i32* %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %17
  %35 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %36 = load %struct.rme96*, %struct.rme96** %3, align 8
  %37 = getelementptr inbounds %struct.rme96, %struct.rme96* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %35
  store i32 %44, i32* %42, align 4
  %45 = load %struct.rme96*, %struct.rme96** %3, align 8
  %46 = getelementptr inbounds %struct.rme96, %struct.rme96* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %49 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.rme96*, %struct.rme96** %3, align 8
  %52 = getelementptr inbounds %struct.rme96, %struct.rme96* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @snd_ctl_notify(i32 %47, i32 %50, i32* %54)
  br label %56

56:                                               ; preds = %34, %17
  ret i32 0
}

declare dso_local %struct.rme96* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @RME96_ISPLAYING(%struct.rme96*) #1

declare dso_local i32 @snd_rme96_trigger(%struct.rme96*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
