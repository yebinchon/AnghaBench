; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_activate.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_activate(%struct.irq_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca %struct.irq_data*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %3, align 8
  %5 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %6 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %5)
  store %struct.irq_data* %6, %struct.irq_data** %4, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %8 = call i32 @irqd_affinity_is_managed(%struct.irq_data* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %12 = call i32 @irq_domain_activate_irq(%struct.irq_data* %11, i32 0)
  store i32 %12, i32* %2, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local i32 @irqd_affinity_is_managed(%struct.irq_data*) #1

declare dso_local i32 @irq_domain_activate_irq(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
