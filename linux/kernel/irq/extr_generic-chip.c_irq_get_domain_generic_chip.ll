; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c_irq_get_domain_generic_chip.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c_irq_get_domain_generic_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip_generic = type { i32 }
%struct.irq_domain = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.irq_chip_generic* @irq_get_domain_generic_chip(%struct.irq_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_chip_generic*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.irq_chip_generic* @__irq_get_domain_generic_chip(%struct.irq_domain* %6, i32 %7)
  store %struct.irq_chip_generic* %8, %struct.irq_chip_generic** %5, align 8
  %9 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %10 = call i32 @IS_ERR(%struct.irq_chip_generic* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi %struct.irq_chip_generic* [ %13, %12 ], [ null, %14 ]
  ret %struct.irq_chip_generic* %16
}

declare dso_local %struct.irq_chip_generic* @__irq_get_domain_generic_chip(%struct.irq_domain*, i32) #1

declare dso_local i32 @IS_ERR(%struct.irq_chip_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
