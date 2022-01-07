; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_disable_msi_reset_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_disable_msi_reset_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i64, i32 }
%struct.hdac_bus = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*)* @disable_msi_reset_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disable_msi_reset_irq(%struct.azx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.azx*, align 8
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %3, align 8
  %6 = load %struct.azx*, %struct.azx** %3, align 8
  %7 = call %struct.hdac_bus* @azx_bus(%struct.azx* %6)
  store %struct.hdac_bus* %7, %struct.hdac_bus** %4, align 8
  %8 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %9 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.azx*, %struct.azx** %3, align 8
  %12 = call i32 @free_irq(i32 %10, %struct.azx* %11)
  %13 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %14 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 4
  %15 = load %struct.azx*, %struct.azx** %3, align 8
  %16 = getelementptr inbounds %struct.azx, %struct.azx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pci_disable_msi(i32 %17)
  %19 = load %struct.azx*, %struct.azx** %3, align 8
  %20 = getelementptr inbounds %struct.azx, %struct.azx* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.azx*, %struct.azx** %3, align 8
  %22 = call i32 @azx_acquire_irq(%struct.azx* %21, i32 1)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %25
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.hdac_bus* @azx_bus(%struct.azx*) #1

declare dso_local i32 @free_irq(i32, %struct.azx*) #1

declare dso_local i32 @pci_disable_msi(i32) #1

declare dso_local i32 @azx_acquire_irq(%struct.azx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
