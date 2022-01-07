; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_capture_spdif_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_capture_spdif_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.cmipci = type { i32 }

@CM_REG_FUNCTRL1 = common dso_local global i32 0, align 4
@CM_CAPTURE_SPDF = common dso_local global i32 0, align 4
@CM_REG_MISC_CTRL = common dso_local global i32 0, align 4
@CM_SPD32SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cmipci_capture_spdif_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_capture_spdif_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.cmipci*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.cmipci* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.cmipci* %5, %struct.cmipci** %3, align 8
  %6 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %7 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %10 = load i32, i32* @CM_REG_FUNCTRL1, align 4
  %11 = load i32, i32* @CM_CAPTURE_SPDF, align 4
  %12 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %9, i32 %10, i32 %11)
  %13 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %14 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %15 = load i32, i32* @CM_SPD32SEL, align 4
  %16 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %13, i32 %14, i32 %15)
  %17 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %18 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock_irq(i32* %18)
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %21 = call i32 @snd_cmipci_hw_free(%struct.snd_pcm_substream* %20)
  ret i32 %21
}

declare dso_local %struct.cmipci* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_cmipci_clear_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_cmipci_hw_free(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
