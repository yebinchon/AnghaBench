; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_ipi.c___ipi_send_single.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_ipi.c___ipi_send_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.irq_chip = type { i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ipi_send_single(%struct.irq_desc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_data*, align 8
  %7 = alloca %struct.irq_chip*, align 8
  %8 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %10 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %9)
  store %struct.irq_data* %10, %struct.irq_data** %6, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %12 = call %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* %11)
  store %struct.irq_chip* %12, %struct.irq_chip** %7, align 8
  %13 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %14 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %13, i32 0, i32 0
  %15 = load i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.irq_data*, i32)* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %19 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %18, i32 0, i32 1
  %20 = load i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)** %19, align 8
  %21 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @cpumask_of(i32 %22)
  %24 = call i32 %20(%struct.irq_data* %21, i32 %23)
  store i32 0, i32* %3, align 4
  br label %60

25:                                               ; preds = %2
  %26 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %27 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @irq_domain_is_ipi_per_cpu(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %34 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %32, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %31
  %40 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %41 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %42, %43
  %45 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %46 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 %44, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call %struct.irq_data* @irq_get_irq_data(i32 %51)
  store %struct.irq_data* %52, %struct.irq_data** %6, align 8
  br label %53

53:                                               ; preds = %39, %31, %25
  %54 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %55 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %54, i32 0, i32 0
  %56 = load i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)** %55, align 8
  %57 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 %56(%struct.irq_data* %57, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %53, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data*) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i64 @irq_domain_is_ipi_per_cpu(i32) #1

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
