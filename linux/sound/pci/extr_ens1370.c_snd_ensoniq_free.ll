; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ensoniq = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CONTROL = common dso_local global i32 0, align 4
@SERIAL = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@ES_1370_SERR_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ensoniq*)* @snd_ensoniq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ensoniq_free(%struct.ensoniq* %0) #0 {
  %2 = alloca %struct.ensoniq*, align 8
  store %struct.ensoniq* %0, %struct.ensoniq** %2, align 8
  %3 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %4 = call i32 @snd_ensoniq_free_gameport(%struct.ensoniq* %3)
  %5 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %6 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %34

10:                                               ; preds = %1
  %11 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %12 = load i32, i32* @CONTROL, align 4
  %13 = call i32 @ES_REG(%struct.ensoniq* %11, i32 %12)
  %14 = call i32 @outl(i32 0, i32 %13)
  %15 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %16 = load i32, i32* @SERIAL, align 4
  %17 = call i32 @ES_REG(%struct.ensoniq* %15, i32 %16)
  %18 = call i32 @outl(i32 0, i32 %17)
  %19 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %20 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %10
  %24 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %25 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @synchronize_irq(i64 %26)
  br label %28

28:                                               ; preds = %23, %10
  %29 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %30 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PCI_D3hot, align 4
  %33 = call i32 @pci_set_power_state(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %9
  %35 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %36 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %41 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %44 = call i32 @free_irq(i64 %42, %struct.ensoniq* %43)
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %47 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pci_release_regions(i32 %48)
  %50 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %51 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pci_disable_device(i32 %52)
  %54 = load %struct.ensoniq*, %struct.ensoniq** %2, align 8
  %55 = call i32 @kfree(%struct.ensoniq* %54)
  ret i32 0
}

declare dso_local i32 @snd_ensoniq_free_gameport(%struct.ensoniq*) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @ES_REG(%struct.ensoniq*, i32) #1

declare dso_local i32 @synchronize_irq(i64) #1

declare dso_local i32 @pci_set_power_state(i32, i32) #1

declare dso_local i32 @free_irq(i64, %struct.ensoniq*) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.ensoniq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
