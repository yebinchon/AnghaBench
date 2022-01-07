; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, i64, i64 }

@OXYGEN_DMA_STATUS = common dso_local global i32 0, align 4
@OXYGEN_INTERRUPT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @oxygen_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oxygen_shutdown(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %3 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %4 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %3, i32 0, i32 0
  %5 = call i32 @spin_lock_irq(i32* %4)
  %6 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %7 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %9 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %11 = load i32, i32* @OXYGEN_DMA_STATUS, align 4
  %12 = call i32 @oxygen_write16(%struct.oxygen* %10, i32 %11, i32 0)
  %13 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %14 = load i32, i32* @OXYGEN_INTERRUPT_MASK, align 4
  %15 = call i32 @oxygen_write16(%struct.oxygen* %13, i32 %14, i32 0)
  %16 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %17 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock_irq(i32* %17)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @oxygen_write16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
