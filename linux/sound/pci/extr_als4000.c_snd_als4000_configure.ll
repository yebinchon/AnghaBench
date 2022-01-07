; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_als4000.c_snd_als4000_configure.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_als4000.c_snd_als4000_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i32, i32 }

@ALS4K_CR0_SB_CONFIG = common dso_local global i32 0, align 4
@ALS4K_CR0_MX80_81_REG_WRITE_ENABLE = common dso_local global i32 0, align 4
@SB_DSP4_DMASETUP = common dso_local global i32 0, align 4
@SB_DMASETUP_DMA0 = common dso_local global i32 0, align 4
@ALS4K_GCR8C_MISC_CTRL = common dso_local global i32 0, align 4
@ALS4K_GCR8C_IRQ_MASK_CTRL_ENABLE = common dso_local global i32 0, align 4
@ALS4K_GCR91_DMA0_ADDR = common dso_local global i32 0, align 4
@ALS4K_GCR96_DMA3_MODE_COUNT = common dso_local global i32 0, align 4
@ALS4K_GCR99_DMA_EMULATION_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sb*)* @snd_als4000_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_als4000_configure(%struct.snd_sb* %0) #0 {
  %2 = alloca %struct.snd_sb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_sb* %0, %struct.snd_sb** %2, align 8
  %5 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %6 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %5, i32 0, i32 1
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %9 = load i32, i32* @ALS4K_CR0_SB_CONFIG, align 4
  %10 = call i32 @snd_als4_cr_read(%struct.snd_sb* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %12 = load i32, i32* @ALS4K_CR0_SB_CONFIG, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ALS4K_CR0_MX80_81_REG_WRITE_ENABLE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @snd_als4_cr_write(%struct.snd_sb* %11, i32 %12, i32 %15)
  %17 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %18 = load i32, i32* @SB_DSP4_DMASETUP, align 4
  %19 = load i32, i32* @SB_DMASETUP_DMA0, align 4
  %20 = call i32 @snd_sbmixer_write(%struct.snd_sb* %17, i32 %18, i32 %19)
  %21 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %22 = load i32, i32* @ALS4K_CR0_SB_CONFIG, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @ALS4K_CR0_MX80_81_REG_WRITE_ENABLE, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call i32 @snd_als4_cr_write(%struct.snd_sb* %21, i32 %22, i32 %26)
  %28 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %29 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock_irq(i32* %29)
  %31 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %32 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %31, i32 0, i32 0
  %33 = call i32 @spin_lock_irq(i32* %32)
  %34 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %35 = load i32, i32* @ALS4K_GCR8C_MISC_CTRL, align 4
  %36 = load i32, i32* @ALS4K_GCR8C_IRQ_MASK_CTRL_ENABLE, align 4
  %37 = call i32 @snd_als4k_gcr_write(%struct.snd_sb* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @ALS4K_GCR91_DMA0_ADDR, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %47, %1
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @ALS4K_GCR96_DMA3_MODE_COUNT, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @snd_als4k_gcr_write(%struct.snd_sb* %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %39

50:                                               ; preds = %39
  %51 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %52 = load i32, i32* @ALS4K_GCR99_DMA_EMULATION_CTRL, align 4
  %53 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %54 = load i32, i32* @ALS4K_GCR99_DMA_EMULATION_CTRL, align 4
  %55 = call i32 @snd_als4k_gcr_read(%struct.snd_sb* %53, i32 %54)
  %56 = and i32 %55, -8
  %57 = or i32 %56, 4
  %58 = call i32 @snd_als4k_gcr_write(%struct.snd_sb* %51, i32 %52, i32 %57)
  %59 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %60 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock_irq(i32* %60)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_als4_cr_read(%struct.snd_sb*, i32) #1

declare dso_local i32 @snd_als4_cr_write(%struct.snd_sb*, i32, i32) #1

declare dso_local i32 @snd_sbmixer_write(%struct.snd_sb*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_als4k_gcr_write(%struct.snd_sb*, i32, i32) #1

declare dso_local i32 @snd_als4k_gcr_read(%struct.snd_sb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
