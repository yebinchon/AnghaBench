; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_playback_ds_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_playback_ds_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_ice1712 = type { i32**, i32 }

@INTMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ice1712_playback_ds_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_playback_ds_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.snd_ice1712* %6, %struct.snd_ice1712** %3, align 8
  %7 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %11 = load i32, i32* @INTMASK, align 4
  %12 = call i32 @ICEDS(%struct.snd_ice1712* %10, i32 %11)
  %13 = call i32 @inw(i32 %12)
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 2
  %18 = shl i32 3, %17
  %19 = or i32 %13, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %22 = load i32, i32* @INTMASK, align 4
  %23 = call i32 @ICEDS(%struct.snd_ice1712* %21, i32 %22)
  %24 = call i32 @outw(i32 %20, i32 %23)
  %25 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %26 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %25, i32 0, i32 1
  %27 = call i32 @spin_unlock_irq(i32* %26)
  %28 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %29 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %30, i64 %34
  store i32* null, i32** %35, align 8
  ret i32 0
}

declare dso_local %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @ICEDS(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
