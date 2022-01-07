; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c_irq_gc_mask_set_bit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c_irq_gc_mask_set_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { i32 }
%struct.irq_chip_type = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_gc_mask_set_bit(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_chip_generic*, align 8
  %4 = alloca %struct.irq_chip_type*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.irq_chip_generic* %7, %struct.irq_chip_generic** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call %struct.irq_chip_type* @irq_data_get_chip_type(%struct.irq_data* %8)
  store %struct.irq_chip_type* %9, %struct.irq_chip_type** %4, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %14 = call i32 @irq_gc_lock(%struct.irq_chip_generic* %13)
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %17 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %15
  store i32 %20, i32* %18, align 4
  %21 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %22 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %23 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %27 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %21, i32 %25, i32 %29)
  %31 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %32 = call i32 @irq_gc_unlock(%struct.irq_chip_generic* %31)
  ret void
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.irq_chip_type* @irq_data_get_chip_type(%struct.irq_data*) #1

declare dso_local i32 @irq_gc_lock(%struct.irq_chip_generic*) #1

declare dso_local i32 @irq_reg_writel(%struct.irq_chip_generic*, i32, i32) #1

declare dso_local i32 @irq_gc_unlock(%struct.irq_chip_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
