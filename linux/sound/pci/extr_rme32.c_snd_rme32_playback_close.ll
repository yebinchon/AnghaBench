; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_playback_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_playback_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.rme32 = type { i32, %struct.TYPE_4__*, i32, i32, i64, i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RME32_WCR_ADAT = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme32_playback_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme32_playback_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.rme32*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.rme32* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.rme32* %6, %struct.rme32** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.rme32*, %struct.rme32** %3, align 8
  %8 = getelementptr inbounds %struct.rme32, %struct.rme32* %7, i32 0, i32 3
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.rme32*, %struct.rme32** %3, align 8
  %11 = getelementptr inbounds %struct.rme32, %struct.rme32* %10, i32 0, i32 5
  store i32* null, i32** %11, align 8
  %12 = load %struct.rme32*, %struct.rme32** %3, align 8
  %13 = getelementptr inbounds %struct.rme32, %struct.rme32* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.rme32*, %struct.rme32** %3, align 8
  %15 = getelementptr inbounds %struct.rme32, %struct.rme32* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @RME32_WCR_ADAT, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load %struct.rme32*, %struct.rme32** %3, align 8
  %22 = getelementptr inbounds %struct.rme32, %struct.rme32* %21, i32 0, i32 3
  %23 = call i32 @spin_unlock_irq(i32* %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %1
  %27 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %28 = load %struct.rme32*, %struct.rme32** %3, align 8
  %29 = getelementptr inbounds %struct.rme32, %struct.rme32* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %27
  store i32 %36, i32* %34, align 4
  %37 = load %struct.rme32*, %struct.rme32** %3, align 8
  %38 = getelementptr inbounds %struct.rme32, %struct.rme32* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %41 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.rme32*, %struct.rme32** %3, align 8
  %44 = getelementptr inbounds %struct.rme32, %struct.rme32* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @snd_ctl_notify(i32 %39, i32 %42, i32* %46)
  br label %48

48:                                               ; preds = %26, %1
  ret i32 0
}

declare dso_local %struct.rme32* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
