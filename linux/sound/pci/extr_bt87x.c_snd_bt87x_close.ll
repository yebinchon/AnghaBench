; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_bt87x.c_snd_bt87x_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_bt87x.c_snd_bt87x_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_bt87x = type { i32, i32*, i32, i32 }

@CTL_A_PWRDN = common dso_local global i32 0, align 4
@REG_GPIO_DMA_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_bt87x_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bt87x_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_bt87x*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.snd_bt87x* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.snd_bt87x* %5, %struct.snd_bt87x** %3, align 8
  %6 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %7 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %6, i32 0, i32 2
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load i32, i32* @CTL_A_PWRDN, align 4
  %10 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %11 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %15 = load i32, i32* @REG_GPIO_DMA_CTL, align 4
  %16 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %17 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @snd_bt87x_writel(%struct.snd_bt87x* %14, i32 %15, i32 %18)
  %20 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %21 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %20, i32 0, i32 2
  %22 = call i32 @spin_unlock_irq(i32* %21)
  %23 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %24 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %26 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %25, i32 0, i32 0
  %27 = call i32 @clear_bit(i32 0, i32* %26)
  %28 = call i32 (...) @smp_mb__after_atomic()
  ret i32 0
}

declare dso_local %struct.snd_bt87x* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_bt87x_writel(%struct.snd_bt87x*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
