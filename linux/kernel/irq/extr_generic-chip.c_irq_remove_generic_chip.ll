; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c_irq_remove_generic_chip.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c_irq_remove_generic_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip_generic = type { i32, i32 }

@gc_lock = common dso_local global i32 0, align 4
@no_irq_chip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_remove_generic_chip(%struct.irq_chip_generic* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.irq_chip_generic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_chip_generic* %0, %struct.irq_chip_generic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %11 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = call i32 @raw_spin_lock(i32* @gc_lock)
  %14 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %15 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %14, i32 0, i32 1
  %16 = call i32 @list_del(i32* %15)
  %17 = call i32 @raw_spin_unlock(i32* @gc_lock)
  br label %18

18:                                               ; preds = %37, %4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %37

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @irq_set_handler(i32 %27, i32* null)
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @irq_set_chip(i32 %29, i32* @no_irq_chip)
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @irq_set_chip_data(i32 %31, i32* null)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @irq_modify_status(i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %26, %25
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %18

42:                                               ; preds = %18
  ret void
}

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @irq_set_handler(i32, i32*) #1

declare dso_local i32 @irq_set_chip(i32, i32*) #1

declare dso_local i32 @irq_set_chip_data(i32, i32*) #1

declare dso_local i32 @irq_modify_status(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
