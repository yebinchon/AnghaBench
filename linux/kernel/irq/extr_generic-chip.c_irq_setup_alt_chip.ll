; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c_irq_setup_alt_chip.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c_irq_setup_alt_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32* }
%struct.irq_chip_generic = type { i32, %struct.irq_chip_type* }
%struct.irq_chip_type = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_setup_alt_chip(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_chip_generic*, align 8
  %7 = alloca %struct.irq_chip_type*, align 8
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %10 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.irq_chip_generic* %10, %struct.irq_chip_generic** %6, align 8
  %11 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %12 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %11, i32 0, i32 1
  %13 = load %struct.irq_chip_type*, %struct.irq_chip_type** %12, align 8
  store %struct.irq_chip_type* %13, %struct.irq_chip_type** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %39, %2
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %17 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %22 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %29 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %28, i32 0, i32 2
  %30 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %31 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  %32 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %33 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %36 = call %struct.TYPE_2__* @irq_data_to_desc(%struct.irq_data* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %47

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %8, align 4
  %42 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %43 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %42, i32 1
  store %struct.irq_chip_type* %43, %struct.irq_chip_type** %7, align 8
  br label %14

44:                                               ; preds = %14
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %27
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.TYPE_2__* @irq_data_to_desc(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
