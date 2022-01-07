; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ICE_EEP2_SYSCONF = common dso_local global i64 0, align 8
@SYS_CFG = common dso_local global i32 0, align 4
@ICE_EEP2_ACLINK = common dso_local global i64 0, align 8
@AC97_CFG = common dso_local global i32 0, align 4
@ICE_EEP2_I2S = common dso_local global i64 0, align 8
@I2S_FEATURES = common dso_local global i32 0, align 4
@ICE_EEP2_SPDIF = common dso_local global i64 0, align 8
@SPDIF_CFG = common dso_local global i32 0, align 4
@POWERDOWN = common dso_local global i32 0, align 4
@VT1724_IRQ_MPU_RX = common dso_local global i32 0, align 4
@VT1724_IRQ_MPU_TX = common dso_local global i32 0, align 4
@IRQMASK = common dso_local global i32 0, align 4
@VT1724_MULTI_FIFO_ERR = common dso_local global i32 0, align 4
@DMA_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @snd_vt1724_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_chip_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca %struct.snd_ice1712*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %2, align 8
  %3 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %4 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @ICE_EEP2_SYSCONF, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %11 = load i32, i32* @SYS_CFG, align 4
  %12 = call i32 @ICEREG1724(%struct.snd_ice1712* %10, i32 %11)
  %13 = call i32 @outb(i32 %9, i32 %12)
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %15 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @ICE_EEP2_ACLINK, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %22 = load i32, i32* @AC97_CFG, align 4
  %23 = call i32 @ICEREG1724(%struct.snd_ice1712* %21, i32 %22)
  %24 = call i32 @outb(i32 %20, i32 %23)
  %25 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %26 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @ICE_EEP2_I2S, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %33 = load i32, i32* @I2S_FEATURES, align 4
  %34 = call i32 @ICEREG1724(%struct.snd_ice1712* %32, i32 %33)
  %35 = call i32 @outb(i32 %31, i32 %34)
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %37 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @ICE_EEP2_SPDIF, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %44 = load i32, i32* @SPDIF_CFG, align 4
  %45 = call i32 @ICEREG1724(%struct.snd_ice1712* %43, i32 %44)
  %46 = call i32 @outb(i32 %42, i32 %45)
  %47 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %48 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %52 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %55 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %59 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %62 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %63 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @snd_vt1724_set_gpio_mask(%struct.snd_ice1712* %61, i32 %65)
  %67 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %68 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %69 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @snd_vt1724_set_gpio_dir(%struct.snd_ice1712* %67, i32 %71)
  %73 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %74 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %75 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @snd_vt1724_set_gpio_data(%struct.snd_ice1712* %73, i32 %77)
  %79 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %80 = load i32, i32* @POWERDOWN, align 4
  %81 = call i32 @ICEREG1724(%struct.snd_ice1712* %79, i32 %80)
  %82 = call i32 @outb(i32 0, i32 %81)
  %83 = load i32, i32* @VT1724_IRQ_MPU_RX, align 4
  %84 = load i32, i32* @VT1724_IRQ_MPU_TX, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %87 = load i32, i32* @IRQMASK, align 4
  %88 = call i32 @ICEREG1724(%struct.snd_ice1712* %86, i32 %87)
  %89 = call i32 @outb(i32 %85, i32 %88)
  %90 = load i32, i32* @VT1724_MULTI_FIFO_ERR, align 4
  %91 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %92 = load i32, i32* @DMA_INT_MASK, align 4
  %93 = call i32 @ICEMT1724(%struct.snd_ice1712* %91, i32 %92)
  %94 = call i32 @outb(i32 %90, i32 %93)
  ret i32 0
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @ICEREG1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_vt1724_set_gpio_mask(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_vt1724_set_gpio_dir(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_vt1724_set_gpio_data(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @ICEMT1724(%struct.snd_ice1712*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
