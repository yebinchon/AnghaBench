; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ad1889.c_snd_ad1889_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ad1889.c_snd_ad1889_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1889 = type { i64, i32, i32, i32 }

@AD_CHAN_WAV = common dso_local global i32 0, align 4
@AD_CHAN_ADC = common dso_local global i32 0, align 4
@AD_DMA_DISR = common dso_local global i32 0, align 4
@AD_DMA_DISR_PTAI = common dso_local global i32 0, align 4
@AD_DMA_DISR_PMAI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ad1889*)* @snd_ad1889_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ad1889_free(%struct.snd_ad1889* %0) #0 {
  %2 = alloca %struct.snd_ad1889*, align 8
  store %struct.snd_ad1889* %0, %struct.snd_ad1889** %2, align 8
  %3 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %4 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %42

8:                                                ; preds = %1
  %9 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %10 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %9, i32 0, i32 3
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %13 = call i32 @ad1889_mute(%struct.snd_ad1889* %12)
  %14 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %15 = load i32, i32* @AD_CHAN_WAV, align 4
  %16 = load i32, i32* @AD_CHAN_ADC, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @ad1889_channel_reset(%struct.snd_ad1889* %14, i32 %17)
  %19 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %20 = load i32, i32* @AD_DMA_DISR, align 4
  %21 = load i32, i32* @AD_DMA_DISR_PTAI, align 4
  %22 = load i32, i32* @AD_DMA_DISR_PMAI, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @ad1889_writel(%struct.snd_ad1889* %19, i32 %20, i32 %23)
  %25 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %26 = load i32, i32* @AD_DMA_DISR, align 4
  %27 = call i32 @ad1889_readl(%struct.snd_ad1889* %25, i32 %26)
  %28 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %29 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %28, i32 0, i32 3
  %30 = call i32 @spin_unlock_irq(i32* %29)
  %31 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %32 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %8
  %36 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %37 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %40 = call i32 @free_irq(i64 %38, %struct.snd_ad1889* %39)
  br label %41

41:                                               ; preds = %35, %8
  br label %42

42:                                               ; preds = %41, %7
  %43 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %44 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @iounmap(i32 %45)
  %47 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %48 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pci_release_regions(i32 %49)
  %51 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %52 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pci_disable_device(i32 %53)
  %55 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %56 = call i32 @kfree(%struct.snd_ad1889* %55)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ad1889_mute(%struct.snd_ad1889*) #1

declare dso_local i32 @ad1889_channel_reset(%struct.snd_ad1889*, i32) #1

declare dso_local i32 @ad1889_writel(%struct.snd_ad1889*, i32, i32) #1

declare dso_local i32 @ad1889_readl(%struct.snd_ad1889*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @free_irq(i64, %struct.snd_ad1889*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.snd_ad1889*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
