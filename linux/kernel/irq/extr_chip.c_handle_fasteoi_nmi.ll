; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_handle_fasteoi_nmi.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_handle_fasteoi_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, %struct.irqaction* }
%struct.irqaction = type { i32, i32 (i32, i32)* }
%struct.irq_chip = type { i32 (i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_fasteoi_nmi(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  %4 = alloca %struct.irqaction*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %8 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %7)
  store %struct.irq_chip* %8, %struct.irq_chip** %3, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %9, i32 0, i32 1
  %11 = load %struct.irqaction*, %struct.irqaction** %10, align 8
  store %struct.irqaction* %11, %struct.irqaction** %4, align 8
  %12 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %13 = call i32 @irq_desc_get_irq(%struct.irq_desc* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %15 = call i32 @__kstat_incr_irqs_this_cpu(%struct.irq_desc* %14)
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %18 = call i32 @trace_irq_handler_entry(i32 %16, %struct.irqaction* %17)
  %19 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %20 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %19, i32 0, i32 1
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %24 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %21(i32 %22, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @trace_irq_handler_exit(i32 %27, %struct.irqaction* %28, i32 %29)
  %31 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %32 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %31, i32 0, i32 0
  %33 = load i32 (i32*)*, i32 (i32*)** %32, align 8
  %34 = icmp ne i32 (i32*)* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %1
  %36 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %37 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %36, i32 0, i32 0
  %38 = load i32 (i32*)*, i32 (i32*)** %37, align 8
  %39 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %40 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %39, i32 0, i32 0
  %41 = call i32 %38(i32* %40)
  br label %42

42:                                               ; preds = %35, %1
  ret void
}

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @irq_desc_get_irq(%struct.irq_desc*) #1

declare dso_local i32 @__kstat_incr_irqs_this_cpu(%struct.irq_desc*) #1

declare dso_local i32 @trace_irq_handler_entry(i32, %struct.irqaction*) #1

declare dso_local i32 @trace_irq_handler_exit(i32, %struct.irqaction*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
