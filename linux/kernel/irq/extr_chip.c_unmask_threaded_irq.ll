; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_unmask_threaded_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_unmask_threaded_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.irq_chip* }
%struct.irq_chip = type { i32, i32 (%struct.TYPE_2__*)* }

@IRQCHIP_EOI_THREADED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unmask_threaded_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %4 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %5 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  store %struct.irq_chip* %7, %struct.irq_chip** %3, align 8
  %8 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %9 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IRQCHIP_EOI_THREADED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %16 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %15, i32 0, i32 1
  %17 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %16, align 8
  %18 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %19 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %18, i32 0, i32 0
  %20 = call i32 %17(%struct.TYPE_2__* %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %23 = call i32 @unmask_irq(%struct.irq_desc* %22)
  ret void
}

declare dso_local i32 @unmask_irq(%struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
