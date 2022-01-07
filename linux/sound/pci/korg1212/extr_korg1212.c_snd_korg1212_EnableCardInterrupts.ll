; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_EnableCardInterrupts.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_EnableCardInterrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_korg1212 = type { i32 }

@PCI_INT_ENABLE_BIT = common dso_local global i32 0, align 4
@PCI_DOORBELL_INT_ENABLE_BIT = common dso_local global i32 0, align 4
@LOCAL_INT_ENABLE_BIT = common dso_local global i32 0, align 4
@LOCAL_DOORBELL_INT_ENABLE_BIT = common dso_local global i32 0, align 4
@LOCAL_DMA1_INT_ENABLE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_korg1212*)* @snd_korg1212_EnableCardInterrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_korg1212_EnableCardInterrupts(%struct.snd_korg1212* %0) #0 {
  %2 = alloca %struct.snd_korg1212*, align 8
  store %struct.snd_korg1212* %0, %struct.snd_korg1212** %2, align 8
  %3 = load i32, i32* @PCI_INT_ENABLE_BIT, align 4
  %4 = load i32, i32* @PCI_DOORBELL_INT_ENABLE_BIT, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @LOCAL_INT_ENABLE_BIT, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @LOCAL_DOORBELL_INT_ENABLE_BIT, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @LOCAL_DMA1_INT_ENABLE_BIT, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.snd_korg1212*, %struct.snd_korg1212** %2, align 8
  %13 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @writel(i32 %11, i32 %14)
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
