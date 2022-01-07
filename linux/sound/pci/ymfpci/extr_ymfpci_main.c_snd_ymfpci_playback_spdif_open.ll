; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_playback_spdif_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_playback_spdif_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_ymfpci_pcm* }
%struct.snd_ymfpci_pcm = type { i32, i32, i64 }
%struct.snd_ymfpci = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@YDSXGR_SPDIFOUTCTRL = common dso_local global i32 0, align 4
@YDSXGR_SPDIFOUTSTATUS = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ymfpci_playback_spdif_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_playback_spdif_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_ymfpci*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_ymfpci_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_ymfpci* %9, %struct.snd_ymfpci** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = call i32 @snd_ymfpci_playback_open_1(%struct.snd_pcm_substream* %13)
  store i32 %14, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %80

18:                                               ; preds = %1
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 0
  %21 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %20, align 8
  store %struct.snd_ymfpci_pcm* %21, %struct.snd_ymfpci_pcm** %6, align 8
  %22 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %23 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %25 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %27 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %28, i32 0, i32 4
  %30 = call i32 @spin_lock_irq(i32* %29)
  %31 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %32 = load i32, i32* @YDSXGR_SPDIFOUTCTRL, align 4
  %33 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %34 = load i32, i32* @YDSXGR_SPDIFOUTCTRL, align 4
  %35 = call i32 @snd_ymfpci_readw(%struct.snd_ymfpci* %33, i32 %34)
  %36 = or i32 %35, 2
  %37 = call i32 @snd_ymfpci_writew(%struct.snd_ymfpci* %31, i32 %32, i32 %36)
  %38 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %39 = call i32 @ymfpci_open_extension(%struct.snd_ymfpci* %38)
  %40 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %41 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %44 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %46 = load i32, i32* @YDSXGR_SPDIFOUTSTATUS, align 4
  %47 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %48 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @snd_ymfpci_writew(%struct.snd_ymfpci* %45, i32 %46, i32 %49)
  %51 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %52 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %56 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %55, i32 0, i32 4
  %57 = call i32 @spin_unlock_irq(i32* %56)
  %58 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %61 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %59
  store i32 %68, i32* %66, align 4
  %69 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %70 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %73 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %76 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @snd_ctl_notify(i32 %71, i32 %74, i32* %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %18, %16
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ymfpci_playback_open_1(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_ymfpci_writew(%struct.snd_ymfpci*, i32, i32) #1

declare dso_local i32 @snd_ymfpci_readw(%struct.snd_ymfpci*, i32) #1

declare dso_local i32 @ymfpci_open_extension(%struct.snd_ymfpci*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
