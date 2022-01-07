; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_handle.c_handle_irq_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_handle.c_handle_irq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, i32 }

@IRQS_PENDING = common dso_local global i32 0, align 4
@IRQD_IRQ_INPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_irq_event(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %4 = load i32, i32* @IRQS_PENDING, align 4
  %5 = xor i32 %4, -1
  %6 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %7 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %10, i32 0, i32 0
  %12 = load i32, i32* @IRQD_IRQ_INPROGRESS, align 4
  %13 = call i32 @irqd_set(i32* %11, i32 %12)
  %14 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %15 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %14, i32 0, i32 1
  %16 = call i32 @raw_spin_unlock(i32* %15)
  %17 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %18 = call i32 @handle_irq_event_percpu(%struct.irq_desc* %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %20 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i32 0, i32 1
  %21 = call i32 @raw_spin_lock(i32* %20)
  %22 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %23 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %22, i32 0, i32 0
  %24 = load i32, i32* @IRQD_IRQ_INPROGRESS, align 4
  %25 = call i32 @irqd_clear(i32* %23, i32 %24)
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @irqd_set(i32*, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @handle_irq_event_percpu(%struct.irq_desc*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @irqd_clear(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
