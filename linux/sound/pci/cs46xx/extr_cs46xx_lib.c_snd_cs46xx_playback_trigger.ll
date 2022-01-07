; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.snd_cs46xx_pcm* }
%struct.snd_cs46xx_pcm = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.snd_cs46xx = type { i32, i32 }

@CS46XX_FRAGS = common dso_local global i32 0, align 4
@BA1_PCTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SCBVolumeCtrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_cs46xx_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs46xx_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_cs46xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_cs46xx* %10, %struct.snd_cs46xx** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %59 [
    i32 130, label %12
    i32 131, label %12
    i32 129, label %43
    i32 128, label %43
  ]

12:                                               ; preds = %2, %2
  %13 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %14 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %13, i32 0, i32 1
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CS46XX_FRAGS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = call i32 @snd_cs46xx_playback_transfer(%struct.snd_pcm_substream* %24)
  br label %26

26:                                               ; preds = %23, %12
  %27 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %28 = load i32, i32* @BA1_PCTL, align 4
  %29 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 65535
  store i32 %31, i32* %7, align 4
  %32 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %33 = load i32, i32* @BA1_PCTL, align 4
  %34 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %35 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %32, i32 %33, i32 %38)
  %40 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %41 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock(i32* %41)
  br label %62

43:                                               ; preds = %2, %2
  %44 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %45 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %44, i32 0, i32 1
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %48 = load i32, i32* @BA1_PCTL, align 4
  %49 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 65535
  store i32 %51, i32* %8, align 4
  %52 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %53 = load i32, i32* @BA1_PCTL, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %52, i32 %53, i32 %54)
  %56 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %57 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock(i32* %57)
  br label %62

59:                                               ; preds = %2
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %43, %26
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_cs46xx_playback_transfer(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_cs46xx_peek(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @snd_cs46xx_poke(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
