; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_handle_percpu_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_handle_percpu_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_chip = type { i32 (i32*)*, i32 (i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_percpu_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %4 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %5 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %4)
  store %struct.irq_chip* %5, %struct.irq_chip** %3, align 8
  %6 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %7 = call i32 @__kstat_incr_irqs_this_cpu(%struct.irq_desc* %6)
  %8 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %9 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %8, i32 0, i32 1
  %10 = load i32 (i32*)*, i32 (i32*)** %9, align 8
  %11 = icmp ne i32 (i32*)* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %14 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %13, i32 0, i32 1
  %15 = load i32 (i32*)*, i32 (i32*)** %14, align 8
  %16 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %17 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %16, i32 0, i32 0
  %18 = call i32 %15(i32* %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %21 = call i32 @handle_irq_event_percpu(%struct.irq_desc* %20)
  %22 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %23 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %22, i32 0, i32 0
  %24 = load i32 (i32*)*, i32 (i32*)** %23, align 8
  %25 = icmp ne i32 (i32*)* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %28 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %27, i32 0, i32 0
  %29 = load i32 (i32*)*, i32 (i32*)** %28, align 8
  %30 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %31 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %30, i32 0, i32 0
  %32 = call i32 %29(i32* %31)
  br label %33

33:                                               ; preds = %26, %19
  ret void
}

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @__kstat_incr_irqs_this_cpu(%struct.irq_desc*) #1

declare dso_local i32 @handle_irq_event_percpu(%struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
