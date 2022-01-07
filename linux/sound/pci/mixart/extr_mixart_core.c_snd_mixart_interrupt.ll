; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_core.c_snd_mixart_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_core.c_snd_mixart_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixart_mgr = type { i32 }

@MIXART_PCI_OMISR_OFFSET = common dso_local global i32 0, align 4
@MIXART_OIDI = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@MIXART_HOST_ALL_INTERRUPT_MASKED = common dso_local global i32 0, align 4
@MIXART_PCI_OMIMR_OFFSET = common dso_local global i32 0, align 4
@MIXART_PCI_ODBR_OFFSET = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_mixart_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mixart_mgr*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.mixart_mgr*
  store %struct.mixart_mgr* %9, %struct.mixart_mgr** %6, align 8
  %10 = load %struct.mixart_mgr*, %struct.mixart_mgr** %6, align 8
  %11 = load i32, i32* @MIXART_PCI_OMISR_OFFSET, align 4
  %12 = call i32 @MIXART_REG(%struct.mixart_mgr* %10, i32 %11)
  %13 = call i32 @readl_le(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MIXART_OIDI, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %2
  %21 = load i32, i32* @MIXART_HOST_ALL_INTERRUPT_MASKED, align 4
  %22 = load %struct.mixart_mgr*, %struct.mixart_mgr** %6, align 8
  %23 = load i32, i32* @MIXART_PCI_OMIMR_OFFSET, align 4
  %24 = call i32 @MIXART_REG(%struct.mixart_mgr* %22, i32 %23)
  %25 = call i32 @writel_le(i32 %21, i32 %24)
  %26 = load %struct.mixart_mgr*, %struct.mixart_mgr** %6, align 8
  %27 = load i32, i32* @MIXART_PCI_ODBR_OFFSET, align 4
  %28 = call i32 @MIXART_REG(%struct.mixart_mgr* %26, i32 %27)
  %29 = call i32 @readl(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.mixart_mgr*, %struct.mixart_mgr** %6, align 8
  %32 = load i32, i32* @MIXART_PCI_ODBR_OFFSET, align 4
  %33 = call i32 @MIXART_REG(%struct.mixart_mgr* %31, i32 %32)
  %34 = call i32 @writel(i32 %30, i32 %33)
  %35 = load i32, i32* @MIXART_OIDI, align 4
  %36 = load %struct.mixart_mgr*, %struct.mixart_mgr** %6, align 8
  %37 = load i32, i32* @MIXART_PCI_OMISR_OFFSET, align 4
  %38 = call i32 @MIXART_REG(%struct.mixart_mgr* %36, i32 %37)
  %39 = call i32 @writel_le(i32 %35, i32 %38)
  %40 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %20, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @readl_le(i32) #1

declare dso_local i32 @MIXART_REG(%struct.mixart_mgr*, i32) #1

declare dso_local i32 @writel_le(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
