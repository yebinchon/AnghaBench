; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_playback_spdif_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_playback_spdif_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_ymfpci = type { i32, %struct.TYPE_4__*, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@YDSXGR_SPDIFOUTCTRL = common dso_local global i32 0, align 4
@YDSXGR_SPDIFOUTSTATUS = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ymfpci_playback_spdif_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_playback_spdif_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ymfpci*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.snd_ymfpci* %5, %struct.snd_ymfpci** %3, align 8
  %6 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %6, i32 0, i32 3
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %12 = call i32 @ymfpci_close_extension(%struct.snd_ymfpci* %11)
  %13 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %14 = load i32, i32* @YDSXGR_SPDIFOUTCTRL, align 4
  %15 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %16 = load i32, i32* @YDSXGR_SPDIFOUTCTRL, align 4
  %17 = call i32 @snd_ymfpci_readw(%struct.snd_ymfpci* %15, i32 %16)
  %18 = and i32 %17, -3
  %19 = call i32 @snd_ymfpci_writew(%struct.snd_ymfpci* %13, i32 %14, i32 %18)
  %20 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %21 = load i32, i32* @YDSXGR_SPDIFOUTSTATUS, align 4
  %22 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %23 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @snd_ymfpci_writew(%struct.snd_ymfpci* %20, i32 %21, i32 %24)
  %26 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %27 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %26, i32 0, i32 3
  %28 = call i32 @spin_unlock_irq(i32* %27)
  %29 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %30 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %31 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %29
  store i32 %38, i32* %36, align 4
  %39 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %40 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %43 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %46 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @snd_ctl_notify(i32 %41, i32 %44, i32* %48)
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %51 = call i32 @snd_ymfpci_playback_close_1(%struct.snd_pcm_substream* %50)
  ret i32 %51
}

declare dso_local %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ymfpci_close_extension(%struct.snd_ymfpci*) #1

declare dso_local i32 @snd_ymfpci_writew(%struct.snd_ymfpci*, i32, i32) #1

declare dso_local i32 @snd_ymfpci_readw(%struct.snd_ymfpci*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @snd_ymfpci_playback_close_1(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
